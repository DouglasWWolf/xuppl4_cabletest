//===================================================================================================
//                            ------->  Revision History  <------
//===================================================================================================
//
//   Date     Who   Ver  Changes
//===================================================================================================
// 29-Feb-23  DWW     1  Initial creation
//
// 16-Apr-24  DWW     2  Added gtwiz_reset_rx control
//===================================================================================================

module cmac_control # (parameter RSFEC = 1, FREQ_HZ = 322265625)
(
    input clk,

    (* X_INTERFACE_INFO = "xilinx.com:*:rs_fec_ports:2.0 rs_fec ctl_rx_rsfec_enable" *)
    output ctl_rx_rsfec_enable,
    
    (* X_INTERFACE_INFO = "xilinx.com:*:rs_fec_ports:2.0 rs_fec ctl_rx_rsfec_enable_correction" *)
    output ctl_rx_rsfec_enable_correction,

    (* X_INTERFACE_INFO = "xilinx.com:*:rs_fec_ports:2.0 rs_fec ctl_rx_rsfec_enable_indication" *)
    output ctl_rx_rsfec_enable_indication,

    (* X_INTERFACE_INFO = "xilinx.com:*:rs_fec_ports:2.0 rs_fec ctl_tx_rsfec_enable" *)
    output ctl_tx_rsfec_enable,

    (* X_INTERFACE_INFO = "xilinx.com:*:ctrl_ports:2.0 ctl_tx ctl_enable" *)
    output ctl_tx_enable, 

    (* X_INTERFACE_INFO = "xilinx.com:*:ctrl_ports:2.0 ctl_tx ctl_tx_send_rfi" *)
    output ctl_tx_send_rfi,

    (* X_INTERFACE_INFO = "xilinx.com:*:ctrl_ports:2.0 ctl_rx ctl_enable" *)
    output ctl_rx_enable,

    // This comes from the stat_rx interface of the CMAC
    input      stat_rx_aligned,

    // This is asserted to drive the reset input of the RX side of the transcievers
    output     gtwiz_reset_rx
);


//=============================================================================
// The tx_enable and "send remote fault indicator" depend on whether or not
// PCS alignment has been acheived
//=============================================================================
assign ctl_rx_enable   = 1;
assign ctl_tx_enable   = stat_rx_aligned;
assign ctl_tx_send_rfi = ~stat_rx_aligned;
//=============================================================================


//=============================================================================
// Enable or disable forward error correction
//=============================================================================
assign ctl_rx_rsfec_enable            = RSFEC;
assign ctl_rx_rsfec_enable_correction = RSFEC;
assign ctl_rx_rsfec_enable_indication = RSFEC;
assign ctl_tx_rsfec_enable            = RSFEC;
//=============================================================================

localparam ALIGNMENT_TIMEOUT = 3 * FREQ_HZ;
localparam RESET_TIMEOUT     = 50;

// Synchronize "stat_rx_aligned" into "sync_rx_aligned"
wire sync_rx_aligned;
xpm_cdc_single #
(
    .DEST_SYNC_FF  (4),   
    .INIT_SYNC_FF  (0),   
    .SIM_ASSERT_CHK(0), 
    .SRC_INPUT_REG (0)   
)
cdc0
(
    .src_clk (               ),  
    .src_in  (stat_rx_aligned),
    .dest_clk(clk            ), 
    .dest_out(sync_rx_aligned) 
);

// Countdown timers
reg[31:0] alignment_timer, reset_timer;

// The transceivers are in reset when the timer is non-zero
assign gtwiz_reset_rx = (reset_timer != 0);


//=============================================================================
// This state machine waits for alignment to be acheived.  If a timeout
// occurs before that happens, the receive side of the transciever datapath
// gets reset, then we go back to waiting for alignment
//=============================================================================
reg[1:0] fsm_state = 0;
always @(posedge clk) begin

    // Manage the countdown timers
    if (alignment_timer) alignment_timer <= alignment_timer - 1;
    if (reset_timer    ) reset_timer     <= reset_timer - 1;

    case (fsm_state)

        0:  begin
                alignment_timer <= ALIGNMENT_TIMEOUT;
                reset_timer     <= 0;
                fsm_state       <= 1;
            end

        1:  if (sync_rx_aligned)
                alignment_timer <= ALIGNMENT_TIMEOUT;
            else if (alignment_timer == 0) begin
                reset_timer <= RESET_TIMEOUT;
                fsm_state   <= 2;
            end

        2:  if (reset_timer == 0) fsm_state <= 0;

    endcase
end
//=============================================================================

endmodule