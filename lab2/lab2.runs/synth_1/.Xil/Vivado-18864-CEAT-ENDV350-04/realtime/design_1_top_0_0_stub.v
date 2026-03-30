// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "top,Vivado 2023.2" *)
module design_1_top_0_0(clk, reset, doneM, readDataM, writeDataM, addressM, 
  DRW, AXIStart);
  input clk /* synthesis syn_isclock = 1 */;
  input reset;
  input doneM;
  input [31:0]readDataM;
  output [31:0]writeDataM;
  output [31:0]addressM;
  output DRW;
  output AXIStart;
endmodule
