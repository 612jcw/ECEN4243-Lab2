// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "processing_system7_v5_5_processing_system7,Vivado 2019.1" *)
module design_1_processing_system7_0_0(I2C0_SDA_I, I2C0_SDA_O, I2C0_SDA_T, I2C0_SCL_I, 
  I2C0_SCL_O, I2C0_SCL_T, UART0_TX, UART0_RX, S_AXI_HP0_ARREADY, S_AXI_HP0_AWREADY, 
  S_AXI_HP0_BVALID, S_AXI_HP0_RLAST, S_AXI_HP0_RVALID, S_AXI_HP0_WREADY, S_AXI_HP0_BRESP, 
  S_AXI_HP0_RRESP, S_AXI_HP0_BID, S_AXI_HP0_RID, S_AXI_HP0_RDATA, S_AXI_HP0_RCOUNT, 
  S_AXI_HP0_WCOUNT, S_AXI_HP0_RACOUNT, S_AXI_HP0_WACOUNT, S_AXI_HP0_ACLK, 
  S_AXI_HP0_ARVALID, S_AXI_HP0_AWVALID, S_AXI_HP0_BREADY, S_AXI_HP0_RDISSUECAP1_EN, 
  S_AXI_HP0_RREADY, S_AXI_HP0_WLAST, S_AXI_HP0_WRISSUECAP1_EN, S_AXI_HP0_WVALID, 
  S_AXI_HP0_ARBURST, S_AXI_HP0_ARLOCK, S_AXI_HP0_ARSIZE, S_AXI_HP0_AWBURST, 
  S_AXI_HP0_AWLOCK, S_AXI_HP0_AWSIZE, S_AXI_HP0_ARPROT, S_AXI_HP0_AWPROT, S_AXI_HP0_ARADDR, 
  S_AXI_HP0_AWADDR, S_AXI_HP0_ARCACHE, S_AXI_HP0_ARLEN, S_AXI_HP0_ARQOS, S_AXI_HP0_AWCACHE, 
  S_AXI_HP0_AWLEN, S_AXI_HP0_AWQOS, S_AXI_HP0_ARID, S_AXI_HP0_AWID, S_AXI_HP0_WID, 
  S_AXI_HP0_WDATA, S_AXI_HP0_WSTRB, FCLK_CLK0, FCLK_RESET0_N, MIO, DDR_CAS_n, DDR_CKE, DDR_Clk_n, 
  DDR_Clk, DDR_CS_n, DDR_DRSTB, DDR_ODT, DDR_RAS_n, DDR_WEB, DDR_BankAddr, DDR_Addr, DDR_VRN, 
  DDR_VRP, DDR_DM, DDR_DQ, DDR_DQS_n, DDR_DQS, PS_SRSTB, PS_CLK, PS_PORB);
  input I2C0_SDA_I;
  output I2C0_SDA_O;
  output I2C0_SDA_T;
  input I2C0_SCL_I;
  output I2C0_SCL_O;
  output I2C0_SCL_T;
  output UART0_TX;
  input UART0_RX;
  output S_AXI_HP0_ARREADY;
  output S_AXI_HP0_AWREADY;
  output S_AXI_HP0_BVALID;
  output S_AXI_HP0_RLAST;
  output S_AXI_HP0_RVALID;
  output S_AXI_HP0_WREADY;
  output [1:0]S_AXI_HP0_BRESP;
  output [1:0]S_AXI_HP0_RRESP;
  output [5:0]S_AXI_HP0_BID;
  output [5:0]S_AXI_HP0_RID;
  output [63:0]S_AXI_HP0_RDATA;
  output [7:0]S_AXI_HP0_RCOUNT;
  output [7:0]S_AXI_HP0_WCOUNT;
  output [2:0]S_AXI_HP0_RACOUNT;
  output [5:0]S_AXI_HP0_WACOUNT;
  input S_AXI_HP0_ACLK;
  input S_AXI_HP0_ARVALID;
  input S_AXI_HP0_AWVALID;
  input S_AXI_HP0_BREADY;
  input S_AXI_HP0_RDISSUECAP1_EN;
  input S_AXI_HP0_RREADY;
  input S_AXI_HP0_WLAST;
  input S_AXI_HP0_WRISSUECAP1_EN;
  input S_AXI_HP0_WVALID;
  input [1:0]S_AXI_HP0_ARBURST;
  input [1:0]S_AXI_HP0_ARLOCK;
  input [2:0]S_AXI_HP0_ARSIZE;
  input [1:0]S_AXI_HP0_AWBURST;
  input [1:0]S_AXI_HP0_AWLOCK;
  input [2:0]S_AXI_HP0_AWSIZE;
  input [2:0]S_AXI_HP0_ARPROT;
  input [2:0]S_AXI_HP0_AWPROT;
  input [31:0]S_AXI_HP0_ARADDR;
  input [31:0]S_AXI_HP0_AWADDR;
  input [3:0]S_AXI_HP0_ARCACHE;
  input [3:0]S_AXI_HP0_ARLEN;
  input [3:0]S_AXI_HP0_ARQOS;
  input [3:0]S_AXI_HP0_AWCACHE;
  input [3:0]S_AXI_HP0_AWLEN;
  input [3:0]S_AXI_HP0_AWQOS;
  input [5:0]S_AXI_HP0_ARID;
  input [5:0]S_AXI_HP0_AWID;
  input [5:0]S_AXI_HP0_WID;
  input [63:0]S_AXI_HP0_WDATA;
  input [7:0]S_AXI_HP0_WSTRB;
  output FCLK_CLK0;
  output FCLK_RESET0_N;
  inout [53:0]MIO;
  inout DDR_CAS_n;
  inout DDR_CKE;
  inout DDR_Clk_n;
  inout DDR_Clk;
  inout DDR_CS_n;
  inout DDR_DRSTB;
  inout DDR_ODT;
  inout DDR_RAS_n;
  inout DDR_WEB;
  inout [2:0]DDR_BankAddr;
  inout [14:0]DDR_Addr;
  inout DDR_VRN;
  inout DDR_VRP;
  inout [3:0]DDR_DM;
  inout [31:0]DDR_DQ;
  inout [3:0]DDR_DQS_n;
  inout [3:0]DDR_DQS;
  inout PS_SRSTB;
  inout PS_CLK;
  inout PS_PORB;
endmodule
