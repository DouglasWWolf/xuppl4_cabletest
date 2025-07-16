//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
//Date        : Sat Jul  5 17:49:57 2025
//Host        : wolf-super-server running 64-bit Ubuntu 20.04.6 LTS
//Command     : generate_target top_level.bd
//Design      : top_level
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module cabletest_imp_L7C0JI
   (AXIS_IN_0_tdata,
    AXIS_IN_0_tkeep,
    AXIS_IN_0_tlast,
    AXIS_IN_0_tready,
    AXIS_IN_0_tvalid,
    AXIS_IN_1_tdata,
    AXIS_IN_1_tkeep,
    AXIS_IN_1_tlast,
    AXIS_IN_1_tready,
    AXIS_IN_1_tvalid,
    AXIS_OUT_0_tdata,
    AXIS_OUT_0_tkeep,
    AXIS_OUT_0_tlast,
    AXIS_OUT_0_tready,
    AXIS_OUT_0_tvalid,
    AXIS_OUT_1_tdata,
    AXIS_OUT_1_tkeep,
    AXIS_OUT_1_tlast,
    AXIS_OUT_1_tready,
    AXIS_OUT_1_tvalid,
    CMAC_TXDIFF,
    CMAC_TXPOST,
    CMAC_TXPRE,
    RSFEC_ENABLE,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    clk,
    eth0_up,
    eth1_up,
    resetn,
    resetn_out);
  input [511:0]AXIS_IN_0_tdata;
  input [63:0]AXIS_IN_0_tkeep;
  input AXIS_IN_0_tlast;
  output AXIS_IN_0_tready;
  input AXIS_IN_0_tvalid;
  input [511:0]AXIS_IN_1_tdata;
  input [63:0]AXIS_IN_1_tkeep;
  input AXIS_IN_1_tlast;
  output AXIS_IN_1_tready;
  input AXIS_IN_1_tvalid;
  output [511:0]AXIS_OUT_0_tdata;
  output [63:0]AXIS_OUT_0_tkeep;
  output AXIS_OUT_0_tlast;
  input AXIS_OUT_0_tready;
  output AXIS_OUT_0_tvalid;
  output [511:0]AXIS_OUT_1_tdata;
  output [63:0]AXIS_OUT_1_tkeep;
  output AXIS_OUT_1_tlast;
  input AXIS_OUT_1_tready;
  output AXIS_OUT_1_tvalid;
  output [4:0]CMAC_TXDIFF;
  output [4:0]CMAC_TXPOST;
  output [4:0]CMAC_TXPRE;
  output RSFEC_ENABLE;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;
  input clk;
  input eth0_up;
  input eth1_up;
  input resetn;
  output resetn_out;

  wire [511:0]Conn2_TDATA;
  wire [63:0]Conn2_TKEEP;
  wire Conn2_TLAST;
  wire Conn2_TREADY;
  wire Conn2_TVALID;
  wire [511:0]Conn4_TDATA;
  wire [63:0]Conn4_TKEEP;
  wire Conn4_TLAST;
  wire Conn4_TREADY;
  wire Conn4_TVALID;
  wire [31:0]cabletest_ctl_BYTES_PER_USEC;
  wire [4:0]cabletest_ctl_CMAC_TXDIFF;
  wire [4:0]cabletest_ctl_CMAC_TXPOST;
  wire [4:0]cabletest_ctl_CMAC_TXPRE;
  wire [7:0]cabletest_ctl_CYCLES_PER_PACKET;
  wire [63:0]cabletest_ctl_PACKET_COUNT;
  wire cabletest_ctl_RSFEC_ENABLE;
  wire [2:0]cabletest_ctl_pg_control_1;
  wire cabletest_ctl_resetn_out;
  wire [511:0]channel_0_AXIS_OUT_TDATA;
  wire [63:0]channel_0_AXIS_OUT_TKEEP;
  wire channel_0_AXIS_OUT_TLAST;
  wire channel_0_AXIS_OUT_TREADY;
  wire channel_0_AXIS_OUT_TVALID;
  wire [2:0]channel_0_status;
  wire [1:0]channel_0_status1;
  wire [511:0]channel_1_AXIS_OUT_TDATA;
  wire [63:0]channel_1_AXIS_OUT_TKEEP;
  wire channel_1_AXIS_OUT_TLAST;
  wire channel_1_AXIS_OUT_TREADY;
  wire channel_1_AXIS_OUT_TVALID;
  wire [2:0]channel_1_pg_status;
  wire [1:0]channel_1_pr_status;
  wire cmac_cdc_user0_aligned;
  wire cmac_cdc_user1_aligned;
  wire [2:0]control_1;
  wire [511:0]rate_limiter_0_AXIS_OUT_TDATA;
  wire [63:0]rate_limiter_0_AXIS_OUT_TKEEP;
  wire rate_limiter_0_AXIS_OUT_TLAST;
  wire rate_limiter_0_AXIS_OUT_TREADY;
  wire rate_limiter_0_AXIS_OUT_TVALID;
  wire [511:0]rate_limiter_1_AXIS_OUT_TDATA;
  wire [63:0]rate_limiter_1_AXIS_OUT_TKEEP;
  wire rate_limiter_1_AXIS_OUT_TLAST;
  wire rate_limiter_1_AXIS_OUT_TREADY;
  wire rate_limiter_1_AXIS_OUT_TVALID;
  wire [31:0]smartconnect_M00_AXI_ARADDR;
  wire smartconnect_M00_AXI_ARREADY;
  wire smartconnect_M00_AXI_ARVALID;
  wire [31:0]smartconnect_M00_AXI_AWADDR;
  wire smartconnect_M00_AXI_AWREADY;
  wire smartconnect_M00_AXI_AWVALID;
  wire smartconnect_M00_AXI_BREADY;
  wire [1:0]smartconnect_M00_AXI_BRESP;
  wire smartconnect_M00_AXI_BVALID;
  wire [31:0]smartconnect_M00_AXI_RDATA;
  wire smartconnect_M00_AXI_RREADY;
  wire [1:0]smartconnect_M00_AXI_RRESP;
  wire smartconnect_M00_AXI_RVALID;
  wire [31:0]smartconnect_M00_AXI_WDATA;
  wire smartconnect_M00_AXI_WREADY;
  wire [3:0]smartconnect_M00_AXI_WSTRB;
  wire smartconnect_M00_AXI_WVALID;
  wire source_200Mhz_clk;
  wire source_200Mhz_resetn;

  assign AXIS_IN_0_tready = Conn2_TREADY;
  assign AXIS_IN_1_tready = Conn4_TREADY;
  assign AXIS_OUT_0_tdata[511:0] = rate_limiter_0_AXIS_OUT_TDATA;
  assign AXIS_OUT_0_tkeep[63:0] = rate_limiter_0_AXIS_OUT_TKEEP;
  assign AXIS_OUT_0_tlast = rate_limiter_0_AXIS_OUT_TLAST;
  assign AXIS_OUT_0_tvalid = rate_limiter_0_AXIS_OUT_TVALID;
  assign AXIS_OUT_1_tdata[511:0] = rate_limiter_1_AXIS_OUT_TDATA;
  assign AXIS_OUT_1_tkeep[63:0] = rate_limiter_1_AXIS_OUT_TKEEP;
  assign AXIS_OUT_1_tlast = rate_limiter_1_AXIS_OUT_TLAST;
  assign AXIS_OUT_1_tvalid = rate_limiter_1_AXIS_OUT_TVALID;
  assign CMAC_TXDIFF[4:0] = cabletest_ctl_CMAC_TXDIFF;
  assign CMAC_TXPOST[4:0] = cabletest_ctl_CMAC_TXPOST;
  assign CMAC_TXPRE[4:0] = cabletest_ctl_CMAC_TXPRE;
  assign Conn2_TDATA = AXIS_IN_0_tdata[511:0];
  assign Conn2_TKEEP = AXIS_IN_0_tkeep[63:0];
  assign Conn2_TLAST = AXIS_IN_0_tlast;
  assign Conn2_TVALID = AXIS_IN_0_tvalid;
  assign Conn4_TDATA = AXIS_IN_1_tdata[511:0];
  assign Conn4_TKEEP = AXIS_IN_1_tkeep[63:0];
  assign Conn4_TLAST = AXIS_IN_1_tlast;
  assign Conn4_TVALID = AXIS_IN_1_tvalid;
  assign RSFEC_ENABLE = cabletest_ctl_RSFEC_ENABLE;
  assign S_AXI_arready = smartconnect_M00_AXI_ARREADY;
  assign S_AXI_awready = smartconnect_M00_AXI_AWREADY;
  assign S_AXI_bresp[1:0] = smartconnect_M00_AXI_BRESP;
  assign S_AXI_bvalid = smartconnect_M00_AXI_BVALID;
  assign S_AXI_rdata[31:0] = smartconnect_M00_AXI_RDATA;
  assign S_AXI_rresp[1:0] = smartconnect_M00_AXI_RRESP;
  assign S_AXI_rvalid = smartconnect_M00_AXI_RVALID;
  assign S_AXI_wready = smartconnect_M00_AXI_WREADY;
  assign cmac_cdc_user0_aligned = eth0_up;
  assign cmac_cdc_user1_aligned = eth1_up;
  assign rate_limiter_0_AXIS_OUT_TREADY = AXIS_OUT_0_tready;
  assign rate_limiter_1_AXIS_OUT_TREADY = AXIS_OUT_1_tready;
  assign resetn_out = cabletest_ctl_resetn_out;
  assign smartconnect_M00_AXI_ARADDR = S_AXI_araddr[31:0];
  assign smartconnect_M00_AXI_ARVALID = S_AXI_arvalid;
  assign smartconnect_M00_AXI_AWADDR = S_AXI_awaddr[31:0];
  assign smartconnect_M00_AXI_AWVALID = S_AXI_awvalid;
  assign smartconnect_M00_AXI_BREADY = S_AXI_bready;
  assign smartconnect_M00_AXI_RREADY = S_AXI_rready;
  assign smartconnect_M00_AXI_WDATA = S_AXI_wdata[31:0];
  assign smartconnect_M00_AXI_WSTRB = S_AXI_wstrb[3:0];
  assign smartconnect_M00_AXI_WVALID = S_AXI_wvalid;
  assign source_200Mhz_clk = clk;
  assign source_200Mhz_resetn = resetn;
  top_level_cabletest_ctl_0_0 cabletest_ctl
       (.BYTES_PER_USEC(cabletest_ctl_BYTES_PER_USEC),
        .CMAC_TXDIFF(cabletest_ctl_CMAC_TXDIFF),
        .CMAC_TXPOST(cabletest_ctl_CMAC_TXPOST),
        .CMAC_TXPRE(cabletest_ctl_CMAC_TXPRE),
        .CYCLES_PER_PACKET(cabletest_ctl_CYCLES_PER_PACKET),
        .PACKET_COUNT(cabletest_ctl_PACKET_COUNT),
        .RSFEC_ENABLE(cabletest_ctl_RSFEC_ENABLE),
        .S_AXI_ARADDR(smartconnect_M00_AXI_ARADDR),
        .S_AXI_ARREADY(smartconnect_M00_AXI_ARREADY),
        .S_AXI_ARVALID(smartconnect_M00_AXI_ARVALID),
        .S_AXI_AWADDR(smartconnect_M00_AXI_AWADDR),
        .S_AXI_AWREADY(smartconnect_M00_AXI_AWREADY),
        .S_AXI_AWVALID(smartconnect_M00_AXI_AWVALID),
        .S_AXI_BREADY(smartconnect_M00_AXI_BREADY),
        .S_AXI_BRESP(smartconnect_M00_AXI_BRESP),
        .S_AXI_BVALID(smartconnect_M00_AXI_BVALID),
        .S_AXI_RDATA(smartconnect_M00_AXI_RDATA),
        .S_AXI_RREADY(smartconnect_M00_AXI_RREADY),
        .S_AXI_RRESP(smartconnect_M00_AXI_RRESP),
        .S_AXI_RVALID(smartconnect_M00_AXI_RVALID),
        .S_AXI_WDATA(smartconnect_M00_AXI_WDATA),
        .S_AXI_WREADY(smartconnect_M00_AXI_WREADY),
        .S_AXI_WSTRB(smartconnect_M00_AXI_WSTRB),
        .S_AXI_WVALID(smartconnect_M00_AXI_WVALID),
        .clk(source_200Mhz_clk),
        .eth0_up(cmac_cdc_user0_aligned),
        .eth1_up(cmac_cdc_user1_aligned),
        .pg_control_1(cabletest_ctl_pg_control_1),
        .pg_control_2(control_1),
        .pg_status_1(channel_0_status),
        .pg_status_2(channel_1_pg_status),
        .pr_status_1(channel_0_status1),
        .pr_status_2(channel_1_pr_status),
        .resetn(source_200Mhz_resetn),
        .resetn_out(cabletest_ctl_resetn_out));
  channel_0_imp_4YT34Q channel_0
       (.AXIS_IN_tdata(Conn2_TDATA),
        .AXIS_IN_tkeep(Conn2_TKEEP),
        .AXIS_IN_tlast(Conn2_TLAST),
        .AXIS_IN_tready(Conn2_TREADY),
        .AXIS_IN_tvalid(Conn2_TVALID),
        .AXIS_OUT_tdata(channel_0_AXIS_OUT_TDATA),
        .AXIS_OUT_tkeep(channel_0_AXIS_OUT_TKEEP),
        .AXIS_OUT_tlast(channel_0_AXIS_OUT_TLAST),
        .AXIS_OUT_tready(channel_0_AXIS_OUT_TREADY),
        .AXIS_OUT_tvalid(channel_0_AXIS_OUT_TVALID),
        .CYCLES_PER_PACKET(cabletest_ctl_CYCLES_PER_PACKET),
        .PACKET_COUNT(cabletest_ctl_PACKET_COUNT),
        .clk(source_200Mhz_clk),
        .pg_control(cabletest_ctl_pg_control_1),
        .pg_status(channel_0_status),
        .pr_status(channel_0_status1),
        .resetn(cabletest_ctl_resetn_out));
  channel_1_imp_1YIKJZ8 channel_1
       (.AXIS_IN_tdata(Conn4_TDATA),
        .AXIS_IN_tkeep(Conn4_TKEEP),
        .AXIS_IN_tlast(Conn4_TLAST),
        .AXIS_IN_tready(Conn4_TREADY),
        .AXIS_IN_tvalid(Conn4_TVALID),
        .AXIS_OUT_tdata(channel_1_AXIS_OUT_TDATA),
        .AXIS_OUT_tkeep(channel_1_AXIS_OUT_TKEEP),
        .AXIS_OUT_tlast(channel_1_AXIS_OUT_TLAST),
        .AXIS_OUT_tready(channel_1_AXIS_OUT_TREADY),
        .AXIS_OUT_tvalid(channel_1_AXIS_OUT_TVALID),
        .CYCLES_PER_PACKET(cabletest_ctl_CYCLES_PER_PACKET),
        .PACKET_COUNT(cabletest_ctl_PACKET_COUNT),
        .clk(source_200Mhz_clk),
        .control(control_1),
        .pg_status(channel_1_pg_status),
        .pr_status(channel_1_pr_status),
        .resetn(cabletest_ctl_resetn_out));
  top_level_rate_limiter_0_0 rate_limiter_0
       (.AXIS_IN_TDATA(channel_0_AXIS_OUT_TDATA),
        .AXIS_IN_TKEEP(channel_0_AXIS_OUT_TKEEP),
        .AXIS_IN_TLAST(channel_0_AXIS_OUT_TLAST),
        .AXIS_IN_TREADY(channel_0_AXIS_OUT_TREADY),
        .AXIS_IN_TVALID(channel_0_AXIS_OUT_TVALID),
        .AXIS_OUT_TDATA(rate_limiter_0_AXIS_OUT_TDATA),
        .AXIS_OUT_TKEEP(rate_limiter_0_AXIS_OUT_TKEEP),
        .AXIS_OUT_TLAST(rate_limiter_0_AXIS_OUT_TLAST),
        .AXIS_OUT_TREADY(rate_limiter_0_AXIS_OUT_TREADY),
        .AXIS_OUT_TVALID(rate_limiter_0_AXIS_OUT_TVALID),
        .BYTES_PER_USEC(cabletest_ctl_BYTES_PER_USEC),
        .clk(source_200Mhz_clk),
        .resetn(cabletest_ctl_resetn_out));
  top_level_rate_limiter_1_0 rate_limiter_1
       (.AXIS_IN_TDATA(channel_1_AXIS_OUT_TDATA),
        .AXIS_IN_TKEEP(channel_1_AXIS_OUT_TKEEP),
        .AXIS_IN_TLAST(channel_1_AXIS_OUT_TLAST),
        .AXIS_IN_TREADY(channel_1_AXIS_OUT_TREADY),
        .AXIS_IN_TVALID(channel_1_AXIS_OUT_TVALID),
        .AXIS_OUT_TDATA(rate_limiter_1_AXIS_OUT_TDATA),
        .AXIS_OUT_TKEEP(rate_limiter_1_AXIS_OUT_TKEEP),
        .AXIS_OUT_TLAST(rate_limiter_1_AXIS_OUT_TLAST),
        .AXIS_OUT_TREADY(rate_limiter_1_AXIS_OUT_TREADY),
        .AXIS_OUT_TVALID(rate_limiter_1_AXIS_OUT_TVALID),
        .BYTES_PER_USEC(cabletest_ctl_BYTES_PER_USEC),
        .clk(source_200Mhz_clk),
        .resetn(cabletest_ctl_resetn_out));
endmodule

