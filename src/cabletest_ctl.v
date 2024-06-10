//====================================================================================
//                        ------->  Revision History  <------
//====================================================================================
//
//   Date     Who   Ver  Changes
//====================================================================================
// 01-Dec-23  DWW     1  Initial creation
//
// 15-Apr-24  DWW     2  Added support for BYTES_PER_USEC
//
// 08-Jun-24  DWW     3  Added port resetn_out
//                       Added port RSFEC_ENABLE
//                       Added port CMAC_TXPRE
//                       Added REG_RESET, REG_TXPRE, and REG_RSFEC
//====================================================================================

/*

*/


module cabletest_ctl # (parameter DEFAULT_TXPRE = 5'h00, CLK_HZ = 250000000)
(

    (* X_INTERFACE_INFO      = "xilinx.com:signal:clock:1.0 clk CLK"    *)
    (* X_INTERFACE_PARAMETER = "ASSOCIATED_RESET resetn:resetn_out" *)
    input clk,
    
    input resetn,

    //================== This is an AXI4-Lite slave interface ==================
        
    // "Specify write address"              -- Master --    -- Slave --
    input[31:0]                             S_AXI_AWADDR,   
    input                                   S_AXI_AWVALID,  
    output                                                  S_AXI_AWREADY,

    // "Write Data"                         -- Master --    -- Slave --
    input[31:0]                             S_AXI_WDATA,      
    input                                   S_AXI_WVALID,
    input[3:0]                              S_AXI_WSTRB,
    output                                                  S_AXI_WREADY,

    // "Send Write Response"                -- Master --    -- Slave --
    output[1:0]                                             S_AXI_BRESP,
    output                                                  S_AXI_BVALID,
    input                                   S_AXI_BREADY,

    // "Specify read address"               -- Master --    -- Slave --
    input[31:0]                             S_AXI_ARADDR,     
    input                                   S_AXI_ARVALID,    
    output                                                  S_AXI_ARREADY,

    // "Read data back to master"           -- Master --    -- Slave --
    output[31:0]                                            S_AXI_RDATA,
    output                                                  S_AXI_RVALID,
    output[1:0]                                             S_AXI_RRESP,
    input                                   S_AXI_RREADY,
    //==========================================================================
 
    // Indicates whether eth0 and eth1 have PCS alignment
    input eth0_up, eth1_up,

    // Packet generation control
    output[2:0] pg_control_1, pg_control_2,
    
    // Packet generation status
    input [2:0] pg_status_1, pg_status_2,

    // Packet receiver status
    input [1:0] pr_status_1, pr_status_2,

    // The number of cycles in a data-packet
    output reg[7:0] CYCLES_PER_PACKET, 
    
    // Number of packets that should be transmitted
    output reg[63:0] PACKET_COUNT,
    
    // Rate of the output data
    output reg[31:0] BYTES_PER_USEC,

    // This feeds the CMACs
    output reg       RSFEC_ENABLE,

    // Transmit pre-emphasis level for the CMACs
    output reg[4:0]  CMAC_TXPRE,

    // This drives "resetn" for most of the rest of the system
    (* X_INTERFACE_INFO      = "xilinx.com:signal:reset:1.0 resetn_out RST" *)
    (* X_INTERFACE_PARAMETER = "POLARITY ACTIVE_LOW"                            *)
    output reg resetn_out
    //==========================================================================    
);  

    // Any time the register map of this module changes, this number should
    // be bumped
    localparam MODULE_VERSION = 1;

    // The indicies of the AXI registers
    localparam REG_MODULE_REV        =  0;
    localparam REG_STATUS            =  1;
    localparam REG_CYCLES_PER_PACKET =  2;
    localparam REG_PACKET_COUNTH     =  3;
    localparam REG_PACKET_COUNTL     =  4;

    localparam REG_PACKETS_SENT1H    =  5;
    localparam REG_PACKETS_SENT1L    =  6;
    localparam REG_PACKETS_SENT2H    =  7;
    localparam REG_PACKETS_SENT2L    =  8;
    
    localparam REG_PACKETS_RCVD1H    =  9;
    localparam REG_PACKETS_RCVD1L    = 10;
    localparam REG_PACKETS_RCVD2H    = 11;
    localparam REG_PACKETS_RCVD2L    = 12;

    localparam REG_ERRORS1           = 13;
    localparam REG_ERRORS2           = 14;

    localparam REG_CONTROL           = 15;
    localparam REG_ETH_STATUS        = 16;
    localparam REG_BYTES_PER_USEC    = 17;
    localparam REG_RESET             = 18;
    localparam REG_RSFEC             = 19;
    localparam REG_TXPRE             = 20;
   
    //==========================================================================

    localparam DEFAULT_BYTES_PER_USEC = 11000;

    //==========================================================================
    // We'll communicate with the AXI4-Lite Slave core with these signals.
    //==========================================================================
    // AXI Slave Handler Interface for write requests
    wire[31:0]  ashi_waddr;     // Input:  Write-address
    wire[31:0]  ashi_windx;     // Input:  Write-index
    wire[31:0]  ashi_wdata;     // Input:  Write-data
    wire        ashi_write;     // Input:  1 = Handle a write request
    reg[1:0]    ashi_wresp;     // Output: Write-response (OKAY, DECERR, SLVERR)
    wire        ashi_widle;     // Output: 1 = Write state machine is idle

    // AXI Slave Handler Interface for read requests
    wire[31:0]  ashi_raddr;     // Input:  Read-address
    wire[31:0]  ashi_rindx;     // Input:  Read-index
    wire        ashi_read;      // Input:  1 = Handle a read request
    reg[31:0]   ashi_rdata;     // Output: Read data
    reg[1:0]    ashi_rresp;     // Output: Read-response (OKAY, DECERR, SLVERR);
    wire        ashi_ridle;     // Output: 1 = Read state machine is idle
    //==========================================================================

    // The state of the state-machines that handle AXI4-Lite read and AXI4-Lite write
    reg[3:0] axi4_write_state, axi4_read_state;

    // The AXI4 slave state machines are idle when in state 0 and their "start" signals are low
    assign ashi_widle = (ashi_write == 0) && (axi4_write_state == 0);
    assign ashi_ridle = (ashi_read  == 0) && (axi4_read_state  == 0);
   
    // These are the valid values for ashi_rresp and ashi_wresp
    localparam OKAY   = 0;
    localparam SLVERR = 2;
    localparam DECERR = 3;

    // An AXI slave is gauranteed a minimum of 128 bytes of address space
    // (128 bytes is 32 32-bit registers)
    localparam ADDR_MASK = 7'h7F;

    // The bit definitions of pg_control_1 and pg_control_2
    localparam CTL_START  = 0;
    localparam CTL_HALT   = 1;
    localparam CTL_INJECT = 2;

    // Bit definitions of pg_status_1 and pg_status_2
    localparam STA_BUSY   = 0;
    localparam STA_SENT   = 1;
    localparam STA_HALTED = 2;

    // Bit definitions for pr_status_1 and pr_status_2
    localparam STA_RCVD   = 0;
    localparam STA_ERROR  = 1;

    // Various control signals for packet_gen
    reg start, halt, inject1, inject2;

    // We pack multiple control signals into the "packet_ctl_n" ports    
    assign pg_control_1 = {inject1, halt, start};
    assign pg_control_2 = {inject2, halt, start};

    // Coalesce the two "busy" signals
    wire[1:0] busy = {pg_status_2[STA_BUSY], pg_status_1[STA_BUSY]};

    // Coalesce the two "halted" signals
    wire[1:0] halted = {pg_status_2[STA_HALTED], pg_status_1[STA_HALTED]};

    // Number of packets transmitted
    reg[63:0] packets_out1, packets_out2;

    // Number of packets received
    reg[63:0] packets_in1, packets_in2;

    // Number of data-cycles with mismatch errors detected
    reg[31:0] errors1, errors2;

    // This is a 32-bit status register that reflects the state of Ethernet
    wire[31:0] eth_status = {15'b0, eth1_up, 15'b0, eth0_up};

    // When this strobes high, a reset sequence begins on resetn_out
    reg perform_reset;

    //==========================================================================
    // This state machine handles AXI4-Lite write requests
    //
    // Drives:
    //==========================================================================
    always @(posedge clk) begin
    
        // These will only strobe high for one cycle
        start         <= 0;
        halt          <= 0;
        inject1       <= 0;
        inject2       <= 0;
        perform_reset <= 0;

        // If we're in reset, initialize important registers
        if (resetn == 0) begin
            axi4_write_state  <= 0;
            PACKET_COUNT      <= 0;
            CYCLES_PER_PACKET <= 16;
            BYTES_PER_USEC    <= DEFAULT_BYTES_PER_USEC;
            RSFEC_ENABLE      <= 1;
            CMAC_TXPRE        <= DEFAULT_TXPRE;

        // If we're not in reset, and a write-request has occured...        
        end else case (axi4_write_state)
        
        0:  if (ashi_write) begin
       
                // Assume for the moment that the result will be OKAY
                ashi_wresp <= OKAY;              
            
                // Action depends upon the register index
                case (ashi_windx)

                    REG_CYCLES_PER_PACKET:
                        if (busy == 0) begin
                            CYCLES_PER_PACKET <= ashi_wdata;
                        end

                    REG_PACKET_COUNTH:
                        if (busy == 0) begin
                            PACKET_COUNT[63:32] <= ashi_wdata;
                        end

                    REG_PACKET_COUNTL:
                        if (busy == 0 && {PACKET_COUNT[63:32], ashi_wdata} != 0) begin
                            PACKET_COUNT[31:0] <= ashi_wdata;
                            start              <= 1;
                        end

                    REG_CONTROL:
                        begin
                            inject1 <= ashi_wdata[0];
                            inject2 <= ashi_wdata[1];
                            halt    <= ashi_wdata[2];
                        end
                        
                    REG_BYTES_PER_USEC:
                        BYTES_PER_USEC <= ashi_wdata;

                    REG_RESET:
                        perform_reset  <= 1;

                    REG_RSFEC:
                        RSFEC_ENABLE <= ashi_wdata;

                    REG_TXPRE:
                        CMAC_TXPRE <= ashi_wdata;

                    // Writes to any other register are a decode-error
                    default: ashi_wresp <= DECERR;
                endcase
            end

        endcase
    end
    //==========================================================================





    //==========================================================================
    // World's simplest state machine for handling AXI4-Lite read requests
    //==========================================================================
    always @(posedge clk) begin

        // If we're in reset, initialize important registers
        if (resetn == 0) begin
            axi4_read_state <= 0;
        
        // If we're not in reset, and a read-request has occured...        
        end else if (ashi_read) begin
       
            // Assume for the moment that the result will be OKAY
            ashi_rresp <= OKAY;              
            
            // Convert the byte address into a register index
            case (ashi_rindx)
 
                // Allow a read from any valid register                
                REG_MODULE_REV:         ashi_rdata <= MODULE_VERSION;
                REG_STATUS:             ashi_rdata <= {halted, busy};
                REG_CYCLES_PER_PACKET:  ashi_rdata <= CYCLES_PER_PACKET;
                REG_PACKET_COUNTH:      ashi_rdata <= PACKET_COUNT[63:32];
                REG_PACKET_COUNTL:      ashi_rdata <= PACKET_COUNT[31:00];
                REG_PACKETS_SENT1H:     ashi_rdata <= packets_out1[63:32];
                REG_PACKETS_SENT1L:     ashi_rdata <= packets_out1[31:00];
                REG_PACKETS_SENT2H:     ashi_rdata <= packets_out2[63:32];
                REG_PACKETS_SENT2L:     ashi_rdata <= packets_out2[31:00];
                REG_PACKETS_RCVD1H:     ashi_rdata <= packets_in1 [63:32];
                REG_PACKETS_RCVD1L:     ashi_rdata <= packets_in1 [31:00];
                REG_PACKETS_RCVD2H:     ashi_rdata <= packets_in2 [63:32];
                REG_PACKETS_RCVD2L:     ashi_rdata <= packets_in2 [31:00];
                REG_ERRORS1:            ashi_rdata <= errors1;
                REG_ERRORS2:            ashi_rdata <= errors2;
                REG_ETH_STATUS:         ashi_rdata <= eth_status;
                REG_BYTES_PER_USEC:     ashi_rdata <= BYTES_PER_USEC;
                REG_RESET:              ashi_rdata <= (resetn_out == 0);
                REG_RSFEC:              ashi_rdata <= RSFEC_ENABLE;
                REG_TXPRE:              ashi_rdata <= CMAC_TXPRE;
                
                // Reads of any other register are a decode-error
                default: ashi_rresp <= DECERR;
            endcase
        end
    end
    //==========================================================================


    //==========================================================================
    // This state machine tracks the number of packets sent and received
    //==========================================================================
    always @(posedge clk) begin
        if (start || resetn == 0) begin
            packets_in1  <= 0;
            packets_in2  <= 0;
            packets_out1 <= 0;
            packets_out2 <= 0;
            errors1      <= 0;
            errors2      <= 0;
        end else begin
            if (pg_status_1[STA_SENT ]) packets_out1 <= packets_out1 + 1;
            if (pg_status_2[STA_SENT ]) packets_out2 <= packets_out2 + 1;
            if (pr_status_1[STA_RCVD ]) packets_in1  <= packets_in1  + 1;
            if (pr_status_2[STA_RCVD ]) packets_in2  <= packets_in2  + 1;
            if (pr_status_1[STA_ERROR]) errors1      <= errors1      + 1;
            if (pr_status_2[STA_ERROR]) errors2      <= errors2      + 1;
        end
    end
    //==========================================================================



    //==========================================================================
    // This state machine manages "resetn_out".   Whenever "perform_reset" is
    // strobed high, the "resetn_out" signal will be asserted for "RESET_USECS" 
    // microseconds
    //==========================================================================
    reg[31:0] reset_timer;
    reg[ 1:0] rsm_state;
    localparam RESETN_OUT_ACTIVE   = 0;
    localparam RESETN_OUT_INACTIVE = 1;
    localparam RESET_USECS         = 100;
    //--------------------------------------------------------------------------
    always @(posedge clk) begin
        
        // This timer continuously counts down
        if (reset_timer) reset_timer <= reset_timer - 1;
        
        // Are we being held in reset?
        if (resetn == 0) begin
            rsm_state  <= 0;
            resetn_out <= RESETN_OUT_ACTIVE;
        end 

        // We're not in reset, run the state machine
        else case(rsm_state)

            0:  begin
                    resetn_out  <= RESETN_OUT_ACTIVE;
                    reset_timer <= (CLK_HZ / 1000000) * RESET_USECS;
                    rsm_state   <= 1;
                end

            1:  if (reset_timer == 0) begin
                    resetn_out <= RESETN_OUT_INACTIVE;
                    rsm_state  <= 2;
                end

            2:  if (perform_reset) begin
                    resetn_out  <= RESETN_OUT_ACTIVE;
                    reset_timer <= (CLK_HZ / 1000000) * RESET_USECS;
                    rsm_state   <= 1;
                end 

        endcase

    end
    //==========================================================================





    //==========================================================================
    // This connects us to an AXI4-Lite slave core
    //==========================================================================
    axi4_lite_slave axi_slave
    (
        .clk            (clk),
        .resetn         (resetn),
        
        // AXI AW channel
        .AXI_AWADDR     (S_AXI_AWADDR),
        .AXI_AWVALID    (S_AXI_AWVALID),   
        .AXI_AWREADY    (S_AXI_AWREADY),
        
        // AXI W channel
        .AXI_WDATA      (S_AXI_WDATA),
        .AXI_WVALID     (S_AXI_WVALID),
        .AXI_WSTRB      (S_AXI_WSTRB),
        .AXI_WREADY     (S_AXI_WREADY),

        // AXI B channel
        .AXI_BRESP      (S_AXI_BRESP),
        .AXI_BVALID     (S_AXI_BVALID),
        .AXI_BREADY     (S_AXI_BREADY),

        // AXI AR channel
        .AXI_ARADDR     (S_AXI_ARADDR), 
        .AXI_ARVALID    (S_AXI_ARVALID),
        .AXI_ARREADY    (S_AXI_ARREADY),

        // AXI R channel
        .AXI_RDATA      (S_AXI_RDATA),
        .AXI_RVALID     (S_AXI_RVALID),
        .AXI_RRESP      (S_AXI_RRESP),
        .AXI_RREADY     (S_AXI_RREADY),

        // ASHI write-request registers
        .ASHI_WADDR     (ashi_waddr),
        .ASHI_WINDX     (ashi_windx),
        .ASHI_WDATA     (ashi_wdata),
        .ASHI_WRITE     (ashi_write),
        .ASHI_WRESP     (ashi_wresp),
        .ASHI_WIDLE     (ashi_widle),

        // ASHI read registers
        .ASHI_RADDR     (ashi_raddr),
        .ASHI_RINDX     (ashi_rindx),
        .ASHI_RDATA     (ashi_rdata),
        .ASHI_READ      (ashi_read ),
        .ASHI_RRESP     (ashi_rresp),
        .ASHI_RIDLE     (ashi_ridle)
    );
    //==========================================================================


endmodule