module channel_0_imp_4YT34Q
   (AXIS_IN_tdata,
    AXIS_IN_tkeep,
    AXIS_IN_tlast,
    AXIS_IN_tready,
    AXIS_IN_tvalid,
    AXIS_OUT_tdata,
    AXIS_OUT_tkeep,
    AXIS_OUT_tlast,
    AXIS_OUT_tready,
    AXIS_OUT_tvalid,
    CYCLES_PER_PACKET,
    PACKET_COUNT,
    clk,
    pg_control,
    pg_status,
    pr_status,
    resetn);
  input [511:0]AXIS_IN_tdata;
  input [63:0]AXIS_IN_tkeep;
  input AXIS_IN_tlast;
  output AXIS_IN_tready;
  input AXIS_IN_tvalid;
  output [511:0]AXIS_OUT_tdata;
  output [63:0]AXIS_OUT_tkeep;
  output AXIS_OUT_tlast;
  input AXIS_OUT_tready;
  output AXIS_OUT_tvalid;
  input [7:0]CYCLES_PER_PACKET;
  input [63:0]PACKET_COUNT;
  input clk;
  input [2:0]pg_control;
  output [2:0]pg_status;
  output [1:0]pr_status;
  input resetn;

  wire [7:0]CYCLES_PER_PACKET_1;
  wire [511:0]Conn1_TDATA;
  wire [63:0]Conn1_TKEEP;
  wire Conn1_TLAST;
  wire Conn1_TREADY;
  wire Conn1_TVALID;
  wire [511:0]Conn2_TDATA;
  wire [63:0]Conn2_TKEEP;
  wire Conn2_TLAST;
  wire Conn2_TREADY;
  wire Conn2_TVALID;
  wire [63:0]PACKET_COUNT_1;
  wire [511:0]axis_data_fifo_M_AXIS_TDATA;
  wire axis_data_fifo_M_AXIS_TREADY;
  wire axis_data_fifo_M_AXIS_TVALID;
  wire clk_1;
  wire [2:0]control_1;
  wire [511:0]packet_gen_AXIS_FIFO_TDATA;
  wire packet_gen_AXIS_FIFO_TREADY;
  wire packet_gen_AXIS_FIFO_TVALID;
  wire packet_gen_resetn_fifo;
  wire [2:0]packet_gen_status;
  wire [1:0]receiver_status;
  wire resetn_1;

  assign AXIS_IN_tready = Conn2_TREADY;
  assign AXIS_OUT_tdata[511:0] = Conn1_TDATA;
  assign AXIS_OUT_tkeep[63:0] = Conn1_TKEEP;
  assign AXIS_OUT_tlast = Conn1_TLAST;
  assign AXIS_OUT_tvalid = Conn1_TVALID;
  assign CYCLES_PER_PACKET_1 = CYCLES_PER_PACKET[7:0];
  assign Conn1_TREADY = AXIS_OUT_tready;
  assign Conn2_TDATA = AXIS_IN_tdata[511:0];
  assign Conn2_TKEEP = AXIS_IN_tkeep[63:0];
  assign Conn2_TLAST = AXIS_IN_tlast;
  assign Conn2_TVALID = AXIS_IN_tvalid;
  assign PACKET_COUNT_1 = PACKET_COUNT[63:0];
  assign clk_1 = clk;
  assign control_1 = pg_control[2:0];
  assign pg_status[2:0] = packet_gen_status;
  assign pr_status[1:0] = receiver_status;
  assign resetn_1 = resetn;
  top_level_axis_data_fifo_0_0 axis_data_fifo
       (.m_axis_tdata(axis_data_fifo_M_AXIS_TDATA),
        .m_axis_tready(axis_data_fifo_M_AXIS_TREADY),
        .m_axis_tvalid(axis_data_fifo_M_AXIS_TVALID),
        .s_axis_aclk(clk_1),
        .s_axis_aresetn(packet_gen_resetn_fifo),
        .s_axis_tdata(packet_gen_AXIS_FIFO_TDATA),
        .s_axis_tready(packet_gen_AXIS_FIFO_TREADY),
        .s_axis_tvalid(packet_gen_AXIS_FIFO_TVALID));
  top_level_packet_gen_0_0 packet_gen
       (.AXIS_FIFO_TDATA(packet_gen_AXIS_FIFO_TDATA),
        .AXIS_FIFO_TREADY(packet_gen_AXIS_FIFO_TREADY),
        .AXIS_FIFO_TVALID(packet_gen_AXIS_FIFO_TVALID),
        .AXIS_OUT_TDATA(Conn1_TDATA),
        .AXIS_OUT_TKEEP(Conn1_TKEEP),
        .AXIS_OUT_TLAST(Conn1_TLAST),
        .AXIS_OUT_TREADY(Conn1_TREADY),
        .AXIS_OUT_TVALID(Conn1_TVALID),
        .CYCLES_PER_PACKET(CYCLES_PER_PACKET_1),
        .PACKET_COUNT(PACKET_COUNT_1),
        .clk(clk_1),
        .control(control_1),
        .resetn(resetn_1),
        .resetn_fifo(packet_gen_resetn_fifo),
        .status(packet_gen_status));
  top_level_receiver_0_0 receiver
       (.AXIS_FIFO_TDATA(axis_data_fifo_M_AXIS_TDATA),
        .AXIS_FIFO_TKEEP({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .AXIS_FIFO_TLAST(1'b0),
        .AXIS_FIFO_TREADY(axis_data_fifo_M_AXIS_TREADY),
        .AXIS_FIFO_TVALID(axis_data_fifo_M_AXIS_TVALID),
        .AXIS_IN_TDATA(Conn2_TDATA),
        .AXIS_IN_TKEEP(Conn2_TKEEP),
        .AXIS_IN_TLAST(Conn2_TLAST),
        .AXIS_IN_TREADY(Conn2_TREADY),
        .AXIS_IN_TVALID(Conn2_TVALID),
        .clk(clk_1),
        .resetn(resetn_1),
        .status(receiver_status));
endmodule

module channel_1_imp_1YIKJZ8
   (AXIS_IN_tdata,
    AXIS_IN_tkeep,
    AXIS_IN_tlast,
    AXIS_IN_tready,
    AXIS_IN_tvalid,
    AXIS_OUT_tdata,
    AXIS_OUT_tkeep,
    AXIS_OUT_tlast,
    AXIS_OUT_tready,
    AXIS_OUT_tvalid,
    CYCLES_PER_PACKET,
    PACKET_COUNT,
    clk,
    control,
    pg_status,
    pr_status,
    resetn);
  input [511:0]AXIS_IN_tdata;
  input [63:0]AXIS_IN_tkeep;
  input AXIS_IN_tlast;
  output AXIS_IN_tready;
  input AXIS_IN_tvalid;
  output [511:0]AXIS_OUT_tdata;
  output [63:0]AXIS_OUT_tkeep;
  output AXIS_OUT_tlast;
  input AXIS_OUT_tready;
  output AXIS_OUT_tvalid;
  input [7:0]CYCLES_PER_PACKET;
  input [63:0]PACKET_COUNT;
  input clk;
  input [2:0]control;
  output [2:0]pg_status;
  output [1:0]pr_status;
  input resetn;

  wire [7:0]CYCLES_PER_PACKET_1;
  wire [511:0]Conn1_TDATA;
  wire [63:0]Conn1_TKEEP;
  wire Conn1_TLAST;
  wire Conn1_TREADY;
  wire Conn1_TVALID;
  wire [511:0]Conn2_TDATA;
  wire [63:0]Conn2_TKEEP;
  wire Conn2_TLAST;
  wire Conn2_TREADY;
  wire Conn2_TVALID;
  wire [63:0]PACKET_COUNT_1;
  wire [511:0]axis_data_fifo_M_AXIS_TDATA;
  wire axis_data_fifo_M_AXIS_TREADY;
  wire axis_data_fifo_M_AXIS_TVALID;
  wire clk_1;
  wire [2:0]control_1;
  wire [511:0]packet_gen_AXIS_FIFO_TDATA;
  wire packet_gen_AXIS_FIFO_TREADY;
  wire packet_gen_AXIS_FIFO_TVALID;
  wire packet_gen_resetn_fifo;
  wire [2:0]packet_gen_status;
  wire [1:0]receiver_status;
  wire resetn_1;

  assign AXIS_IN_tready = Conn2_TREADY;
  assign AXIS_OUT_tdata[511:0] = Conn1_TDATA;
  assign AXIS_OUT_tkeep[63:0] = Conn1_TKEEP;
  assign AXIS_OUT_tlast = Conn1_TLAST;
  assign AXIS_OUT_tvalid = Conn1_TVALID;
  assign CYCLES_PER_PACKET_1 = CYCLES_PER_PACKET[7:0];
  assign Conn1_TREADY = AXIS_OUT_tready;
  assign Conn2_TDATA = AXIS_IN_tdata[511:0];
  assign Conn2_TKEEP = AXIS_IN_tkeep[63:0];
  assign Conn2_TLAST = AXIS_IN_tlast;
  assign Conn2_TVALID = AXIS_IN_tvalid;
  assign PACKET_COUNT_1 = PACKET_COUNT[63:0];
  assign clk_1 = clk;
  assign control_1 = control[2:0];
  assign pg_status[2:0] = packet_gen_status;
  assign pr_status[1:0] = receiver_status;
  assign resetn_1 = resetn;
  top_level_axis_data_fifo_1 axis_data_fifo
       (.m_axis_tdata(axis_data_fifo_M_AXIS_TDATA),
        .m_axis_tready(axis_data_fifo_M_AXIS_TREADY),
        .m_axis_tvalid(axis_data_fifo_M_AXIS_TVALID),
        .s_axis_aclk(clk_1),
        .s_axis_aresetn(packet_gen_resetn_fifo),
        .s_axis_tdata(packet_gen_AXIS_FIFO_TDATA),
        .s_axis_tready(packet_gen_AXIS_FIFO_TREADY),
        .s_axis_tvalid(packet_gen_AXIS_FIFO_TVALID));
  top_level_packet_gen_1 packet_gen
       (.AXIS_FIFO_TDATA(packet_gen_AXIS_FIFO_TDATA),
        .AXIS_FIFO_TREADY(packet_gen_AXIS_FIFO_TREADY),
        .AXIS_FIFO_TVALID(packet_gen_AXIS_FIFO_TVALID),
        .AXIS_OUT_TDATA(Conn1_TDATA),
        .AXIS_OUT_TKEEP(Conn1_TKEEP),
        .AXIS_OUT_TLAST(Conn1_TLAST),
        .AXIS_OUT_TREADY(Conn1_TREADY),
        .AXIS_OUT_TVALID(Conn1_TVALID),
        .CYCLES_PER_PACKET(CYCLES_PER_PACKET_1),
        .PACKET_COUNT(PACKET_COUNT_1),
        .clk(clk_1),
        .control(control_1),
        .resetn(resetn_1),
        .resetn_fifo(packet_gen_resetn_fifo),
        .status(packet_gen_status));
  top_level_receiver_1 receiver
       (.AXIS_FIFO_TDATA(axis_data_fifo_M_AXIS_TDATA),
        .AXIS_FIFO_TKEEP({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .AXIS_FIFO_TLAST(1'b0),
        .AXIS_FIFO_TREADY(axis_data_fifo_M_AXIS_TREADY),
        .AXIS_FIFO_TVALID(axis_data_fifo_M_AXIS_TVALID),
        .AXIS_IN_TDATA(Conn2_TDATA),
        .AXIS_IN_TKEEP(Conn2_TKEEP),
        .AXIS_IN_TLAST(Conn2_TLAST),
        .AXIS_IN_TREADY(Conn2_TREADY),
        .AXIS_IN_TVALID(Conn2_TVALID),
        .clk(clk_1),
        .resetn(resetn_1),
        .status(receiver_status));
endmodule

module eth_0_imp_H4LLQV
   (aligned,
    axis_rx_tdata,
    axis_rx_tkeep,
    axis_rx_tlast,
    axis_rx_tuser,
    axis_rx_tvalid,
    axis_tx_tdata,
    axis_tx_tkeep,
    axis_tx_tlast,
    axis_tx_tready,
    axis_tx_tuser,
    axis_tx_tvalid,
    init_clk,
    qsfp_clk_clk_n,
    qsfp_clk_clk_p,
    qsfp_gt_grx_n,
    qsfp_gt_grx_p,
    qsfp_gt_gtx_n,
    qsfp_gt_gtx_p,
    rsfec_enable,
    stream_clk,
    stream_resetn,
    sys_resetn,
    tx_diff,
    tx_post,
    tx_pre);
  output aligned;
  output [511:0]axis_rx_tdata;
  output [63:0]axis_rx_tkeep;
  output axis_rx_tlast;
  output axis_rx_tuser;
  output axis_rx_tvalid;
  input [511:0]axis_tx_tdata;
  input [63:0]axis_tx_tkeep;
  input axis_tx_tlast;
  output axis_tx_tready;
  input axis_tx_tuser;
  input axis_tx_tvalid;
  input init_clk;
  input qsfp_clk_clk_n;
  input qsfp_clk_clk_p;
  input [3:0]qsfp_gt_grx_n;
  input [3:0]qsfp_gt_grx_p;
  output [3:0]qsfp_gt_gtx_n;
  output [3:0]qsfp_gt_gtx_p;
  input rsfec_enable;
  output stream_clk;
  output stream_resetn;
  input sys_resetn;
  input [4:0]tx_diff;
  input [4:0]tx_post;
  input [4:0]tx_pre;

  wire [511:0]axis_tx_1_TDATA;
  wire [63:0]axis_tx_1_TKEEP;
  wire axis_tx_1_TLAST;
  wire axis_tx_1_TREADY;
  wire axis_tx_1_TUSER;
  wire axis_tx_1_TVALID;
  wire clk_0_1;
  wire [511:0]cmac_axis_rx_TDATA;
  wire [63:0]cmac_axis_rx_TKEEP;
  wire cmac_axis_rx_TLAST;
  wire cmac_axis_rx_TUSER;
  wire cmac_axis_rx_TVALID;
  wire cmac_control_ex_0_ctl_rx_ctl_enable;
  wire cmac_control_ex_0_ctl_tx_ctl_enable;
  wire cmac_control_ex_0_ctl_tx_ctl_tx_send_rfi;
  wire cmac_control_ex_0_rs_fec_ctl_rx_rsfec_enable;
  wire cmac_control_ex_0_rs_fec_ctl_rx_rsfec_enable_correction;
  wire cmac_control_ex_0_rs_fec_ctl_rx_rsfec_enable_indication;
  wire cmac_control_ex_0_rs_fec_ctl_tx_rsfec_enable;
  wire [19:0]cmac_control_ex_gt_trans_debug_gt_txdiffctrl;
  wire [19:0]cmac_control_ex_gt_trans_debug_gt_txpostcursor;
  wire [19:0]cmac_control_ex_gt_trans_debug_gt_txprecursor;
  wire cmac_control_ex_reset_rx_datapath;
  wire cmac_control_ex_rx_resetn_out;
  wire cmac_control_ex_sync_rx_aligned;
  wire cmac_control_ex_sys_reset_out;
  wire cmac_gt_rxusrclk2;
  wire cmac_stat_rx_stat_rx_aligned;
  wire [3:0]cmac_usplus_0_gt_serial_port_GRX_N;
  wire [3:0]cmac_usplus_0_gt_serial_port_GRX_P;
  wire [3:0]cmac_usplus_0_gt_serial_port_GTX_N;
  wire [3:0]cmac_usplus_0_gt_serial_port_GTX_P;
  wire gt_ref_clk_0_1_CLK_N;
  wire gt_ref_clk_0_1_CLK_P;
  wire [511:0]ila_M_AXIS_RX_TDATA;
  wire [63:0]ila_M_AXIS_RX_TKEEP;
  wire ila_M_AXIS_RX_TLAST;
  wire ila_M_AXIS_RX_TUSER;
  wire ila_M_AXIS_RX_TVALID;
  wire [511:0]ila_M_AXIS_TX_TDATA;
  wire [63:0]ila_M_AXIS_TX_TKEEP;
  wire ila_M_AXIS_TX_TLAST;
  wire ila_M_AXIS_TX_TREADY;
  wire [0:0]ila_M_AXIS_TX_TUSER;
  wire ila_M_AXIS_TX_TVALID;
  wire rsfec_enable_1;
  wire sys_resetn_1;
  wire [4:0]tx_diff_1;
  wire [4:0]tx_post_1;
  wire [4:0]tx_pre_1;

  assign aligned = cmac_control_ex_sync_rx_aligned;
  assign axis_rx_tdata[511:0] = ila_M_AXIS_RX_TDATA;
  assign axis_rx_tkeep[63:0] = ila_M_AXIS_RX_TKEEP;
  assign axis_rx_tlast = ila_M_AXIS_RX_TLAST;
  assign axis_rx_tuser = ila_M_AXIS_RX_TUSER;
  assign axis_rx_tvalid = ila_M_AXIS_RX_TVALID;
  assign axis_tx_1_TDATA = axis_tx_tdata[511:0];
  assign axis_tx_1_TKEEP = axis_tx_tkeep[63:0];
  assign axis_tx_1_TLAST = axis_tx_tlast;
  assign axis_tx_1_TUSER = axis_tx_tuser;
  assign axis_tx_1_TVALID = axis_tx_tvalid;
  assign axis_tx_tready = axis_tx_1_TREADY;
  assign clk_0_1 = init_clk;
  assign cmac_usplus_0_gt_serial_port_GRX_N = qsfp_gt_grx_n[3:0];
  assign cmac_usplus_0_gt_serial_port_GRX_P = qsfp_gt_grx_p[3:0];
  assign gt_ref_clk_0_1_CLK_N = qsfp_clk_clk_n;
  assign gt_ref_clk_0_1_CLK_P = qsfp_clk_clk_p;
  assign qsfp_gt_gtx_n[3:0] = cmac_usplus_0_gt_serial_port_GTX_N;
  assign qsfp_gt_gtx_p[3:0] = cmac_usplus_0_gt_serial_port_GTX_P;
  assign rsfec_enable_1 = rsfec_enable;
  assign stream_clk = cmac_gt_rxusrclk2;
  assign stream_resetn = cmac_control_ex_rx_resetn_out;
  assign sys_resetn_1 = sys_resetn;
  assign tx_diff_1 = tx_diff[4:0];
  assign tx_post_1 = tx_post[4:0];
  assign tx_pre_1 = tx_pre[4:0];
  top_level_cmac_usplus_0_0 cmac
       (.common0_drpaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .common0_drpdi({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .common0_drpen(1'b0),
        .common0_drpwe(1'b0),
        .core_drp_reset(1'b0),
        .core_rx_reset(1'b0),
        .core_tx_reset(1'b0),
        .ctl_rsfec_ieee_error_indication_mode(1'b0),
        .ctl_rx_enable(cmac_control_ex_0_ctl_rx_ctl_enable),
        .ctl_rx_force_resync(1'b0),
        .ctl_rx_rsfec_enable(cmac_control_ex_0_rs_fec_ctl_rx_rsfec_enable),
        .ctl_rx_rsfec_enable_correction(cmac_control_ex_0_rs_fec_ctl_rx_rsfec_enable_correction),
        .ctl_rx_rsfec_enable_indication(cmac_control_ex_0_rs_fec_ctl_rx_rsfec_enable_indication),
        .ctl_rx_test_pattern(1'b0),
        .ctl_tx_enable(cmac_control_ex_0_ctl_tx_ctl_enable),
        .ctl_tx_rsfec_enable(cmac_control_ex_0_rs_fec_ctl_tx_rsfec_enable),
        .ctl_tx_send_idle(1'b0),
        .ctl_tx_send_lfi(1'b0),
        .ctl_tx_send_rfi(cmac_control_ex_0_ctl_tx_ctl_tx_send_rfi),
        .ctl_tx_test_pattern(1'b0),
        .drp_addr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .drp_clk(clk_0_1),
        .drp_di({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .drp_en(1'b0),
        .drp_we(1'b0),
        .gt0_drpaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt0_drpdi({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt0_drpen(1'b0),
        .gt0_drpwe(1'b0),
        .gt1_drpaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt1_drpdi({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt1_drpen(1'b0),
        .gt1_drpwe(1'b0),
        .gt2_drpaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt2_drpdi({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt2_drpen(1'b0),
        .gt2_drpwe(1'b0),
        .gt3_drpaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt3_drpdi({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt3_drpen(1'b0),
        .gt3_drpwe(1'b0),
        .gt_drpclk(clk_0_1),
        .gt_eyescanreset({1'b0,1'b0,1'b0,1'b0}),
        .gt_eyescantrigger({1'b0,1'b0,1'b0,1'b0}),
        .gt_loopback_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt_ref_clk_n(gt_ref_clk_0_1_CLK_N),
        .gt_ref_clk_p(gt_ref_clk_0_1_CLK_P),
        .gt_rxcdrhold({1'b0,1'b0,1'b0,1'b0}),
        .gt_rxdfelpmreset({1'b0,1'b0,1'b0,1'b0}),
        .gt_rxlpmen({1'b0,1'b0,1'b0,1'b0}),
        .gt_rxn_in(cmac_usplus_0_gt_serial_port_GRX_N),
        .gt_rxp_in(cmac_usplus_0_gt_serial_port_GRX_P),
        .gt_rxpolarity({1'b0,1'b0,1'b0,1'b0}),
        .gt_rxprbscntreset({1'b0,1'b0,1'b0,1'b0}),
        .gt_rxprbssel({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt_rxrate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt_txdiffctrl(cmac_control_ex_gt_trans_debug_gt_txdiffctrl),
        .gt_txinhibit({1'b0,1'b0,1'b0,1'b0}),
        .gt_txn_out(cmac_usplus_0_gt_serial_port_GTX_N),
        .gt_txp_out(cmac_usplus_0_gt_serial_port_GTX_P),
        .gt_txpippmen({1'b0,1'b0,1'b0,1'b0}),
        .gt_txpippmsel({1'b0,1'b0,1'b0,1'b0}),
        .gt_txpolarity({1'b0,1'b0,1'b0,1'b0}),
        .gt_txpostcursor(cmac_control_ex_gt_trans_debug_gt_txpostcursor),
        .gt_txprbsforceerr({1'b0,1'b0,1'b0,1'b0}),
        .gt_txprbssel({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt_txprecursor(cmac_control_ex_gt_trans_debug_gt_txprecursor),
        .gt_txusrclk2(cmac_gt_rxusrclk2),
        .gtwiz_reset_rx_datapath(cmac_control_ex_reset_rx_datapath),
        .gtwiz_reset_tx_datapath(1'b0),
        .init_clk(clk_0_1),
        .rx_axis_tdata(cmac_axis_rx_TDATA),
        .rx_axis_tkeep(cmac_axis_rx_TKEEP),
        .rx_axis_tlast(cmac_axis_rx_TLAST),
        .rx_axis_tuser(cmac_axis_rx_TUSER),
        .rx_axis_tvalid(cmac_axis_rx_TVALID),
        .rx_clk(cmac_gt_rxusrclk2),
        .stat_rx_aligned(cmac_stat_rx_stat_rx_aligned),
        .sys_reset(cmac_control_ex_sys_reset_out),
        .tx_axis_tdata(ila_M_AXIS_TX_TDATA),
        .tx_axis_tkeep(ila_M_AXIS_TX_TKEEP),
        .tx_axis_tlast(ila_M_AXIS_TX_TLAST),
        .tx_axis_tready(ila_M_AXIS_TX_TREADY),
        .tx_axis_tuser(ila_M_AXIS_TX_TUSER),
        .tx_axis_tvalid(ila_M_AXIS_TX_TVALID),
        .tx_preamblein({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  top_level_cmac_control_ex_0_0 cmac_control_ex
       (.ctl_rx_enable(cmac_control_ex_0_ctl_rx_ctl_enable),
        .ctl_rx_rsfec_enable(cmac_control_ex_0_rs_fec_ctl_rx_rsfec_enable),
        .ctl_rx_rsfec_enable_correction(cmac_control_ex_0_rs_fec_ctl_rx_rsfec_enable_correction),
        .ctl_rx_rsfec_enable_indication(cmac_control_ex_0_rs_fec_ctl_rx_rsfec_enable_indication),
        .ctl_tx_enable(cmac_control_ex_0_ctl_tx_ctl_enable),
        .ctl_tx_rsfec_enable(cmac_control_ex_0_rs_fec_ctl_tx_rsfec_enable),
        .ctl_tx_send_rfi(cmac_control_ex_0_ctl_tx_ctl_tx_send_rfi),
        .gt_txdiffctrl(cmac_control_ex_gt_trans_debug_gt_txdiffctrl),
        .gt_txpostcursor(cmac_control_ex_gt_trans_debug_gt_txpostcursor),
        .gt_txprecursor(cmac_control_ex_gt_trans_debug_gt_txprecursor),
        .reset_rx_datapath(cmac_control_ex_reset_rx_datapath),
        .rsfec_enable(rsfec_enable_1),
        .rx_clk(cmac_gt_rxusrclk2),
        .rx_resetn_out(cmac_control_ex_rx_resetn_out),
        .stat_rx_aligned(cmac_stat_rx_stat_rx_aligned),
        .sync_rx_aligned(cmac_control_ex_sync_rx_aligned),
        .sys_reset_out(cmac_control_ex_sys_reset_out),
        .sys_resetn_in(sys_resetn_1),
        .tx_diff(tx_diff_1),
        .tx_post(tx_post_1),
        .tx_pre(tx_pre_1));
  ila_imp_GWG18S ila
       (.M_AXIS_RX_tdata(ila_M_AXIS_RX_TDATA),
        .M_AXIS_RX_tkeep(ila_M_AXIS_RX_TKEEP),
        .M_AXIS_RX_tlast(ila_M_AXIS_RX_TLAST),
        .M_AXIS_RX_tuser(ila_M_AXIS_RX_TUSER),
        .M_AXIS_RX_tvalid(ila_M_AXIS_RX_TVALID),
        .M_AXIS_TX_tdata(ila_M_AXIS_TX_TDATA),
        .M_AXIS_TX_tkeep(ila_M_AXIS_TX_TKEEP),
        .M_AXIS_TX_tlast(ila_M_AXIS_TX_TLAST),
        .M_AXIS_TX_tready(ila_M_AXIS_TX_TREADY),
        .M_AXIS_TX_tuser(ila_M_AXIS_TX_TUSER),
        .M_AXIS_TX_tvalid(ila_M_AXIS_TX_TVALID),
        .S_AXIS_RX_tdata(cmac_axis_rx_TDATA),
        .S_AXIS_RX_tkeep(cmac_axis_rx_TKEEP),
        .S_AXIS_RX_tlast(cmac_axis_rx_TLAST),
        .S_AXIS_RX_tuser(cmac_axis_rx_TUSER),
        .S_AXIS_RX_tvalid(cmac_axis_rx_TVALID),
        .S_AXIS_TX_tdata(axis_tx_1_TDATA),
        .S_AXIS_TX_tkeep(axis_tx_1_TKEEP),
        .S_AXIS_TX_tlast(axis_tx_1_TLAST),
        .S_AXIS_TX_tready(axis_tx_1_TREADY),
        .S_AXIS_TX_tuser(axis_tx_1_TUSER),
        .S_AXIS_TX_tvalid(axis_tx_1_TVALID),
        .stream_clk(cmac_gt_rxusrclk2));
endmodule

module eth_1_imp_1MEC6LL
   (aligned,
    axis_rx_tdata,
    axis_rx_tkeep,
    axis_rx_tlast,
    axis_rx_tuser,
    axis_rx_tvalid,
    axis_tx_tdata,
    axis_tx_tkeep,
    axis_tx_tlast,
    axis_tx_tready,
    axis_tx_tuser,
    axis_tx_tvalid,
    init_clk,
    qsfp_clk_clk_n,
    qsfp_clk_clk_p,
    qsfp_gt_grx_n,
    qsfp_gt_grx_p,
    qsfp_gt_gtx_n,
    qsfp_gt_gtx_p,
    rsfec_enable,
    stream_clk,
    stream_resetn,
    sys_resetn,
    tx_diff,
    tx_post,
    tx_pre);
  output aligned;
  output [511:0]axis_rx_tdata;
  output [63:0]axis_rx_tkeep;
  output axis_rx_tlast;
  output axis_rx_tuser;
  output axis_rx_tvalid;
  input [511:0]axis_tx_tdata;
  input [63:0]axis_tx_tkeep;
  input axis_tx_tlast;
  output axis_tx_tready;
  input axis_tx_tuser;
  input axis_tx_tvalid;
  input init_clk;
  input qsfp_clk_clk_n;
  input qsfp_clk_clk_p;
  input [3:0]qsfp_gt_grx_n;
  input [3:0]qsfp_gt_grx_p;
  output [3:0]qsfp_gt_gtx_n;
  output [3:0]qsfp_gt_gtx_p;
  input rsfec_enable;
  output stream_clk;
  output stream_resetn;
  input sys_resetn;
  input [4:0]tx_diff;
  input [4:0]tx_post;
  input [4:0]tx_pre;

  wire Conn3_CLK_N;
  wire Conn3_CLK_P;
  wire [511:0]S_AXIS_RX_1_TDATA;
  wire [63:0]S_AXIS_RX_1_TKEEP;
  wire S_AXIS_RX_1_TLAST;
  wire S_AXIS_RX_1_TUSER;
  wire S_AXIS_RX_1_TVALID;
  wire [511:0]axis_tx_1_TDATA;
  wire [63:0]axis_tx_1_TKEEP;
  wire axis_tx_1_TLAST;
  wire axis_tx_1_TREADY;
  wire axis_tx_1_TUSER;
  wire axis_tx_1_TVALID;
  wire cmac_control_ex_0_ctl_rx_ctl_enable;
  wire cmac_control_ex_0_ctl_tx_ctl_enable;
  wire cmac_control_ex_0_ctl_tx_ctl_tx_send_rfi;
  wire cmac_control_ex_0_reset_rx_datapath;
  wire cmac_control_ex_0_rs_fec_ctl_rx_rsfec_enable;
  wire cmac_control_ex_0_rs_fec_ctl_rx_rsfec_enable_correction;
  wire cmac_control_ex_0_rs_fec_ctl_rx_rsfec_enable_indication;
  wire cmac_control_ex_0_rs_fec_ctl_tx_rsfec_enable;
  wire cmac_control_ex_0_rx_resetn_out;
  wire cmac_control_ex_0_sync_rx_aligned;
  wire cmac_control_ex_0_sys_reset_out;
  wire [19:0]cmac_control_ex_gt_trans_debug_gt_txdiffctrl;
  wire [19:0]cmac_control_ex_gt_trans_debug_gt_txpostcursor;
  wire [19:0]cmac_control_ex_gt_trans_debug_gt_txprecursor;
  wire cmac_gt_rxusrclk2;
  wire cmac_stat_rx_stat_rx_aligned;
  wire [3:0]cmac_usplus_0_gt_serial_port_GRX_N;
  wire [3:0]cmac_usplus_0_gt_serial_port_GRX_P;
  wire [3:0]cmac_usplus_0_gt_serial_port_GTX_N;
  wire [3:0]cmac_usplus_0_gt_serial_port_GTX_P;
  wire [511:0]ila_M_AXIS_RX_TDATA;
  wire [63:0]ila_M_AXIS_RX_TKEEP;
  wire ila_M_AXIS_RX_TLAST;
  wire ila_M_AXIS_RX_TUSER;
  wire ila_M_AXIS_RX_TVALID;
  wire [511:0]ila_M_AXIS_TX_TDATA;
  wire [63:0]ila_M_AXIS_TX_TKEEP;
  wire ila_M_AXIS_TX_TLAST;
  wire ila_M_AXIS_TX_TREADY;
  wire [0:0]ila_M_AXIS_TX_TUSER;
  wire ila_M_AXIS_TX_TVALID;
  wire init_clk_divider_init_clk;
  wire rsfec_enable_1;
  wire sys_resetn_1;
  wire [4:0]tx_diff_1;
  wire [4:0]tx_post_1;
  wire [4:0]tx_pre_1;

  assign Conn3_CLK_N = qsfp_clk_clk_n;
  assign Conn3_CLK_P = qsfp_clk_clk_p;
  assign aligned = cmac_control_ex_0_sync_rx_aligned;
  assign axis_rx_tdata[511:0] = ila_M_AXIS_RX_TDATA;
  assign axis_rx_tkeep[63:0] = ila_M_AXIS_RX_TKEEP;
  assign axis_rx_tlast = ila_M_AXIS_RX_TLAST;
  assign axis_rx_tuser = ila_M_AXIS_RX_TUSER;
  assign axis_rx_tvalid = ila_M_AXIS_RX_TVALID;
  assign axis_tx_1_TDATA = axis_tx_tdata[511:0];
  assign axis_tx_1_TKEEP = axis_tx_tkeep[63:0];
  assign axis_tx_1_TLAST = axis_tx_tlast;
  assign axis_tx_1_TUSER = axis_tx_tuser;
  assign axis_tx_1_TVALID = axis_tx_tvalid;
  assign axis_tx_tready = axis_tx_1_TREADY;
  assign cmac_usplus_0_gt_serial_port_GRX_N = qsfp_gt_grx_n[3:0];
  assign cmac_usplus_0_gt_serial_port_GRX_P = qsfp_gt_grx_p[3:0];
  assign init_clk_divider_init_clk = init_clk;
  assign qsfp_gt_gtx_n[3:0] = cmac_usplus_0_gt_serial_port_GTX_N;
  assign qsfp_gt_gtx_p[3:0] = cmac_usplus_0_gt_serial_port_GTX_P;
  assign rsfec_enable_1 = rsfec_enable;
  assign stream_clk = cmac_gt_rxusrclk2;
  assign stream_resetn = cmac_control_ex_0_rx_resetn_out;
  assign sys_resetn_1 = sys_resetn;
  assign tx_diff_1 = tx_diff[4:0];
  assign tx_post_1 = tx_post[4:0];
  assign tx_pre_1 = tx_pre[4:0];
  top_level_cmac_0 cmac
       (.common0_drpaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .common0_drpdi({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .common0_drpen(1'b0),
        .common0_drpwe(1'b0),
        .core_drp_reset(1'b0),
        .core_rx_reset(1'b0),
        .core_tx_reset(1'b0),
        .ctl_rsfec_ieee_error_indication_mode(1'b0),
        .ctl_rx_enable(cmac_control_ex_0_ctl_rx_ctl_enable),
        .ctl_rx_force_resync(1'b0),
        .ctl_rx_rsfec_enable(cmac_control_ex_0_rs_fec_ctl_rx_rsfec_enable),
        .ctl_rx_rsfec_enable_correction(cmac_control_ex_0_rs_fec_ctl_rx_rsfec_enable_correction),
        .ctl_rx_rsfec_enable_indication(cmac_control_ex_0_rs_fec_ctl_rx_rsfec_enable_indication),
        .ctl_rx_test_pattern(1'b0),
        .ctl_tx_enable(cmac_control_ex_0_ctl_tx_ctl_enable),
        .ctl_tx_rsfec_enable(cmac_control_ex_0_rs_fec_ctl_tx_rsfec_enable),
        .ctl_tx_send_idle(1'b0),
        .ctl_tx_send_lfi(1'b0),
        .ctl_tx_send_rfi(cmac_control_ex_0_ctl_tx_ctl_tx_send_rfi),
        .ctl_tx_test_pattern(1'b0),
        .drp_addr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .drp_clk(init_clk_divider_init_clk),
        .drp_di({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .drp_en(1'b0),
        .drp_we(1'b0),
        .gt0_drpaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt0_drpdi({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt0_drpen(1'b0),
        .gt0_drpwe(1'b0),
        .gt1_drpaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt1_drpdi({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt1_drpen(1'b0),
        .gt1_drpwe(1'b0),
        .gt2_drpaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt2_drpdi({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt2_drpen(1'b0),
        .gt2_drpwe(1'b0),
        .gt3_drpaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt3_drpdi({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt3_drpen(1'b0),
        .gt3_drpwe(1'b0),
        .gt_drpclk(init_clk_divider_init_clk),
        .gt_eyescanreset({1'b0,1'b0,1'b0,1'b0}),
        .gt_eyescantrigger({1'b0,1'b0,1'b0,1'b0}),
        .gt_loopback_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt_ref_clk_n(Conn3_CLK_N),
        .gt_ref_clk_p(Conn3_CLK_P),
        .gt_rxcdrhold({1'b0,1'b0,1'b0,1'b0}),
        .gt_rxdfelpmreset({1'b0,1'b0,1'b0,1'b0}),
        .gt_rxlpmen({1'b0,1'b0,1'b0,1'b0}),
        .gt_rxn_in(cmac_usplus_0_gt_serial_port_GRX_N),
        .gt_rxp_in(cmac_usplus_0_gt_serial_port_GRX_P),
        .gt_rxpolarity({1'b0,1'b0,1'b0,1'b0}),
        .gt_rxprbscntreset({1'b0,1'b0,1'b0,1'b0}),
        .gt_rxprbssel({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt_rxrate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt_txdiffctrl(cmac_control_ex_gt_trans_debug_gt_txdiffctrl),
        .gt_txinhibit({1'b0,1'b0,1'b0,1'b0}),
        .gt_txn_out(cmac_usplus_0_gt_serial_port_GTX_N),
        .gt_txp_out(cmac_usplus_0_gt_serial_port_GTX_P),
        .gt_txpippmen({1'b0,1'b0,1'b0,1'b0}),
        .gt_txpippmsel({1'b0,1'b0,1'b0,1'b0}),
        .gt_txpolarity({1'b0,1'b0,1'b0,1'b0}),
        .gt_txpostcursor(cmac_control_ex_gt_trans_debug_gt_txpostcursor),
        .gt_txprbsforceerr({1'b0,1'b0,1'b0,1'b0}),
        .gt_txprbssel({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt_txprecursor(cmac_control_ex_gt_trans_debug_gt_txprecursor),
        .gt_txusrclk2(cmac_gt_rxusrclk2),
        .gtwiz_reset_rx_datapath(cmac_control_ex_0_reset_rx_datapath),
        .gtwiz_reset_tx_datapath(1'b0),
        .init_clk(init_clk_divider_init_clk),
        .rx_axis_tdata(S_AXIS_RX_1_TDATA),
        .rx_axis_tkeep(S_AXIS_RX_1_TKEEP),
        .rx_axis_tlast(S_AXIS_RX_1_TLAST),
        .rx_axis_tuser(S_AXIS_RX_1_TUSER),
        .rx_axis_tvalid(S_AXIS_RX_1_TVALID),
        .rx_clk(cmac_gt_rxusrclk2),
        .stat_rx_aligned(cmac_stat_rx_stat_rx_aligned),
        .sys_reset(cmac_control_ex_0_sys_reset_out),
        .tx_axis_tdata(ila_M_AXIS_TX_TDATA),
        .tx_axis_tkeep(ila_M_AXIS_TX_TKEEP),
        .tx_axis_tlast(ila_M_AXIS_TX_TLAST),
        .tx_axis_tready(ila_M_AXIS_TX_TREADY),
        .tx_axis_tuser(ila_M_AXIS_TX_TUSER),
        .tx_axis_tvalid(ila_M_AXIS_TX_TVALID),
        .tx_preamblein({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  top_level_cmac_control_ex_0_1 cmac_control_ex
       (.ctl_rx_enable(cmac_control_ex_0_ctl_rx_ctl_enable),
        .ctl_rx_rsfec_enable(cmac_control_ex_0_rs_fec_ctl_rx_rsfec_enable),
        .ctl_rx_rsfec_enable_correction(cmac_control_ex_0_rs_fec_ctl_rx_rsfec_enable_correction),
        .ctl_rx_rsfec_enable_indication(cmac_control_ex_0_rs_fec_ctl_rx_rsfec_enable_indication),
        .ctl_tx_enable(cmac_control_ex_0_ctl_tx_ctl_enable),
        .ctl_tx_rsfec_enable(cmac_control_ex_0_rs_fec_ctl_tx_rsfec_enable),
        .ctl_tx_send_rfi(cmac_control_ex_0_ctl_tx_ctl_tx_send_rfi),
        .gt_txdiffctrl(cmac_control_ex_gt_trans_debug_gt_txdiffctrl),
        .gt_txpostcursor(cmac_control_ex_gt_trans_debug_gt_txpostcursor),
        .gt_txprecursor(cmac_control_ex_gt_trans_debug_gt_txprecursor),
        .reset_rx_datapath(cmac_control_ex_0_reset_rx_datapath),
        .rsfec_enable(rsfec_enable_1),
        .rx_clk(cmac_gt_rxusrclk2),
        .rx_resetn_out(cmac_control_ex_0_rx_resetn_out),
        .stat_rx_aligned(cmac_stat_rx_stat_rx_aligned),
        .sync_rx_aligned(cmac_control_ex_0_sync_rx_aligned),
        .sys_reset_out(cmac_control_ex_0_sys_reset_out),
        .sys_resetn_in(sys_resetn_1),
        .tx_diff(tx_diff_1),
        .tx_post(tx_post_1),
        .tx_pre(tx_pre_1));
  ila_imp_18X5XRU ila
       (.M_AXIS_RX_tdata(ila_M_AXIS_RX_TDATA),
        .M_AXIS_RX_tkeep(ila_M_AXIS_RX_TKEEP),
        .M_AXIS_RX_tlast(ila_M_AXIS_RX_TLAST),
        .M_AXIS_RX_tuser(ila_M_AXIS_RX_TUSER),
        .M_AXIS_RX_tvalid(ila_M_AXIS_RX_TVALID),
        .M_AXIS_TX_tdata(ila_M_AXIS_TX_TDATA),
        .M_AXIS_TX_tkeep(ila_M_AXIS_TX_TKEEP),
        .M_AXIS_TX_tlast(ila_M_AXIS_TX_TLAST),
        .M_AXIS_TX_tready(ila_M_AXIS_TX_TREADY),
        .M_AXIS_TX_tuser(ila_M_AXIS_TX_TUSER),
        .M_AXIS_TX_tvalid(ila_M_AXIS_TX_TVALID),
        .S_AXIS_RX_tdata(S_AXIS_RX_1_TDATA),
        .S_AXIS_RX_tkeep(S_AXIS_RX_1_TKEEP),
        .S_AXIS_RX_tlast(S_AXIS_RX_1_TLAST),
        .S_AXIS_RX_tuser(S_AXIS_RX_1_TUSER),
        .S_AXIS_RX_tvalid(S_AXIS_RX_1_TVALID),
        .S_AXIS_TX_tdata(axis_tx_1_TDATA),
        .S_AXIS_TX_tkeep(axis_tx_1_TKEEP),
        .S_AXIS_TX_tlast(axis_tx_1_TLAST),
        .S_AXIS_TX_tready(axis_tx_1_TREADY),
        .S_AXIS_TX_tuser(axis_tx_1_TUSER),
        .S_AXIS_TX_tvalid(axis_tx_1_TVALID),
        .stream_clk(cmac_gt_rxusrclk2));
endmodule

module ila_imp_18X5XRU
   (M_AXIS_RX_tdata,
    M_AXIS_RX_tkeep,
    M_AXIS_RX_tlast,
    M_AXIS_RX_tuser,
    M_AXIS_RX_tvalid,
    M_AXIS_TX_tdata,
    M_AXIS_TX_tkeep,
    M_AXIS_TX_tlast,
    M_AXIS_TX_tready,
    M_AXIS_TX_tuser,
    M_AXIS_TX_tvalid,
    S_AXIS_RX_tdata,
    S_AXIS_RX_tkeep,
    S_AXIS_RX_tlast,
    S_AXIS_RX_tuser,
    S_AXIS_RX_tvalid,
    S_AXIS_TX_tdata,
    S_AXIS_TX_tkeep,
    S_AXIS_TX_tlast,
    S_AXIS_TX_tready,
    S_AXIS_TX_tuser,
    S_AXIS_TX_tvalid,
    stream_clk);
  output [511:0]M_AXIS_RX_tdata;
  output [63:0]M_AXIS_RX_tkeep;
  output M_AXIS_RX_tlast;
  output M_AXIS_RX_tuser;
  output M_AXIS_RX_tvalid;
  output [511:0]M_AXIS_TX_tdata;
  output [63:0]M_AXIS_TX_tkeep;
  output M_AXIS_TX_tlast;
  input M_AXIS_TX_tready;
  output [0:0]M_AXIS_TX_tuser;
  output M_AXIS_TX_tvalid;
  input [511:0]S_AXIS_RX_tdata;
  input [63:0]S_AXIS_RX_tkeep;
  input S_AXIS_RX_tlast;
  input [0:0]S_AXIS_RX_tuser;
  input S_AXIS_RX_tvalid;
  input [511:0]S_AXIS_TX_tdata;
  input [63:0]S_AXIS_TX_tkeep;
  input S_AXIS_TX_tlast;
  output S_AXIS_TX_tready;
  input S_AXIS_TX_tuser;
  input S_AXIS_TX_tvalid;
  input stream_clk;

  wire [511:0]S_AXIS_RX_1_TDATA;
  wire [63:0]S_AXIS_RX_1_TKEEP;
  wire S_AXIS_RX_1_TLAST;
  wire [0:0]S_AXIS_RX_1_TUSER;
  wire S_AXIS_RX_1_TVALID;
  wire [511:0]S_AXIS_TX_1_TDATA;
  wire [63:0]S_AXIS_TX_1_TKEEP;
  wire S_AXIS_TX_1_TLAST;
  wire S_AXIS_TX_1_TREADY;
  wire S_AXIS_TX_1_TUSER;
  wire S_AXIS_TX_1_TVALID;
  (* CONN_BUS_INFO = "axis_register_slice_0_M_AXIS xilinx.com:interface:axis:1.0 None TDATA" *) (* DONT_TOUCH *) wire [511:0]axis_register_slice_0_M_AXIS_TDATA;
  (* CONN_BUS_INFO = "axis_register_slice_0_M_AXIS xilinx.com:interface:axis:1.0 None TKEEP" *) (* DONT_TOUCH *) wire [63:0]axis_register_slice_0_M_AXIS_TKEEP;
  (* CONN_BUS_INFO = "axis_register_slice_0_M_AXIS xilinx.com:interface:axis:1.0 None TLAST" *) (* DONT_TOUCH *) wire axis_register_slice_0_M_AXIS_TLAST;
  (* CONN_BUS_INFO = "axis_register_slice_0_M_AXIS xilinx.com:interface:axis:1.0 None TREADY" *) (* DONT_TOUCH *) wire axis_register_slice_0_M_AXIS_TREADY;
  (* CONN_BUS_INFO = "axis_register_slice_0_M_AXIS xilinx.com:interface:axis:1.0 None TUSER" *) (* DONT_TOUCH *) wire [0:0]axis_register_slice_0_M_AXIS_TUSER;
  (* CONN_BUS_INFO = "axis_register_slice_0_M_AXIS xilinx.com:interface:axis:1.0 None TVALID" *) (* DONT_TOUCH *) wire axis_register_slice_0_M_AXIS_TVALID;
  wire cmac_gt_rxusrclk2;
  (* CONN_BUS_INFO = "rx_register_slice_M_AXIS xilinx.com:interface:axis:1.0 None TDATA" *) (* DONT_TOUCH *) wire [511:0]rx_register_slice_M_AXIS_TDATA;
  (* CONN_BUS_INFO = "rx_register_slice_M_AXIS xilinx.com:interface:axis:1.0 None TKEEP" *) (* DONT_TOUCH *) wire [63:0]rx_register_slice_M_AXIS_TKEEP;
  (* CONN_BUS_INFO = "rx_register_slice_M_AXIS xilinx.com:interface:axis:1.0 None TLAST" *) (* DONT_TOUCH *) wire rx_register_slice_M_AXIS_TLAST;
  (* CONN_BUS_INFO = "rx_register_slice_M_AXIS xilinx.com:interface:axis:1.0 None TUSER" *) (* DONT_TOUCH *) wire [0:0]rx_register_slice_M_AXIS_TUSER;
  (* CONN_BUS_INFO = "rx_register_slice_M_AXIS xilinx.com:interface:axis:1.0 None TVALID" *) (* DONT_TOUCH *) wire rx_register_slice_M_AXIS_TVALID;

  assign M_AXIS_RX_tdata[511:0] = rx_register_slice_M_AXIS_TDATA;
  assign M_AXIS_RX_tkeep[63:0] = rx_register_slice_M_AXIS_TKEEP;
  assign M_AXIS_RX_tlast = rx_register_slice_M_AXIS_TLAST;
  assign M_AXIS_RX_tuser = rx_register_slice_M_AXIS_TUSER;
  assign M_AXIS_RX_tvalid = rx_register_slice_M_AXIS_TVALID;
  assign M_AXIS_TX_tdata[511:0] = axis_register_slice_0_M_AXIS_TDATA;
  assign M_AXIS_TX_tkeep[63:0] = axis_register_slice_0_M_AXIS_TKEEP;
  assign M_AXIS_TX_tlast = axis_register_slice_0_M_AXIS_TLAST;
  assign M_AXIS_TX_tuser[0] = axis_register_slice_0_M_AXIS_TUSER;
  assign M_AXIS_TX_tvalid = axis_register_slice_0_M_AXIS_TVALID;
  assign S_AXIS_RX_1_TDATA = S_AXIS_RX_tdata[511:0];
  assign S_AXIS_RX_1_TKEEP = S_AXIS_RX_tkeep[63:0];
  assign S_AXIS_RX_1_TLAST = S_AXIS_RX_tlast;
  assign S_AXIS_RX_1_TUSER = S_AXIS_RX_tuser[0];
  assign S_AXIS_RX_1_TVALID = S_AXIS_RX_tvalid;
  assign S_AXIS_TX_1_TDATA = S_AXIS_TX_tdata[511:0];
  assign S_AXIS_TX_1_TKEEP = S_AXIS_TX_tkeep[63:0];
  assign S_AXIS_TX_1_TLAST = S_AXIS_TX_tlast;
  assign S_AXIS_TX_1_TUSER = S_AXIS_TX_tuser;
  assign S_AXIS_TX_1_TVALID = S_AXIS_TX_tvalid;
  assign S_AXIS_TX_tready = S_AXIS_TX_1_TREADY;
  assign axis_register_slice_0_M_AXIS_TREADY = M_AXIS_TX_tready;
  assign cmac_gt_rxusrclk2 = stream_clk;
  top_level_rx_register_slice_0 rx_register_slice
       (.aclk(cmac_gt_rxusrclk2),
        .aresetn(1'b1),
        .m_axis_tdata(rx_register_slice_M_AXIS_TDATA),
        .m_axis_tkeep(rx_register_slice_M_AXIS_TKEEP),
        .m_axis_tlast(rx_register_slice_M_AXIS_TLAST),
        .m_axis_tuser(rx_register_slice_M_AXIS_TUSER),
        .m_axis_tvalid(rx_register_slice_M_AXIS_TVALID),
        .s_axis_tdata(S_AXIS_RX_1_TDATA),
        .s_axis_tkeep(S_AXIS_RX_1_TKEEP),
        .s_axis_tlast(S_AXIS_RX_1_TLAST),
        .s_axis_tuser(S_AXIS_RX_1_TUSER),
        .s_axis_tvalid(S_AXIS_RX_1_TVALID));
  top_level_system_ila_2 system_ila
       (.SLOT_0_AXIS_tdata(axis_register_slice_0_M_AXIS_TDATA),
        .SLOT_0_AXIS_tkeep(axis_register_slice_0_M_AXIS_TKEEP),
        .SLOT_0_AXIS_tlast(axis_register_slice_0_M_AXIS_TLAST),
        .SLOT_0_AXIS_tready(axis_register_slice_0_M_AXIS_TREADY),
        .SLOT_0_AXIS_tuser(axis_register_slice_0_M_AXIS_TUSER),
        .SLOT_0_AXIS_tvalid(axis_register_slice_0_M_AXIS_TVALID),
        .SLOT_1_AXIS_tdata(rx_register_slice_M_AXIS_TDATA),
        .SLOT_1_AXIS_tkeep(rx_register_slice_M_AXIS_TKEEP),
        .SLOT_1_AXIS_tlast(rx_register_slice_M_AXIS_TLAST),
        .SLOT_1_AXIS_tuser(rx_register_slice_M_AXIS_TUSER),
        .SLOT_1_AXIS_tvalid(rx_register_slice_M_AXIS_TVALID),
        .clk(cmac_gt_rxusrclk2),
        .resetn(1'b1));
  top_level_tx_register_slice_1 tx_register_slice
       (.aclk(cmac_gt_rxusrclk2),
        .aresetn(1'b1),
        .m_axis_tdata(axis_register_slice_0_M_AXIS_TDATA),
        .m_axis_tkeep(axis_register_slice_0_M_AXIS_TKEEP),
        .m_axis_tlast(axis_register_slice_0_M_AXIS_TLAST),
        .m_axis_tready(axis_register_slice_0_M_AXIS_TREADY),
        .m_axis_tuser(axis_register_slice_0_M_AXIS_TUSER),
        .m_axis_tvalid(axis_register_slice_0_M_AXIS_TVALID),
        .s_axis_tdata(S_AXIS_TX_1_TDATA),
        .s_axis_tkeep(S_AXIS_TX_1_TKEEP),
        .s_axis_tlast(S_AXIS_TX_1_TLAST),
        .s_axis_tready(S_AXIS_TX_1_TREADY),
        .s_axis_tuser(S_AXIS_TX_1_TUSER),
        .s_axis_tvalid(S_AXIS_TX_1_TVALID));
endmodule

module ila_imp_GWG18S
   (M_AXIS_RX_tdata,
    M_AXIS_RX_tkeep,
    M_AXIS_RX_tlast,
    M_AXIS_RX_tuser,
    M_AXIS_RX_tvalid,
    M_AXIS_TX_tdata,
    M_AXIS_TX_tkeep,
    M_AXIS_TX_tlast,
    M_AXIS_TX_tready,
    M_AXIS_TX_tuser,
    M_AXIS_TX_tvalid,
    S_AXIS_RX_tdata,
    S_AXIS_RX_tkeep,
    S_AXIS_RX_tlast,
    S_AXIS_RX_tuser,
    S_AXIS_RX_tvalid,
    S_AXIS_TX_tdata,
    S_AXIS_TX_tkeep,
    S_AXIS_TX_tlast,
    S_AXIS_TX_tready,
    S_AXIS_TX_tuser,
    S_AXIS_TX_tvalid,
    stream_clk);
  output [511:0]M_AXIS_RX_tdata;
  output [63:0]M_AXIS_RX_tkeep;
  output M_AXIS_RX_tlast;
  output M_AXIS_RX_tuser;
  output M_AXIS_RX_tvalid;
  output [511:0]M_AXIS_TX_tdata;
  output [63:0]M_AXIS_TX_tkeep;
  output M_AXIS_TX_tlast;
  input M_AXIS_TX_tready;
  output [0:0]M_AXIS_TX_tuser;
  output M_AXIS_TX_tvalid;
  input [511:0]S_AXIS_RX_tdata;
  input [63:0]S_AXIS_RX_tkeep;
  input S_AXIS_RX_tlast;
  input [0:0]S_AXIS_RX_tuser;
  input S_AXIS_RX_tvalid;
  input [511:0]S_AXIS_TX_tdata;
  input [63:0]S_AXIS_TX_tkeep;
  input S_AXIS_TX_tlast;
  output S_AXIS_TX_tready;
  input S_AXIS_TX_tuser;
  input S_AXIS_TX_tvalid;
  input stream_clk;

  wire [511:0]S_AXIS_RX_1_TDATA;
  wire [63:0]S_AXIS_RX_1_TKEEP;
  wire S_AXIS_RX_1_TLAST;
  wire [0:0]S_AXIS_RX_1_TUSER;
  wire S_AXIS_RX_1_TVALID;
  wire [511:0]S_AXIS_TX_1_TDATA;
  wire [63:0]S_AXIS_TX_1_TKEEP;
  wire S_AXIS_TX_1_TLAST;
  wire S_AXIS_TX_1_TREADY;
  wire S_AXIS_TX_1_TUSER;
  wire S_AXIS_TX_1_TVALID;
  (* CONN_BUS_INFO = "axis_register_slice_0_M_AXIS xilinx.com:interface:axis:1.0 None TDATA" *) (* DONT_TOUCH *) wire [511:0]axis_register_slice_0_M_AXIS_TDATA;
  (* CONN_BUS_INFO = "axis_register_slice_0_M_AXIS xilinx.com:interface:axis:1.0 None TKEEP" *) (* DONT_TOUCH *) wire [63:0]axis_register_slice_0_M_AXIS_TKEEP;
  (* CONN_BUS_INFO = "axis_register_slice_0_M_AXIS xilinx.com:interface:axis:1.0 None TLAST" *) (* DONT_TOUCH *) wire axis_register_slice_0_M_AXIS_TLAST;
  (* CONN_BUS_INFO = "axis_register_slice_0_M_AXIS xilinx.com:interface:axis:1.0 None TREADY" *) (* DONT_TOUCH *) wire axis_register_slice_0_M_AXIS_TREADY;
  (* CONN_BUS_INFO = "axis_register_slice_0_M_AXIS xilinx.com:interface:axis:1.0 None TUSER" *) (* DONT_TOUCH *) wire [0:0]axis_register_slice_0_M_AXIS_TUSER;
  (* CONN_BUS_INFO = "axis_register_slice_0_M_AXIS xilinx.com:interface:axis:1.0 None TVALID" *) (* DONT_TOUCH *) wire axis_register_slice_0_M_AXIS_TVALID;
  wire cmac_gt_rxusrclk2;
  (* CONN_BUS_INFO = "rx_register_slice_M_AXIS xilinx.com:interface:axis:1.0 None TDATA" *) (* DONT_TOUCH *) wire [511:0]rx_register_slice_M_AXIS_TDATA;
  (* CONN_BUS_INFO = "rx_register_slice_M_AXIS xilinx.com:interface:axis:1.0 None TKEEP" *) (* DONT_TOUCH *) wire [63:0]rx_register_slice_M_AXIS_TKEEP;
  (* CONN_BUS_INFO = "rx_register_slice_M_AXIS xilinx.com:interface:axis:1.0 None TLAST" *) (* DONT_TOUCH *) wire rx_register_slice_M_AXIS_TLAST;
  (* CONN_BUS_INFO = "rx_register_slice_M_AXIS xilinx.com:interface:axis:1.0 None TUSER" *) (* DONT_TOUCH *) wire [0:0]rx_register_slice_M_AXIS_TUSER;
  (* CONN_BUS_INFO = "rx_register_slice_M_AXIS xilinx.com:interface:axis:1.0 None TVALID" *) (* DONT_TOUCH *) wire rx_register_slice_M_AXIS_TVALID;

  assign M_AXIS_RX_tdata[511:0] = rx_register_slice_M_AXIS_TDATA;
  assign M_AXIS_RX_tkeep[63:0] = rx_register_slice_M_AXIS_TKEEP;
  assign M_AXIS_RX_tlast = rx_register_slice_M_AXIS_TLAST;
  assign M_AXIS_RX_tuser = rx_register_slice_M_AXIS_TUSER;
  assign M_AXIS_RX_tvalid = rx_register_slice_M_AXIS_TVALID;
  assign M_AXIS_TX_tdata[511:0] = axis_register_slice_0_M_AXIS_TDATA;
  assign M_AXIS_TX_tkeep[63:0] = axis_register_slice_0_M_AXIS_TKEEP;
  assign M_AXIS_TX_tlast = axis_register_slice_0_M_AXIS_TLAST;
  assign M_AXIS_TX_tuser[0] = axis_register_slice_0_M_AXIS_TUSER;
  assign M_AXIS_TX_tvalid = axis_register_slice_0_M_AXIS_TVALID;
  assign S_AXIS_RX_1_TDATA = S_AXIS_RX_tdata[511:0];
  assign S_AXIS_RX_1_TKEEP = S_AXIS_RX_tkeep[63:0];
  assign S_AXIS_RX_1_TLAST = S_AXIS_RX_tlast;
  assign S_AXIS_RX_1_TUSER = S_AXIS_RX_tuser[0];
  assign S_AXIS_RX_1_TVALID = S_AXIS_RX_tvalid;
  assign S_AXIS_TX_1_TDATA = S_AXIS_TX_tdata[511:0];
  assign S_AXIS_TX_1_TKEEP = S_AXIS_TX_tkeep[63:0];
  assign S_AXIS_TX_1_TLAST = S_AXIS_TX_tlast;
  assign S_AXIS_TX_1_TUSER = S_AXIS_TX_tuser;
  assign S_AXIS_TX_1_TVALID = S_AXIS_TX_tvalid;
  assign S_AXIS_TX_tready = S_AXIS_TX_1_TREADY;
  assign axis_register_slice_0_M_AXIS_TREADY = M_AXIS_TX_tready;
  assign cmac_gt_rxusrclk2 = stream_clk;
  top_level_tx_register_slice_0 rx_register_slice
       (.aclk(cmac_gt_rxusrclk2),
        .aresetn(1'b1),
        .m_axis_tdata(rx_register_slice_M_AXIS_TDATA),
        .m_axis_tkeep(rx_register_slice_M_AXIS_TKEEP),
        .m_axis_tlast(rx_register_slice_M_AXIS_TLAST),
        .m_axis_tuser(rx_register_slice_M_AXIS_TUSER),
        .m_axis_tvalid(rx_register_slice_M_AXIS_TVALID),
        .s_axis_tdata(S_AXIS_RX_1_TDATA),
        .s_axis_tkeep(S_AXIS_RX_1_TKEEP),
        .s_axis_tlast(S_AXIS_RX_1_TLAST),
        .s_axis_tuser(S_AXIS_RX_1_TUSER),
        .s_axis_tvalid(S_AXIS_RX_1_TVALID));
  top_level_system_ila_0_0 system_ila
       (.SLOT_0_AXIS_tdata(axis_register_slice_0_M_AXIS_TDATA),
        .SLOT_0_AXIS_tkeep(axis_register_slice_0_M_AXIS_TKEEP),
        .SLOT_0_AXIS_tlast(axis_register_slice_0_M_AXIS_TLAST),
        .SLOT_0_AXIS_tready(axis_register_slice_0_M_AXIS_TREADY),
        .SLOT_0_AXIS_tuser(axis_register_slice_0_M_AXIS_TUSER),
        .SLOT_0_AXIS_tvalid(axis_register_slice_0_M_AXIS_TVALID),
        .SLOT_1_AXIS_tdata(rx_register_slice_M_AXIS_TDATA),
        .SLOT_1_AXIS_tkeep(rx_register_slice_M_AXIS_TKEEP),
        .SLOT_1_AXIS_tlast(rx_register_slice_M_AXIS_TLAST),
        .SLOT_1_AXIS_tuser(rx_register_slice_M_AXIS_TUSER),
        .SLOT_1_AXIS_tvalid(rx_register_slice_M_AXIS_TVALID),
        .clk(cmac_gt_rxusrclk2),
        .resetn(1'b1));
  top_level_axis_register_slice_0_5 tx_register_slice
       (.aclk(cmac_gt_rxusrclk2),
        .aresetn(1'b1),
        .m_axis_tdata(axis_register_slice_0_M_AXIS_TDATA),
        .m_axis_tkeep(axis_register_slice_0_M_AXIS_TKEEP),
        .m_axis_tlast(axis_register_slice_0_M_AXIS_TLAST),
        .m_axis_tready(axis_register_slice_0_M_AXIS_TREADY),
        .m_axis_tuser(axis_register_slice_0_M_AXIS_TUSER),
        .m_axis_tvalid(axis_register_slice_0_M_AXIS_TVALID),
        .s_axis_tdata(S_AXIS_TX_1_TDATA),
        .s_axis_tkeep(S_AXIS_TX_1_TKEEP),
        .s_axis_tlast(S_AXIS_TX_1_TLAST),
        .s_axis_tready(S_AXIS_TX_1_TREADY),
        .s_axis_tuser(S_AXIS_TX_1_TUSER),
        .s_axis_tvalid(S_AXIS_TX_1_TVALID));
endmodule

module pcie_imp_P7FEFP
   (M_AXI_B_araddr,
    M_AXI_B_arburst,
    M_AXI_B_arcache,
    M_AXI_B_arid,
    M_AXI_B_arlen,
    M_AXI_B_arlock,
    M_AXI_B_arprot,
    M_AXI_B_arready,
    M_AXI_B_arsize,
    M_AXI_B_arvalid,
    M_AXI_B_awaddr,
    M_AXI_B_awburst,
    M_AXI_B_awcache,
    M_AXI_B_awid,
    M_AXI_B_awlen,
    M_AXI_B_awlock,
    M_AXI_B_awprot,
    M_AXI_B_awready,
    M_AXI_B_awsize,
    M_AXI_B_awvalid,
    M_AXI_B_bid,
    M_AXI_B_bready,
    M_AXI_B_bresp,
    M_AXI_B_bvalid,
    M_AXI_B_rdata,
    M_AXI_B_rid,
    M_AXI_B_rlast,
    M_AXI_B_rready,
    M_AXI_B_rresp,
    M_AXI_B_rvalid,
    M_AXI_B_wdata,
    M_AXI_B_wlast,
    M_AXI_B_wready,
    M_AXI_B_wstrb,
    M_AXI_B_wvalid,
    S_AXI_LITE_araddr,
    S_AXI_LITE_arprot,
    S_AXI_LITE_arready,
    S_AXI_LITE_arvalid,
    S_AXI_LITE_awaddr,
    S_AXI_LITE_awprot,
    S_AXI_LITE_awready,
    S_AXI_LITE_awvalid,
    S_AXI_LITE_bready,
    S_AXI_LITE_bresp,
    S_AXI_LITE_bvalid,
    S_AXI_LITE_rdata,
    S_AXI_LITE_rready,
    S_AXI_LITE_rresp,
    S_AXI_LITE_rvalid,
    S_AXI_LITE_wdata,
    S_AXI_LITE_wready,
    S_AXI_LITE_wstrb,
    S_AXI_LITE_wvalid,
    axi_aclk,
    axi_aresetn,
    led_pcie_link_up,
    pcie_mgt_rxn,
    pcie_mgt_rxp,
    pcie_mgt_txn,
    pcie_mgt_txp,
    pcie_refclk_clk_n,
    pcie_refclk_clk_p);
  output [63:0]M_AXI_B_araddr;
  output [1:0]M_AXI_B_arburst;
  output [3:0]M_AXI_B_arcache;
  output [3:0]M_AXI_B_arid;
  output [7:0]M_AXI_B_arlen;
  output [0:0]M_AXI_B_arlock;
  output [2:0]M_AXI_B_arprot;
  input M_AXI_B_arready;
  output [2:0]M_AXI_B_arsize;
  output M_AXI_B_arvalid;
  output [63:0]M_AXI_B_awaddr;
  output [1:0]M_AXI_B_awburst;
  output [3:0]M_AXI_B_awcache;
  output [3:0]M_AXI_B_awid;
  output [7:0]M_AXI_B_awlen;
  output [0:0]M_AXI_B_awlock;
  output [2:0]M_AXI_B_awprot;
  input M_AXI_B_awready;
  output [2:0]M_AXI_B_awsize;
  output M_AXI_B_awvalid;
  input [3:0]M_AXI_B_bid;
  output M_AXI_B_bready;
  input [1:0]M_AXI_B_bresp;
  input M_AXI_B_bvalid;
  input [511:0]M_AXI_B_rdata;
  input [3:0]M_AXI_B_rid;
  input M_AXI_B_rlast;
  output M_AXI_B_rready;
  input [1:0]M_AXI_B_rresp;
  input M_AXI_B_rvalid;
  output [511:0]M_AXI_B_wdata;
  output M_AXI_B_wlast;
  input M_AXI_B_wready;
  output [63:0]M_AXI_B_wstrb;
  output M_AXI_B_wvalid;
  input [31:0]S_AXI_LITE_araddr;
  input [2:0]S_AXI_LITE_arprot;
  output S_AXI_LITE_arready;
  input S_AXI_LITE_arvalid;
  input [31:0]S_AXI_LITE_awaddr;
  input [2:0]S_AXI_LITE_awprot;
  output S_AXI_LITE_awready;
  input S_AXI_LITE_awvalid;
  input S_AXI_LITE_bready;
  output [1:0]S_AXI_LITE_bresp;
  output S_AXI_LITE_bvalid;
  output [31:0]S_AXI_LITE_rdata;
  input S_AXI_LITE_rready;
  output [1:0]S_AXI_LITE_rresp;
  output S_AXI_LITE_rvalid;
  input [31:0]S_AXI_LITE_wdata;
  output S_AXI_LITE_wready;
  input [3:0]S_AXI_LITE_wstrb;
  input S_AXI_LITE_wvalid;
  output axi_aclk;
  output [0:0]axi_aresetn;
  output led_pcie_link_up;
  input [15:0]pcie_mgt_rxn;
  input [15:0]pcie_mgt_rxp;
  output [15:0]pcie_mgt_txn;
  output [15:0]pcie_mgt_txp;
  input [0:0]pcie_refclk_clk_n;
  input [0:0]pcie_refclk_clk_p;

  wire [0:0]Conn1_CLK_N;
  wire [0:0]Conn1_CLK_P;
  wire [0:0]bridge_input_clock_IBUF_DS_ODIV2;
  wire [0:0]bridge_input_clock_IBUF_OUT;
  wire [0:0]one_dout;
  wire pcie_bridge_axi_aresetn;
  wire [0:0]proc_sys_reset_0_peripheral_aresetn;
  wire [31:0]smartconnect_0_M01_AXI_ARADDR;
  wire [2:0]smartconnect_0_M01_AXI_ARPROT;
  wire smartconnect_0_M01_AXI_ARREADY;
  wire smartconnect_0_M01_AXI_ARVALID;
  wire [31:0]smartconnect_0_M01_AXI_AWADDR;
  wire [2:0]smartconnect_0_M01_AXI_AWPROT;
  wire smartconnect_0_M01_AXI_AWREADY;
  wire smartconnect_0_M01_AXI_AWVALID;
  wire smartconnect_0_M01_AXI_BREADY;
  wire [1:0]smartconnect_0_M01_AXI_BRESP;
  wire smartconnect_0_M01_AXI_BVALID;
  wire [31:0]smartconnect_0_M01_AXI_RDATA;
  wire smartconnect_0_M01_AXI_RREADY;
  wire [1:0]smartconnect_0_M01_AXI_RRESP;
  wire smartconnect_0_M01_AXI_RVALID;
  wire [31:0]smartconnect_0_M01_AXI_WDATA;
  wire smartconnect_0_M01_AXI_WREADY;
  wire [3:0]smartconnect_0_M01_AXI_WSTRB;
  wire smartconnect_0_M01_AXI_WVALID;
  wire [63:0]xdma_0_M_AXI_B_ARADDR;
  wire [1:0]xdma_0_M_AXI_B_ARBURST;
  wire [3:0]xdma_0_M_AXI_B_ARCACHE;
  wire [3:0]xdma_0_M_AXI_B_ARID;
  wire [7:0]xdma_0_M_AXI_B_ARLEN;
  wire xdma_0_M_AXI_B_ARLOCK;
  wire [2:0]xdma_0_M_AXI_B_ARPROT;
  wire xdma_0_M_AXI_B_ARREADY;
  wire [2:0]xdma_0_M_AXI_B_ARSIZE;
  wire xdma_0_M_AXI_B_ARVALID;
  wire [63:0]xdma_0_M_AXI_B_AWADDR;
  wire [1:0]xdma_0_M_AXI_B_AWBURST;
  wire [3:0]xdma_0_M_AXI_B_AWCACHE;
  wire [3:0]xdma_0_M_AXI_B_AWID;
  wire [7:0]xdma_0_M_AXI_B_AWLEN;
  wire xdma_0_M_AXI_B_AWLOCK;
  wire [2:0]xdma_0_M_AXI_B_AWPROT;
  wire xdma_0_M_AXI_B_AWREADY;
  wire [2:0]xdma_0_M_AXI_B_AWSIZE;
  wire xdma_0_M_AXI_B_AWVALID;
  wire [3:0]xdma_0_M_AXI_B_BID;
  wire xdma_0_M_AXI_B_BREADY;
  wire [1:0]xdma_0_M_AXI_B_BRESP;
  wire xdma_0_M_AXI_B_BVALID;
  wire [511:0]xdma_0_M_AXI_B_RDATA;
  wire [3:0]xdma_0_M_AXI_B_RID;
  wire xdma_0_M_AXI_B_RLAST;
  wire xdma_0_M_AXI_B_RREADY;
  wire [1:0]xdma_0_M_AXI_B_RRESP;
  wire xdma_0_M_AXI_B_RVALID;
  wire [511:0]xdma_0_M_AXI_B_WDATA;
  wire xdma_0_M_AXI_B_WLAST;
  wire xdma_0_M_AXI_B_WREADY;
  wire [63:0]xdma_0_M_AXI_B_WSTRB;
  wire xdma_0_M_AXI_B_WVALID;
  wire xdma_0_axi_aclk;
  wire [15:0]xdma_0_pcie_mgt_rxn;
  wire [15:0]xdma_0_pcie_mgt_rxp;
  wire [15:0]xdma_0_pcie_mgt_txn;
  wire [15:0]xdma_0_pcie_mgt_txp;
  wire xdma_0_user_lnk_up;

  assign Conn1_CLK_N = pcie_refclk_clk_n[0];
  assign Conn1_CLK_P = pcie_refclk_clk_p[0];
  assign M_AXI_B_araddr[63:0] = xdma_0_M_AXI_B_ARADDR;
  assign M_AXI_B_arburst[1:0] = xdma_0_M_AXI_B_ARBURST;
  assign M_AXI_B_arcache[3:0] = xdma_0_M_AXI_B_ARCACHE;
  assign M_AXI_B_arid[3:0] = xdma_0_M_AXI_B_ARID;
  assign M_AXI_B_arlen[7:0] = xdma_0_M_AXI_B_ARLEN;
  assign M_AXI_B_arlock[0] = xdma_0_M_AXI_B_ARLOCK;
  assign M_AXI_B_arprot[2:0] = xdma_0_M_AXI_B_ARPROT;
  assign M_AXI_B_arsize[2:0] = xdma_0_M_AXI_B_ARSIZE;
  assign M_AXI_B_arvalid = xdma_0_M_AXI_B_ARVALID;
  assign M_AXI_B_awaddr[63:0] = xdma_0_M_AXI_B_AWADDR;
  assign M_AXI_B_awburst[1:0] = xdma_0_M_AXI_B_AWBURST;
  assign M_AXI_B_awcache[3:0] = xdma_0_M_AXI_B_AWCACHE;
  assign M_AXI_B_awid[3:0] = xdma_0_M_AXI_B_AWID;
  assign M_AXI_B_awlen[7:0] = xdma_0_M_AXI_B_AWLEN;
  assign M_AXI_B_awlock[0] = xdma_0_M_AXI_B_AWLOCK;
  assign M_AXI_B_awprot[2:0] = xdma_0_M_AXI_B_AWPROT;
  assign M_AXI_B_awsize[2:0] = xdma_0_M_AXI_B_AWSIZE;
  assign M_AXI_B_awvalid = xdma_0_M_AXI_B_AWVALID;
  assign M_AXI_B_bready = xdma_0_M_AXI_B_BREADY;
  assign M_AXI_B_rready = xdma_0_M_AXI_B_RREADY;
  assign M_AXI_B_wdata[511:0] = xdma_0_M_AXI_B_WDATA;
  assign M_AXI_B_wlast = xdma_0_M_AXI_B_WLAST;
  assign M_AXI_B_wstrb[63:0] = xdma_0_M_AXI_B_WSTRB;
  assign M_AXI_B_wvalid = xdma_0_M_AXI_B_WVALID;
  assign S_AXI_LITE_arready = smartconnect_0_M01_AXI_ARREADY;
  assign S_AXI_LITE_awready = smartconnect_0_M01_AXI_AWREADY;
  assign S_AXI_LITE_bresp[1:0] = smartconnect_0_M01_AXI_BRESP;
  assign S_AXI_LITE_bvalid = smartconnect_0_M01_AXI_BVALID;
  assign S_AXI_LITE_rdata[31:0] = smartconnect_0_M01_AXI_RDATA;
  assign S_AXI_LITE_rresp[1:0] = smartconnect_0_M01_AXI_RRESP;
  assign S_AXI_LITE_rvalid = smartconnect_0_M01_AXI_RVALID;
  assign S_AXI_LITE_wready = smartconnect_0_M01_AXI_WREADY;
  assign axi_aclk = xdma_0_axi_aclk;
  assign axi_aresetn[0] = proc_sys_reset_0_peripheral_aresetn;
  assign led_pcie_link_up = xdma_0_user_lnk_up;
  assign pcie_mgt_txn[15:0] = xdma_0_pcie_mgt_txn;
  assign pcie_mgt_txp[15:0] = xdma_0_pcie_mgt_txp;
  assign smartconnect_0_M01_AXI_ARADDR = S_AXI_LITE_araddr[31:0];
  assign smartconnect_0_M01_AXI_ARPROT = S_AXI_LITE_arprot[2:0];
  assign smartconnect_0_M01_AXI_ARVALID = S_AXI_LITE_arvalid;
  assign smartconnect_0_M01_AXI_AWADDR = S_AXI_LITE_awaddr[31:0];
  assign smartconnect_0_M01_AXI_AWPROT = S_AXI_LITE_awprot[2:0];
  assign smartconnect_0_M01_AXI_AWVALID = S_AXI_LITE_awvalid;
  assign smartconnect_0_M01_AXI_BREADY = S_AXI_LITE_bready;
  assign smartconnect_0_M01_AXI_RREADY = S_AXI_LITE_rready;
  assign smartconnect_0_M01_AXI_WDATA = S_AXI_LITE_wdata[31:0];
  assign smartconnect_0_M01_AXI_WSTRB = S_AXI_LITE_wstrb[3:0];
  assign smartconnect_0_M01_AXI_WVALID = S_AXI_LITE_wvalid;
  assign xdma_0_M_AXI_B_ARREADY = M_AXI_B_arready;
  assign xdma_0_M_AXI_B_AWREADY = M_AXI_B_awready;
  assign xdma_0_M_AXI_B_BID = M_AXI_B_bid[3:0];
  assign xdma_0_M_AXI_B_BRESP = M_AXI_B_bresp[1:0];
  assign xdma_0_M_AXI_B_BVALID = M_AXI_B_bvalid;
  assign xdma_0_M_AXI_B_RDATA = M_AXI_B_rdata[511:0];
  assign xdma_0_M_AXI_B_RID = M_AXI_B_rid[3:0];
  assign xdma_0_M_AXI_B_RLAST = M_AXI_B_rlast;
  assign xdma_0_M_AXI_B_RRESP = M_AXI_B_rresp[1:0];
  assign xdma_0_M_AXI_B_RVALID = M_AXI_B_rvalid;
  assign xdma_0_M_AXI_B_WREADY = M_AXI_B_wready;
  assign xdma_0_pcie_mgt_rxn = pcie_mgt_rxn[15:0];
  assign xdma_0_pcie_mgt_rxp = pcie_mgt_rxp[15:0];
  top_level_util_ds_buf_0_0 bridge_input_clock
       (.IBUF_DS_N(Conn1_CLK_N),
        .IBUF_DS_ODIV2(bridge_input_clock_IBUF_DS_ODIV2),
        .IBUF_DS_P(Conn1_CLK_P),
        .IBUF_OUT(bridge_input_clock_IBUF_OUT));
  top_level_xlconstant_0_0 one
       (.dout(one_dout));
  top_level_xdma_0_0 pcie_bridge
       (.axi_aclk(xdma_0_axi_aclk),
        .axi_aresetn(pcie_bridge_axi_aresetn),
        .m_axib_araddr(xdma_0_M_AXI_B_ARADDR),
        .m_axib_arburst(xdma_0_M_AXI_B_ARBURST),
        .m_axib_arcache(xdma_0_M_AXI_B_ARCACHE),
        .m_axib_arid(xdma_0_M_AXI_B_ARID),
        .m_axib_arlen(xdma_0_M_AXI_B_ARLEN),
        .m_axib_arlock(xdma_0_M_AXI_B_ARLOCK),
        .m_axib_arprot(xdma_0_M_AXI_B_ARPROT),
        .m_axib_arready(xdma_0_M_AXI_B_ARREADY),
        .m_axib_arsize(xdma_0_M_AXI_B_ARSIZE),
        .m_axib_arvalid(xdma_0_M_AXI_B_ARVALID),
        .m_axib_awaddr(xdma_0_M_AXI_B_AWADDR),
        .m_axib_awburst(xdma_0_M_AXI_B_AWBURST),
        .m_axib_awcache(xdma_0_M_AXI_B_AWCACHE),
        .m_axib_awid(xdma_0_M_AXI_B_AWID),
        .m_axib_awlen(xdma_0_M_AXI_B_AWLEN),
        .m_axib_awlock(xdma_0_M_AXI_B_AWLOCK),
        .m_axib_awprot(xdma_0_M_AXI_B_AWPROT),
        .m_axib_awready(xdma_0_M_AXI_B_AWREADY),
        .m_axib_awsize(xdma_0_M_AXI_B_AWSIZE),
        .m_axib_awvalid(xdma_0_M_AXI_B_AWVALID),
        .m_axib_bid(xdma_0_M_AXI_B_BID),
        .m_axib_bready(xdma_0_M_AXI_B_BREADY),
        .m_axib_bresp(xdma_0_M_AXI_B_BRESP),
        .m_axib_bvalid(xdma_0_M_AXI_B_BVALID),
        .m_axib_rdata(xdma_0_M_AXI_B_RDATA),
        .m_axib_rid(xdma_0_M_AXI_B_RID),
        .m_axib_rlast(xdma_0_M_AXI_B_RLAST),
        .m_axib_rready(xdma_0_M_AXI_B_RREADY),
        .m_axib_rresp(xdma_0_M_AXI_B_RRESP),
        .m_axib_rvalid(xdma_0_M_AXI_B_RVALID),
        .m_axib_wdata(xdma_0_M_AXI_B_WDATA),
        .m_axib_wlast(xdma_0_M_AXI_B_WLAST),
        .m_axib_wready(xdma_0_M_AXI_B_WREADY),
        .m_axib_wstrb(xdma_0_M_AXI_B_WSTRB),
        .m_axib_wvalid(xdma_0_M_AXI_B_WVALID),
        .pci_exp_rxn(xdma_0_pcie_mgt_rxn),
        .pci_exp_rxp(xdma_0_pcie_mgt_rxp),
        .pci_exp_txn(xdma_0_pcie_mgt_txn),
        .pci_exp_txp(xdma_0_pcie_mgt_txp),
        .s_axil_araddr(smartconnect_0_M01_AXI_ARADDR),
        .s_axil_arprot(smartconnect_0_M01_AXI_ARPROT),
        .s_axil_arready(smartconnect_0_M01_AXI_ARREADY),
        .s_axil_arvalid(smartconnect_0_M01_AXI_ARVALID),
        .s_axil_awaddr(smartconnect_0_M01_AXI_AWADDR),
        .s_axil_awprot(smartconnect_0_M01_AXI_AWPROT),
        .s_axil_awready(smartconnect_0_M01_AXI_AWREADY),
        .s_axil_awvalid(smartconnect_0_M01_AXI_AWVALID),
        .s_axil_bready(smartconnect_0_M01_AXI_BREADY),
        .s_axil_bresp(smartconnect_0_M01_AXI_BRESP),
        .s_axil_bvalid(smartconnect_0_M01_AXI_BVALID),
        .s_axil_rdata(smartconnect_0_M01_AXI_RDATA),
        .s_axil_rready(smartconnect_0_M01_AXI_RREADY),
        .s_axil_rresp(smartconnect_0_M01_AXI_RRESP),
        .s_axil_rvalid(smartconnect_0_M01_AXI_RVALID),
        .s_axil_wdata(smartconnect_0_M01_AXI_WDATA),
        .s_axil_wready(smartconnect_0_M01_AXI_WREADY),
        .s_axil_wstrb(smartconnect_0_M01_AXI_WSTRB),
        .s_axil_wvalid(smartconnect_0_M01_AXI_WVALID),
        .sys_clk(bridge_input_clock_IBUF_DS_ODIV2),
        .sys_clk_gt(bridge_input_clock_IBUF_OUT),
        .sys_rst_n(one_dout),
        .user_lnk_up(xdma_0_user_lnk_up),
        .usr_irq_req(1'b0));
  top_level_proc_sys_reset_0_1 reset_extender
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(pcie_bridge_axi_aresetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .slowest_sync_clk(xdma_0_axi_aclk));
endmodule

(* CORE_GENERATION_INFO = "top_level,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=top_level,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=36,numReposBlks=28,numNonXlnxBlks=0,numHierBlks=8,maxHierDepth=2,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=13,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=4,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "top_level.hwdef" *) 
module top_level
   (init_clk,
    led_green_l,
    led_orange_l,
    pcie_mgt_rxn,
    pcie_mgt_rxp,
    pcie_mgt_txn,
    pcie_mgt_txp,
    pcie_refclk_clk_n,
    pcie_refclk_clk_p,
    qsfp0_clk_clk_n,
    qsfp0_clk_clk_p,
    qsfp0_gt_grx_n,
    qsfp0_gt_grx_p,
    qsfp0_gt_gtx_n,
    qsfp0_gt_gtx_p,
    qsfp1_clk_clk_n,
    qsfp1_clk_clk_p,
    qsfp1_gt_grx_n,
    qsfp1_gt_grx_p,
    qsfp1_gt_gtx_n,
    qsfp1_gt_gtx_p,
    qsfp_lp,
    qsfp_present_l,
    qsfp_rst_l);
  input init_clk;
  output [3:0]led_green_l;
  output [3:0]led_orange_l;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt rxn" *) input [15:0]pcie_mgt_rxn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt rxp" *) input [15:0]pcie_mgt_rxp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt txn" *) output [15:0]pcie_mgt_txn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt txp" *) output [15:0]pcie_mgt_txp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 pcie_refclk CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pcie_refclk, CAN_DEBUG false, FREQ_HZ 100000000" *) input [0:0]pcie_refclk_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 pcie_refclk CLK_P" *) input [0:0]pcie_refclk_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 qsfp0_clk CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME qsfp0_clk, CAN_DEBUG false, FREQ_HZ 322265625" *) input qsfp0_clk_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 qsfp0_clk CLK_P" *) input qsfp0_clk_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp0_gt GRX_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME qsfp0_gt, CAN_DEBUG false" *) input [3:0]qsfp0_gt_grx_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp0_gt GRX_P" *) input [3:0]qsfp0_gt_grx_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp0_gt GTX_N" *) output [3:0]qsfp0_gt_gtx_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp0_gt GTX_P" *) output [3:0]qsfp0_gt_gtx_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 qsfp1_clk CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME qsfp1_clk, CAN_DEBUG false, FREQ_HZ 322265625" *) input qsfp1_clk_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 qsfp1_clk CLK_P" *) input qsfp1_clk_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp1_gt GRX_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME qsfp1_gt, CAN_DEBUG false" *) input [3:0]qsfp1_gt_grx_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp1_gt GRX_P" *) input [3:0]qsfp1_gt_grx_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp1_gt GTX_N" *) output [3:0]qsfp1_gt_gtx_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp1_gt GTX_P" *) output [3:0]qsfp1_gt_gtx_p;
  output [1:0]qsfp_lp;
  input [1:0]qsfp_present_l;
  output [1:0]qsfp_rst_l;

  wire [511:0]AXIS_IN_0_1_TDATA;
  wire [63:0]AXIS_IN_0_1_TKEEP;
  wire AXIS_IN_0_1_TLAST;
  wire AXIS_IN_0_1_TREADY;
  wire AXIS_IN_0_1_TVALID;
  wire [511:0]AXIS_IN_1_1_TDATA;
  wire [63:0]AXIS_IN_1_1_TKEEP;
  wire AXIS_IN_1_1_TLAST;
  wire AXIS_IN_1_1_TREADY;
  wire AXIS_IN_1_1_TVALID;
  wire [511:0]cabletest_AXIS_OUT_0_TDATA;
  wire [63:0]cabletest_AXIS_OUT_0_TKEEP;
  wire cabletest_AXIS_OUT_0_TLAST;
  wire cabletest_AXIS_OUT_0_TREADY;
  wire cabletest_AXIS_OUT_0_TVALID;
  wire [511:0]cabletest_AXIS_OUT_1_TDATA;
  wire [63:0]cabletest_AXIS_OUT_1_TKEEP;
  wire cabletest_AXIS_OUT_1_TLAST;
  wire cabletest_AXIS_OUT_1_TREADY;
  wire cabletest_AXIS_OUT_1_TVALID;
  wire [4:0]cabletest_CMAC_TXDIFF;
  wire [4:0]cabletest_CMAC_TXPOST;
  wire [4:0]cabletest_CMAC_TXPRE;
  wire cabletest_RSFEC_ENABLE;
  wire cabletest_resetn_out;
  wire [511:0]cmac_cdc_cmac0_tx_TDATA;
  wire [63:0]cmac_cdc_cmac0_tx_TKEEP;
  wire cmac_cdc_cmac0_tx_TLAST;
  wire cmac_cdc_cmac0_tx_TREADY;
  wire cmac_cdc_cmac0_tx_TUSER;
  wire cmac_cdc_cmac0_tx_TVALID;
  wire [511:0]cmac_cdc_cmac1_tx_TDATA;
  wire [63:0]cmac_cdc_cmac1_tx_TKEEP;
  wire cmac_cdc_cmac1_tx_TLAST;
  wire cmac_cdc_cmac1_tx_TREADY;
  wire cmac_cdc_cmac1_tx_TUSER;
  wire cmac_cdc_cmac1_tx_TVALID;
  wire cmac_cdc_user0_aligned;
  wire cmac_cdc_user1_aligned;
  wire [3:0]cmac_usplus_0_gt_serial_port_GRX_N;
  wire [3:0]cmac_usplus_0_gt_serial_port_GRX_P;
  wire [3:0]cmac_usplus_0_gt_serial_port_GTX_N;
  wire [3:0]cmac_usplus_0_gt_serial_port_GTX_P;
  wire [511:0]eth_0_axis_rx_TDATA;
  wire [63:0]eth_0_axis_rx_TKEEP;
  wire eth_0_axis_rx_TLAST;
  wire eth_0_axis_rx_TUSER;
  wire eth_0_axis_rx_TVALID;
  wire eth_0_stat_rx_aligned_0;
  wire eth_0_stream_clk;
  wire eth_0_stream_resetn;
  wire [511:0]eth_1_axis_rx_TDATA;
  wire [63:0]eth_1_axis_rx_TKEEP;
  wire eth_1_axis_rx_TLAST;
  wire eth_1_axis_rx_TUSER;
  wire eth_1_axis_rx_TVALID;
  wire [3:0]eth_1_qsfp_gt_GRX_N;
  wire [3:0]eth_1_qsfp_gt_GRX_P;
  wire [3:0]eth_1_qsfp_gt_GTX_N;
  wire [3:0]eth_1_qsfp_gt_GTX_P;
  wire eth_1_stat_rx_aligned_0;
  wire eth_1_stream_clk;
  wire eth_1_stream_resetn;
  wire gt_ref_clk_0_1_CLK_N;
  wire gt_ref_clk_0_1_CLK_P;
  wire gt_ref_clk_0_2_CLK_N;
  wire gt_ref_clk_0_2_CLK_P;
  wire init_clk_0_1;
  wire [0:0]pcie_refclk_1_CLK_N;
  wire [0:0]pcie_refclk_1_CLK_P;
  wire [1:0]qsfp_ctrl_0_qsfp_lp_l;
  wire [1:0]qsfp_ctrl_0_qsfp_rst_l;
  wire [1:0]qsfp_present_l_0_1;
  wire [31:0]smartconnect_0_M01_AXI_ARADDR;
  wire [2:0]smartconnect_0_M01_AXI_ARPROT;
  wire smartconnect_0_M01_AXI_ARREADY;
  wire smartconnect_0_M01_AXI_ARVALID;
  wire [31:0]smartconnect_0_M01_AXI_AWADDR;
  wire [2:0]smartconnect_0_M01_AXI_AWPROT;
  wire smartconnect_0_M01_AXI_AWREADY;
  wire smartconnect_0_M01_AXI_AWVALID;
  wire smartconnect_0_M01_AXI_BREADY;
  wire [1:0]smartconnect_0_M01_AXI_BRESP;
  wire smartconnect_0_M01_AXI_BVALID;
  wire [31:0]smartconnect_0_M01_AXI_RDATA;
  wire smartconnect_0_M01_AXI_RREADY;
  wire [1:0]smartconnect_0_M01_AXI_RRESP;
  wire smartconnect_0_M01_AXI_RVALID;
  wire [31:0]smartconnect_0_M01_AXI_WDATA;
  wire smartconnect_0_M01_AXI_WREADY;
  wire [3:0]smartconnect_0_M01_AXI_WSTRB;
  wire smartconnect_0_M01_AXI_WVALID;
  wire [31:0]smartconnect_M00_AXI_ARADDR;
  wire smartconnect_M00_AXI_ARREADY;
  wire smartconnect_M00_AXI_ARVALID;
  wire [31:0]smartconnect_M00_AXI_AWADDR;
  wire smartconnect_M00_AXI_AWREADY;
  wire smartconnect_M00_AXI_AWVALID;
  wire smartconnect_M00_AXI_BREADY;
  wire [1:0]smartconnect_M00_AXI_BRESP;
  wire smartconnect_M00_AXI_BVALID;
  wire [31:0]smartconnect_M00_AXI_RDATA;
  wire smartconnect_M00_AXI_RREADY;
  wire [1:0]smartconnect_M00_AXI_RRESP;
  wire smartconnect_M00_AXI_RVALID;
  wire [31:0]smartconnect_M00_AXI_WDATA;
  wire smartconnect_M00_AXI_WREADY;
  wire [3:0]smartconnect_M00_AXI_WSTRB;
  wire smartconnect_M00_AXI_WVALID;
  wire [7:0]smartconnect_M02_AXI_ARADDR;
  wire smartconnect_M02_AXI_ARREADY;
  wire smartconnect_M02_AXI_ARVALID;
  wire [7:0]smartconnect_M02_AXI_AWADDR;
  wire smartconnect_M02_AXI_AWREADY;
  wire smartconnect_M02_AXI_AWVALID;
  wire smartconnect_M02_AXI_BREADY;
  wire [1:0]smartconnect_M02_AXI_BRESP;
  wire smartconnect_M02_AXI_BVALID;
  wire [31:0]smartconnect_M02_AXI_RDATA;
  wire smartconnect_M02_AXI_RREADY;
  wire [1:0]smartconnect_M02_AXI_RRESP;
  wire smartconnect_M02_AXI_RVALID;
  wire [31:0]smartconnect_M02_AXI_WDATA;
  wire smartconnect_M02_AXI_WREADY;
  wire [3:0]smartconnect_M02_AXI_WSTRB;
  wire smartconnect_M02_AXI_WVALID;
  wire [6:0]smartconnect_M03_AXI_ARADDR;
  wire [2:0]smartconnect_M03_AXI_ARPROT;
  wire smartconnect_M03_AXI_ARREADY;
  wire smartconnect_M03_AXI_ARVALID;
  wire [6:0]smartconnect_M03_AXI_AWADDR;
  wire [2:0]smartconnect_M03_AXI_AWPROT;
  wire smartconnect_M03_AXI_AWREADY;
  wire smartconnect_M03_AXI_AWVALID;
  wire smartconnect_M03_AXI_BREADY;
  wire [1:0]smartconnect_M03_AXI_BRESP;
  wire smartconnect_M03_AXI_BVALID;
  wire [31:0]smartconnect_M03_AXI_RDATA;
  wire smartconnect_M03_AXI_RREADY;
  wire [1:0]smartconnect_M03_AXI_RRESP;
  wire smartconnect_M03_AXI_RVALID;
  wire [31:0]smartconnect_M03_AXI_WDATA;
  wire smartconnect_M03_AXI_WREADY;
  wire [3:0]smartconnect_M03_AXI_WSTRB;
  wire smartconnect_M03_AXI_WVALID;
  wire source_200Mhz_clk;
  wire [0:0]source_200Mhz_resetn;
  wire [3:0]status_leds_led_green_l;
  wire [3:0]status_leds_led_orange_l;
  wire [63:0]xdma_0_M_AXI_B_ARADDR;
  wire [1:0]xdma_0_M_AXI_B_ARBURST;
  wire [3:0]xdma_0_M_AXI_B_ARCACHE;
  wire [3:0]xdma_0_M_AXI_B_ARID;
  wire [7:0]xdma_0_M_AXI_B_ARLEN;
  wire [0:0]xdma_0_M_AXI_B_ARLOCK;
  wire [2:0]xdma_0_M_AXI_B_ARPROT;
  wire xdma_0_M_AXI_B_ARREADY;
  wire [2:0]xdma_0_M_AXI_B_ARSIZE;
  wire xdma_0_M_AXI_B_ARVALID;
  wire [63:0]xdma_0_M_AXI_B_AWADDR;
  wire [1:0]xdma_0_M_AXI_B_AWBURST;
  wire [3:0]xdma_0_M_AXI_B_AWCACHE;
  wire [3:0]xdma_0_M_AXI_B_AWID;
  wire [7:0]xdma_0_M_AXI_B_AWLEN;
  wire [0:0]xdma_0_M_AXI_B_AWLOCK;
  wire [2:0]xdma_0_M_AXI_B_AWPROT;
  wire xdma_0_M_AXI_B_AWREADY;
  wire [2:0]xdma_0_M_AXI_B_AWSIZE;
  wire xdma_0_M_AXI_B_AWVALID;
  wire [3:0]xdma_0_M_AXI_B_BID;
  wire xdma_0_M_AXI_B_BREADY;
  wire [1:0]xdma_0_M_AXI_B_BRESP;
  wire xdma_0_M_AXI_B_BVALID;
  wire [511:0]xdma_0_M_AXI_B_RDATA;
  wire [3:0]xdma_0_M_AXI_B_RID;
  wire xdma_0_M_AXI_B_RLAST;
  wire xdma_0_M_AXI_B_RREADY;
  wire [1:0]xdma_0_M_AXI_B_RRESP;
  wire xdma_0_M_AXI_B_RVALID;
  wire [511:0]xdma_0_M_AXI_B_WDATA;
  wire xdma_0_M_AXI_B_WLAST;
  wire xdma_0_M_AXI_B_WREADY;
  wire [63:0]xdma_0_M_AXI_B_WSTRB;
  wire xdma_0_M_AXI_B_WVALID;
  wire [15:0]xdma_0_pcie_mgt_rxn;
  wire [15:0]xdma_0_pcie_mgt_rxp;
  wire [15:0]xdma_0_pcie_mgt_txn;
  wire [15:0]xdma_0_pcie_mgt_txp;

  assign cmac_usplus_0_gt_serial_port_GRX_N = qsfp0_gt_grx_n[3:0];
  assign cmac_usplus_0_gt_serial_port_GRX_P = qsfp0_gt_grx_p[3:0];
  assign eth_1_qsfp_gt_GRX_N = qsfp1_gt_grx_n[3:0];
  assign eth_1_qsfp_gt_GRX_P = qsfp1_gt_grx_p[3:0];
  assign gt_ref_clk_0_1_CLK_N = qsfp0_clk_clk_n;
  assign gt_ref_clk_0_1_CLK_P = qsfp0_clk_clk_p;
  assign gt_ref_clk_0_2_CLK_N = qsfp1_clk_clk_n;
  assign gt_ref_clk_0_2_CLK_P = qsfp1_clk_clk_p;
  assign init_clk_0_1 = init_clk;
  assign led_green_l[3:0] = status_leds_led_green_l;
  assign led_orange_l[3:0] = status_leds_led_orange_l;
  assign pcie_mgt_txn[15:0] = xdma_0_pcie_mgt_txn;
  assign pcie_mgt_txp[15:0] = xdma_0_pcie_mgt_txp;
  assign pcie_refclk_1_CLK_N = pcie_refclk_clk_n[0];
  assign pcie_refclk_1_CLK_P = pcie_refclk_clk_p[0];
  assign qsfp0_gt_gtx_n[3:0] = cmac_usplus_0_gt_serial_port_GTX_N;
  assign qsfp0_gt_gtx_p[3:0] = cmac_usplus_0_gt_serial_port_GTX_P;
  assign qsfp1_gt_gtx_n[3:0] = eth_1_qsfp_gt_GTX_N;
  assign qsfp1_gt_gtx_p[3:0] = eth_1_qsfp_gt_GTX_P;
  assign qsfp_lp[1:0] = qsfp_ctrl_0_qsfp_lp_l;
  assign qsfp_present_l_0_1 = qsfp_present_l[1:0];
  assign qsfp_rst_l[1:0] = qsfp_ctrl_0_qsfp_rst_l;
  assign xdma_0_pcie_mgt_rxn = pcie_mgt_rxn[15:0];
  assign xdma_0_pcie_mgt_rxp = pcie_mgt_rxp[15:0];
  top_level_axi_revision_0_0 axi_revision
       (.AXI_ACLK(source_200Mhz_clk),
        .AXI_ARESETN(source_200Mhz_resetn),
        .S_AXI_ARADDR(smartconnect_M03_AXI_ARADDR),
        .S_AXI_ARPROT(smartconnect_M03_AXI_ARPROT),
        .S_AXI_ARREADY(smartconnect_M03_AXI_ARREADY),
        .S_AXI_ARVALID(smartconnect_M03_AXI_ARVALID),
        .S_AXI_AWADDR(smartconnect_M03_AXI_AWADDR),
        .S_AXI_AWPROT(smartconnect_M03_AXI_AWPROT),
        .S_AXI_AWREADY(smartconnect_M03_AXI_AWREADY),
        .S_AXI_AWVALID(smartconnect_M03_AXI_AWVALID),
        .S_AXI_BREADY(smartconnect_M03_AXI_BREADY),
        .S_AXI_BRESP(smartconnect_M03_AXI_BRESP),
        .S_AXI_BVALID(smartconnect_M03_AXI_BVALID),
        .S_AXI_RDATA(smartconnect_M03_AXI_RDATA),
        .S_AXI_RREADY(smartconnect_M03_AXI_RREADY),
        .S_AXI_RRESP(smartconnect_M03_AXI_RRESP),
        .S_AXI_RVALID(smartconnect_M03_AXI_RVALID),
        .S_AXI_WDATA(smartconnect_M03_AXI_WDATA),
        .S_AXI_WREADY(smartconnect_M03_AXI_WREADY),
        .S_AXI_WSTRB(smartconnect_M03_AXI_WSTRB),
        .S_AXI_WVALID(smartconnect_M03_AXI_WVALID));
  cabletest_imp_L7C0JI cabletest
       (.AXIS_IN_0_tdata(AXIS_IN_0_1_TDATA),
        .AXIS_IN_0_tkeep(AXIS_IN_0_1_TKEEP),
        .AXIS_IN_0_tlast(AXIS_IN_0_1_TLAST),
        .AXIS_IN_0_tready(AXIS_IN_0_1_TREADY),
        .AXIS_IN_0_tvalid(AXIS_IN_0_1_TVALID),
        .AXIS_IN_1_tdata(AXIS_IN_1_1_TDATA),
        .AXIS_IN_1_tkeep(AXIS_IN_1_1_TKEEP),
        .AXIS_IN_1_tlast(AXIS_IN_1_1_TLAST),
        .AXIS_IN_1_tready(AXIS_IN_1_1_TREADY),
        .AXIS_IN_1_tvalid(AXIS_IN_1_1_TVALID),
        .AXIS_OUT_0_tdata(cabletest_AXIS_OUT_0_TDATA),
        .AXIS_OUT_0_tkeep(cabletest_AXIS_OUT_0_TKEEP),
        .AXIS_OUT_0_tlast(cabletest_AXIS_OUT_0_TLAST),
        .AXIS_OUT_0_tready(cabletest_AXIS_OUT_0_TREADY),
        .AXIS_OUT_0_tvalid(cabletest_AXIS_OUT_0_TVALID),
        .AXIS_OUT_1_tdata(cabletest_AXIS_OUT_1_TDATA),
        .AXIS_OUT_1_tkeep(cabletest_AXIS_OUT_1_TKEEP),
        .AXIS_OUT_1_tlast(cabletest_AXIS_OUT_1_TLAST),
        .AXIS_OUT_1_tready(cabletest_AXIS_OUT_1_TREADY),
        .AXIS_OUT_1_tvalid(cabletest_AXIS_OUT_1_TVALID),
        .CMAC_TXDIFF(cabletest_CMAC_TXDIFF),
        .CMAC_TXPOST(cabletest_CMAC_TXPOST),
        .CMAC_TXPRE(cabletest_CMAC_TXPRE),
        .RSFEC_ENABLE(cabletest_RSFEC_ENABLE),
        .S_AXI_araddr(smartconnect_M00_AXI_ARADDR),
        .S_AXI_arready(smartconnect_M00_AXI_ARREADY),
        .S_AXI_arvalid(smartconnect_M00_AXI_ARVALID),
        .S_AXI_awaddr(smartconnect_M00_AXI_AWADDR),
        .S_AXI_awready(smartconnect_M00_AXI_AWREADY),
        .S_AXI_awvalid(smartconnect_M00_AXI_AWVALID),
        .S_AXI_bready(smartconnect_M00_AXI_BREADY),
        .S_AXI_bresp(smartconnect_M00_AXI_BRESP),
        .S_AXI_bvalid(smartconnect_M00_AXI_BVALID),
        .S_AXI_rdata(smartconnect_M00_AXI_RDATA),
        .S_AXI_rready(smartconnect_M00_AXI_RREADY),
        .S_AXI_rresp(smartconnect_M00_AXI_RRESP),
        .S_AXI_rvalid(smartconnect_M00_AXI_RVALID),
        .S_AXI_wdata(smartconnect_M00_AXI_WDATA),
        .S_AXI_wready(smartconnect_M00_AXI_WREADY),
        .S_AXI_wstrb(smartconnect_M00_AXI_WSTRB),
        .S_AXI_wvalid(smartconnect_M00_AXI_WVALID),
        .clk(source_200Mhz_clk),
        .eth0_up(cmac_cdc_user0_aligned),
        .eth1_up(cmac_cdc_user1_aligned),
        .resetn(source_200Mhz_resetn),
        .resetn_out(cabletest_resetn_out));
  top_level_cmac_cdc_0_0 cmac_cdc
       (.cmac0_aligned(eth_0_stat_rx_aligned_0),
        .cmac0_clk(eth_0_stream_clk),
        .cmac0_resetn(eth_0_stream_resetn),
        .cmac0_rx_tdata(eth_0_axis_rx_TDATA),
        .cmac0_rx_tkeep(eth_0_axis_rx_TKEEP),
        .cmac0_rx_tlast(eth_0_axis_rx_TLAST),
        .cmac0_rx_tuser(eth_0_axis_rx_TUSER),
        .cmac0_rx_tvalid(eth_0_axis_rx_TVALID),
        .cmac0_tx_tdata(cmac_cdc_cmac0_tx_TDATA),
        .cmac0_tx_tkeep(cmac_cdc_cmac0_tx_TKEEP),
        .cmac0_tx_tlast(cmac_cdc_cmac0_tx_TLAST),
        .cmac0_tx_tready(cmac_cdc_cmac0_tx_TREADY),
        .cmac0_tx_tuser(cmac_cdc_cmac0_tx_TUSER),
        .cmac0_tx_tvalid(cmac_cdc_cmac0_tx_TVALID),
        .cmac1_aligned(eth_1_stat_rx_aligned_0),
        .cmac1_clk(eth_1_stream_clk),
        .cmac1_resetn(eth_1_stream_resetn),
        .cmac1_rx_tdata(eth_1_axis_rx_TDATA),
        .cmac1_rx_tkeep(eth_1_axis_rx_TKEEP),
        .cmac1_rx_tlast(eth_1_axis_rx_TLAST),
        .cmac1_rx_tuser(eth_1_axis_rx_TUSER),
        .cmac1_rx_tvalid(eth_1_axis_rx_TVALID),
        .cmac1_tx_tdata(cmac_cdc_cmac1_tx_TDATA),
        .cmac1_tx_tkeep(cmac_cdc_cmac1_tx_TKEEP),
        .cmac1_tx_tlast(cmac_cdc_cmac1_tx_TLAST),
        .cmac1_tx_tready(cmac_cdc_cmac1_tx_TREADY),
        .cmac1_tx_tuser(cmac_cdc_cmac1_tx_TUSER),
        .cmac1_tx_tvalid(cmac_cdc_cmac1_tx_TVALID),
        .user0_aligned(cmac_cdc_user0_aligned),
        .user0_rx_tdata(AXIS_IN_0_1_TDATA),
        .user0_rx_tkeep(AXIS_IN_0_1_TKEEP),
        .user0_rx_tlast(AXIS_IN_0_1_TLAST),
        .user0_rx_tready(AXIS_IN_0_1_TREADY),
        .user0_rx_tvalid(AXIS_IN_0_1_TVALID),
        .user0_tx_tdata(cabletest_AXIS_OUT_0_TDATA),
        .user0_tx_tkeep(cabletest_AXIS_OUT_0_TKEEP),
        .user0_tx_tlast(cabletest_AXIS_OUT_0_TLAST),
        .user0_tx_tready(cabletest_AXIS_OUT_0_TREADY),
        .user0_tx_tuser(1'b0),
        .user0_tx_tvalid(cabletest_AXIS_OUT_0_TVALID),
        .user1_aligned(cmac_cdc_user1_aligned),
        .user1_rx_tdata(AXIS_IN_1_1_TDATA),
        .user1_rx_tkeep(AXIS_IN_1_1_TKEEP),
        .user1_rx_tlast(AXIS_IN_1_1_TLAST),
        .user1_rx_tready(AXIS_IN_1_1_TREADY),
        .user1_rx_tvalid(AXIS_IN_1_1_TVALID),
        .user1_tx_tdata(cabletest_AXIS_OUT_1_TDATA),
        .user1_tx_tkeep(cabletest_AXIS_OUT_1_TKEEP),
        .user1_tx_tlast(cabletest_AXIS_OUT_1_TLAST),
        .user1_tx_tready(cabletest_AXIS_OUT_1_TREADY),
        .user1_tx_tuser(1'b0),
        .user1_tx_tvalid(cabletest_AXIS_OUT_1_TVALID),
        .user_clk(source_200Mhz_clk),
        .user_resetn(cabletest_resetn_out));
  eth_0_imp_H4LLQV eth_0
       (.aligned(eth_0_stat_rx_aligned_0),
        .axis_rx_tdata(eth_0_axis_rx_TDATA),
        .axis_rx_tkeep(eth_0_axis_rx_TKEEP),
        .axis_rx_tlast(eth_0_axis_rx_TLAST),
        .axis_rx_tuser(eth_0_axis_rx_TUSER),
        .axis_rx_tvalid(eth_0_axis_rx_TVALID),
        .axis_tx_tdata(cmac_cdc_cmac0_tx_TDATA),
        .axis_tx_tkeep(cmac_cdc_cmac0_tx_TKEEP),
        .axis_tx_tlast(cmac_cdc_cmac0_tx_TLAST),
        .axis_tx_tready(cmac_cdc_cmac0_tx_TREADY),
        .axis_tx_tuser(cmac_cdc_cmac0_tx_TUSER),
        .axis_tx_tvalid(cmac_cdc_cmac0_tx_TVALID),
        .init_clk(init_clk_0_1),
        .qsfp_clk_clk_n(gt_ref_clk_0_1_CLK_N),
        .qsfp_clk_clk_p(gt_ref_clk_0_1_CLK_P),
        .qsfp_gt_grx_n(cmac_usplus_0_gt_serial_port_GRX_N),
        .qsfp_gt_grx_p(cmac_usplus_0_gt_serial_port_GRX_P),
        .qsfp_gt_gtx_n(cmac_usplus_0_gt_serial_port_GTX_N),
        .qsfp_gt_gtx_p(cmac_usplus_0_gt_serial_port_GTX_P),
        .rsfec_enable(cabletest_RSFEC_ENABLE),
        .stream_clk(eth_0_stream_clk),
        .stream_resetn(eth_0_stream_resetn),
        .sys_resetn(cabletest_resetn_out),
        .tx_diff(cabletest_CMAC_TXDIFF),
        .tx_post(cabletest_CMAC_TXPOST),
        .tx_pre(cabletest_CMAC_TXPRE));
  eth_1_imp_1MEC6LL eth_1
       (.aligned(eth_1_stat_rx_aligned_0),
        .axis_rx_tdata(eth_1_axis_rx_TDATA),
        .axis_rx_tkeep(eth_1_axis_rx_TKEEP),
        .axis_rx_tlast(eth_1_axis_rx_TLAST),
        .axis_rx_tuser(eth_1_axis_rx_TUSER),
        .axis_rx_tvalid(eth_1_axis_rx_TVALID),
        .axis_tx_tdata(cmac_cdc_cmac1_tx_TDATA),
        .axis_tx_tkeep(cmac_cdc_cmac1_tx_TKEEP),
        .axis_tx_tlast(cmac_cdc_cmac1_tx_TLAST),
        .axis_tx_tready(cmac_cdc_cmac1_tx_TREADY),
        .axis_tx_tuser(cmac_cdc_cmac1_tx_TUSER),
        .axis_tx_tvalid(cmac_cdc_cmac1_tx_TVALID),
        .init_clk(init_clk_0_1),
        .qsfp_clk_clk_n(gt_ref_clk_0_2_CLK_N),
        .qsfp_clk_clk_p(gt_ref_clk_0_2_CLK_P),
        .qsfp_gt_grx_n(eth_1_qsfp_gt_GRX_N),
        .qsfp_gt_grx_p(eth_1_qsfp_gt_GRX_P),
        .qsfp_gt_gtx_n(eth_1_qsfp_gt_GTX_N),
        .qsfp_gt_gtx_p(eth_1_qsfp_gt_GTX_P),
        .rsfec_enable(cabletest_RSFEC_ENABLE),
        .stream_clk(eth_1_stream_clk),
        .stream_resetn(eth_1_stream_resetn),
        .sys_resetn(cabletest_resetn_out),
        .tx_diff(cabletest_CMAC_TXDIFF),
        .tx_post(cabletest_CMAC_TXPOST),
        .tx_pre({cabletest_resetn_out,cabletest_resetn_out,cabletest_resetn_out,cabletest_resetn_out,cabletest_resetn_out}));
  pcie_imp_P7FEFP pcie
       (.M_AXI_B_araddr(xdma_0_M_AXI_B_ARADDR),
        .M_AXI_B_arburst(xdma_0_M_AXI_B_ARBURST),
        .M_AXI_B_arcache(xdma_0_M_AXI_B_ARCACHE),
        .M_AXI_B_arid(xdma_0_M_AXI_B_ARID),
        .M_AXI_B_arlen(xdma_0_M_AXI_B_ARLEN),
        .M_AXI_B_arlock(xdma_0_M_AXI_B_ARLOCK),
        .M_AXI_B_arprot(xdma_0_M_AXI_B_ARPROT),
        .M_AXI_B_arready(xdma_0_M_AXI_B_ARREADY),
        .M_AXI_B_arsize(xdma_0_M_AXI_B_ARSIZE),
        .M_AXI_B_arvalid(xdma_0_M_AXI_B_ARVALID),
        .M_AXI_B_awaddr(xdma_0_M_AXI_B_AWADDR),
        .M_AXI_B_awburst(xdma_0_M_AXI_B_AWBURST),
        .M_AXI_B_awcache(xdma_0_M_AXI_B_AWCACHE),
        .M_AXI_B_awid(xdma_0_M_AXI_B_AWID),
        .M_AXI_B_awlen(xdma_0_M_AXI_B_AWLEN),
        .M_AXI_B_awlock(xdma_0_M_AXI_B_AWLOCK),
        .M_AXI_B_awprot(xdma_0_M_AXI_B_AWPROT),
        .M_AXI_B_awready(xdma_0_M_AXI_B_AWREADY),
        .M_AXI_B_awsize(xdma_0_M_AXI_B_AWSIZE),
        .M_AXI_B_awvalid(xdma_0_M_AXI_B_AWVALID),
        .M_AXI_B_bid(xdma_0_M_AXI_B_BID),
        .M_AXI_B_bready(xdma_0_M_AXI_B_BREADY),
        .M_AXI_B_bresp(xdma_0_M_AXI_B_BRESP),
        .M_AXI_B_bvalid(xdma_0_M_AXI_B_BVALID),
        .M_AXI_B_rdata(xdma_0_M_AXI_B_RDATA),
        .M_AXI_B_rid(xdma_0_M_AXI_B_RID),
        .M_AXI_B_rlast(xdma_0_M_AXI_B_RLAST),
        .M_AXI_B_rready(xdma_0_M_AXI_B_RREADY),
        .M_AXI_B_rresp(xdma_0_M_AXI_B_RRESP),
        .M_AXI_B_rvalid(xdma_0_M_AXI_B_RVALID),
        .M_AXI_B_wdata(xdma_0_M_AXI_B_WDATA),
        .M_AXI_B_wlast(xdma_0_M_AXI_B_WLAST),
        .M_AXI_B_wready(xdma_0_M_AXI_B_WREADY),
        .M_AXI_B_wstrb(xdma_0_M_AXI_B_WSTRB),
        .M_AXI_B_wvalid(xdma_0_M_AXI_B_WVALID),
        .S_AXI_LITE_araddr(smartconnect_0_M01_AXI_ARADDR),
        .S_AXI_LITE_arprot(smartconnect_0_M01_AXI_ARPROT),
        .S_AXI_LITE_arready(smartconnect_0_M01_AXI_ARREADY),
        .S_AXI_LITE_arvalid(smartconnect_0_M01_AXI_ARVALID),
        .S_AXI_LITE_awaddr(smartconnect_0_M01_AXI_AWADDR),
        .S_AXI_LITE_awprot(smartconnect_0_M01_AXI_AWPROT),
        .S_AXI_LITE_awready(smartconnect_0_M01_AXI_AWREADY),
        .S_AXI_LITE_awvalid(smartconnect_0_M01_AXI_AWVALID),
        .S_AXI_LITE_bready(smartconnect_0_M01_AXI_BREADY),
        .S_AXI_LITE_bresp(smartconnect_0_M01_AXI_BRESP),
        .S_AXI_LITE_bvalid(smartconnect_0_M01_AXI_BVALID),
        .S_AXI_LITE_rdata(smartconnect_0_M01_AXI_RDATA),
        .S_AXI_LITE_rready(smartconnect_0_M01_AXI_RREADY),
        .S_AXI_LITE_rresp(smartconnect_0_M01_AXI_RRESP),
        .S_AXI_LITE_rvalid(smartconnect_0_M01_AXI_RVALID),
        .S_AXI_LITE_wdata(smartconnect_0_M01_AXI_WDATA),
        .S_AXI_LITE_wready(smartconnect_0_M01_AXI_WREADY),
        .S_AXI_LITE_wstrb(smartconnect_0_M01_AXI_WSTRB),
        .S_AXI_LITE_wvalid(smartconnect_0_M01_AXI_WVALID),
        .axi_aclk(source_200Mhz_clk),
        .axi_aresetn(source_200Mhz_resetn),
        .pcie_mgt_rxn(xdma_0_pcie_mgt_rxn),
        .pcie_mgt_rxp(xdma_0_pcie_mgt_rxp),
        .pcie_mgt_txn(xdma_0_pcie_mgt_txn),
        .pcie_mgt_txp(xdma_0_pcie_mgt_txp),
        .pcie_refclk_clk_n(pcie_refclk_1_CLK_N),
        .pcie_refclk_clk_p(pcie_refclk_1_CLK_P));
  top_level_qsfp_ctrl_0_0 qsfp_control
       (.S_AXI_ARADDR(smartconnect_M02_AXI_ARADDR),
        .S_AXI_ARREADY(smartconnect_M02_AXI_ARREADY),
        .S_AXI_ARVALID(smartconnect_M02_AXI_ARVALID),
        .S_AXI_AWADDR(smartconnect_M02_AXI_AWADDR),
        .S_AXI_AWREADY(smartconnect_M02_AXI_AWREADY),
        .S_AXI_AWVALID(smartconnect_M02_AXI_AWVALID),
        .S_AXI_BREADY(smartconnect_M02_AXI_BREADY),
        .S_AXI_BRESP(smartconnect_M02_AXI_BRESP),
        .S_AXI_BVALID(smartconnect_M02_AXI_BVALID),
        .S_AXI_RDATA(smartconnect_M02_AXI_RDATA),
        .S_AXI_RREADY(smartconnect_M02_AXI_RREADY),
        .S_AXI_RRESP(smartconnect_M02_AXI_RRESP),
        .S_AXI_RVALID(smartconnect_M02_AXI_RVALID),
        .S_AXI_WDATA(smartconnect_M02_AXI_WDATA),
        .S_AXI_WREADY(smartconnect_M02_AXI_WREADY),
        .S_AXI_WSTRB(smartconnect_M02_AXI_WSTRB),
        .S_AXI_WVALID(smartconnect_M02_AXI_WVALID),
        .async_qsfp_present_l(qsfp_present_l_0_1),
        .clk(source_200Mhz_clk),
        .qsfp_lp(qsfp_ctrl_0_qsfp_lp_l),
        .qsfp_rst_l(qsfp_ctrl_0_qsfp_rst_l),
        .resetn(source_200Mhz_resetn));
  top_level_smartconnect_0_0 smartconnect
       (.M00_AXI_araddr(smartconnect_M00_AXI_ARADDR),
        .M00_AXI_arready(smartconnect_M00_AXI_ARREADY),
        .M00_AXI_arvalid(smartconnect_M00_AXI_ARVALID),
        .M00_AXI_awaddr(smartconnect_M00_AXI_AWADDR),
        .M00_AXI_awready(smartconnect_M00_AXI_AWREADY),
        .M00_AXI_awvalid(smartconnect_M00_AXI_AWVALID),
        .M00_AXI_bready(smartconnect_M00_AXI_BREADY),
        .M00_AXI_bresp(smartconnect_M00_AXI_BRESP),
        .M00_AXI_bvalid(smartconnect_M00_AXI_BVALID),
        .M00_AXI_rdata(smartconnect_M00_AXI_RDATA),
        .M00_AXI_rready(smartconnect_M00_AXI_RREADY),
        .M00_AXI_rresp(smartconnect_M00_AXI_RRESP),
        .M00_AXI_rvalid(smartconnect_M00_AXI_RVALID),
        .M00_AXI_wdata(smartconnect_M00_AXI_WDATA),
        .M00_AXI_wready(smartconnect_M00_AXI_WREADY),
        .M00_AXI_wstrb(smartconnect_M00_AXI_WSTRB),
        .M00_AXI_wvalid(smartconnect_M00_AXI_WVALID),
        .M01_AXI_araddr(smartconnect_0_M01_AXI_ARADDR),
        .M01_AXI_arprot(smartconnect_0_M01_AXI_ARPROT),
        .M01_AXI_arready(smartconnect_0_M01_AXI_ARREADY),
        .M01_AXI_arvalid(smartconnect_0_M01_AXI_ARVALID),
        .M01_AXI_awaddr(smartconnect_0_M01_AXI_AWADDR),
        .M01_AXI_awprot(smartconnect_0_M01_AXI_AWPROT),
        .M01_AXI_awready(smartconnect_0_M01_AXI_AWREADY),
        .M01_AXI_awvalid(smartconnect_0_M01_AXI_AWVALID),
        .M01_AXI_bready(smartconnect_0_M01_AXI_BREADY),
        .M01_AXI_bresp(smartconnect_0_M01_AXI_BRESP),
        .M01_AXI_bvalid(smartconnect_0_M01_AXI_BVALID),
        .M01_AXI_rdata(smartconnect_0_M01_AXI_RDATA),
        .M01_AXI_rready(smartconnect_0_M01_AXI_RREADY),
        .M01_AXI_rresp(smartconnect_0_M01_AXI_RRESP),
        .M01_AXI_rvalid(smartconnect_0_M01_AXI_RVALID),
        .M01_AXI_wdata(smartconnect_0_M01_AXI_WDATA),
        .M01_AXI_wready(smartconnect_0_M01_AXI_WREADY),
        .M01_AXI_wstrb(smartconnect_0_M01_AXI_WSTRB),
        .M01_AXI_wvalid(smartconnect_0_M01_AXI_WVALID),
        .M02_AXI_araddr(smartconnect_M02_AXI_ARADDR),
        .M02_AXI_arready(smartconnect_M02_AXI_ARREADY),
        .M02_AXI_arvalid(smartconnect_M02_AXI_ARVALID),
        .M02_AXI_awaddr(smartconnect_M02_AXI_AWADDR),
        .M02_AXI_awready(smartconnect_M02_AXI_AWREADY),
        .M02_AXI_awvalid(smartconnect_M02_AXI_AWVALID),
        .M02_AXI_bready(smartconnect_M02_AXI_BREADY),
        .M02_AXI_bresp(smartconnect_M02_AXI_BRESP),
        .M02_AXI_bvalid(smartconnect_M02_AXI_BVALID),
        .M02_AXI_rdata(smartconnect_M02_AXI_RDATA),
        .M02_AXI_rready(smartconnect_M02_AXI_RREADY),
        .M02_AXI_rresp(smartconnect_M02_AXI_RRESP),
        .M02_AXI_rvalid(smartconnect_M02_AXI_RVALID),
        .M02_AXI_wdata(smartconnect_M02_AXI_WDATA),
        .M02_AXI_wready(smartconnect_M02_AXI_WREADY),
        .M02_AXI_wstrb(smartconnect_M02_AXI_WSTRB),
        .M02_AXI_wvalid(smartconnect_M02_AXI_WVALID),
        .M03_AXI_araddr(smartconnect_M03_AXI_ARADDR),
        .M03_AXI_arprot(smartconnect_M03_AXI_ARPROT),
        .M03_AXI_arready(smartconnect_M03_AXI_ARREADY),
        .M03_AXI_arvalid(smartconnect_M03_AXI_ARVALID),
        .M03_AXI_awaddr(smartconnect_M03_AXI_AWADDR),
        .M03_AXI_awprot(smartconnect_M03_AXI_AWPROT),
        .M03_AXI_awready(smartconnect_M03_AXI_AWREADY),
        .M03_AXI_awvalid(smartconnect_M03_AXI_AWVALID),
        .M03_AXI_bready(smartconnect_M03_AXI_BREADY),
        .M03_AXI_bresp(smartconnect_M03_AXI_BRESP),
        .M03_AXI_bvalid(smartconnect_M03_AXI_BVALID),
        .M03_AXI_rdata(smartconnect_M03_AXI_RDATA),
        .M03_AXI_rready(smartconnect_M03_AXI_RREADY),
        .M03_AXI_rresp(smartconnect_M03_AXI_RRESP),
        .M03_AXI_rvalid(smartconnect_M03_AXI_RVALID),
        .M03_AXI_wdata(smartconnect_M03_AXI_WDATA),
        .M03_AXI_wready(smartconnect_M03_AXI_WREADY),
        .M03_AXI_wstrb(smartconnect_M03_AXI_WSTRB),
        .M03_AXI_wvalid(smartconnect_M03_AXI_WVALID),
        .S00_AXI_araddr(xdma_0_M_AXI_B_ARADDR),
        .S00_AXI_arburst(xdma_0_M_AXI_B_ARBURST),
        .S00_AXI_arcache(xdma_0_M_AXI_B_ARCACHE),
        .S00_AXI_arid(xdma_0_M_AXI_B_ARID),
        .S00_AXI_arlen(xdma_0_M_AXI_B_ARLEN),
        .S00_AXI_arlock(xdma_0_M_AXI_B_ARLOCK),
        .S00_AXI_arprot(xdma_0_M_AXI_B_ARPROT),
        .S00_AXI_arqos({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_arready(xdma_0_M_AXI_B_ARREADY),
        .S00_AXI_arsize(xdma_0_M_AXI_B_ARSIZE),
        .S00_AXI_arvalid(xdma_0_M_AXI_B_ARVALID),
        .S00_AXI_awaddr(xdma_0_M_AXI_B_AWADDR),
        .S00_AXI_awburst(xdma_0_M_AXI_B_AWBURST),
        .S00_AXI_awcache(xdma_0_M_AXI_B_AWCACHE),
        .S00_AXI_awid(xdma_0_M_AXI_B_AWID),
        .S00_AXI_awlen(xdma_0_M_AXI_B_AWLEN),
        .S00_AXI_awlock(xdma_0_M_AXI_B_AWLOCK),
        .S00_AXI_awprot(xdma_0_M_AXI_B_AWPROT),
        .S00_AXI_awqos({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_awready(xdma_0_M_AXI_B_AWREADY),
        .S00_AXI_awsize(xdma_0_M_AXI_B_AWSIZE),
        .S00_AXI_awvalid(xdma_0_M_AXI_B_AWVALID),
        .S00_AXI_bid(xdma_0_M_AXI_B_BID),
        .S00_AXI_bready(xdma_0_M_AXI_B_BREADY),
        .S00_AXI_bresp(xdma_0_M_AXI_B_BRESP),
        .S00_AXI_bvalid(xdma_0_M_AXI_B_BVALID),
        .S00_AXI_rdata(xdma_0_M_AXI_B_RDATA),
        .S00_AXI_rid(xdma_0_M_AXI_B_RID),
        .S00_AXI_rlast(xdma_0_M_AXI_B_RLAST),
        .S00_AXI_rready(xdma_0_M_AXI_B_RREADY),
        .S00_AXI_rresp(xdma_0_M_AXI_B_RRESP),
        .S00_AXI_rvalid(xdma_0_M_AXI_B_RVALID),
        .S00_AXI_wdata(xdma_0_M_AXI_B_WDATA),
        .S00_AXI_wlast(xdma_0_M_AXI_B_WLAST),
        .S00_AXI_wready(xdma_0_M_AXI_B_WREADY),
        .S00_AXI_wstrb(xdma_0_M_AXI_B_WSTRB),
        .S00_AXI_wvalid(xdma_0_M_AXI_B_WVALID),
        .S01_AXI_araddr(1'b0),
        .S01_AXI_arburst({1'b0,1'b1}),
        .S01_AXI_arcache({1'b0,1'b0,1'b1,1'b1}),
        .S01_AXI_arid(1'b0),
        .S01_AXI_arlen(1'b0),
        .S01_AXI_arlock(1'b0),
        .S01_AXI_arprot({1'b0,1'b0,1'b0}),
        .S01_AXI_arqos({1'b0,1'b0,1'b0,1'b0}),
        .S01_AXI_arregion({1'b0,1'b0,1'b0,1'b0}),
        .S01_AXI_arsize({1'b0,1'b1,1'b0}),
        .S01_AXI_aruser(1'b0),
        .S01_AXI_arvalid(1'b0),
        .S01_AXI_awaddr(1'b0),
        .S01_AXI_awburst({1'b0,1'b1}),
        .S01_AXI_awcache({1'b0,1'b0,1'b1,1'b1}),
        .S01_AXI_awid(1'b0),
        .S01_AXI_awlen(1'b0),
        .S01_AXI_awlock(1'b0),
        .S01_AXI_awprot({1'b0,1'b0,1'b0}),
        .S01_AXI_awqos({1'b0,1'b0,1'b0,1'b0}),
        .S01_AXI_awregion({1'b0,1'b0,1'b0,1'b0}),
        .S01_AXI_awsize({1'b0,1'b1,1'b0}),
        .S01_AXI_awuser(1'b0),
        .S01_AXI_awvalid(1'b0),
        .S01_AXI_bready(1'b0),
        .S01_AXI_rready(1'b0),
        .S01_AXI_wdata(1'b0),
        .S01_AXI_wid(1'b0),
        .S01_AXI_wlast(1'b0),
        .S01_AXI_wstrb(1'b1),
        .S01_AXI_wuser(1'b0),
        .S01_AXI_wvalid(1'b0),
        .aclk(source_200Mhz_clk),
        .aresetn(source_200Mhz_resetn));
  top_level_status_leds_0_0 status_leds
       (.led_green_l(status_leds_led_green_l),
        .led_orange_l(status_leds_led_orange_l),
        .qsfp0_up(eth_0_stat_rx_aligned_0),
        .qsfp1_up(eth_1_stat_rx_aligned_0));
endmodule
