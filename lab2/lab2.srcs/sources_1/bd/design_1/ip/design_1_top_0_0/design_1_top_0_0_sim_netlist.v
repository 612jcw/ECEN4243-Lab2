// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Mon Mar 30 17:19:44 2026
// Host        : CEAT-ENDV350-04 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/jereyou/Documents/Repo/ECEN4243-Lab2/lab2/lab2.srcs/sources_1/bd/design_1/ip/design_1_top_0_0/design_1_top_0_0_sim_netlist.v
// Design      : design_1_top_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_top_0_0,top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "top,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module design_1_top_0_0
   (clk,
    reset,
    doneM,
    readDataM,
    writeDataM,
    addressM,
    DRW,
    AXIStart);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  input doneM;
  input [31:0]readDataM;
  output [31:0]writeDataM;
  output [31:0]addressM;
  output DRW;
  output AXIStart;

  wire AXIStart;
  wire DRW;
  wire [31:0]addressM;
  wire clk;
  wire doneM;
  wire [31:0]readDataM;
  wire reset;
  wire [31:0]writeDataM;

  (* KEEP_HIERARCHY = "soft" *) 
  design_1_top_0_0_top inst
       (.AXIStart(AXIStart),
        .DRW(DRW),
        .addressM(addressM),
        .clk(clk),
        .doneM(doneM),
        .readDataM(readDataM),
        .reset(reset),
        .writeDataM(writeDataM));
endmodule

(* ORIG_REF_NAME = "MemControl" *) 
module design_1_top_0_0_MemControl
   (Done,
    MStrobe,
    MemWrite,
    Trigger,
    clk,
    reset,
    DRW,
    AXIstart);
  output Done;
  input MStrobe;
  input MemWrite;
  input Trigger;
  input clk;
  input reset;
  output DRW;
  output AXIstart;

  wire AXIstart;
  wire DRW;
  wire Done;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire MStrobe;
  wire MemWrite;
  wire Trigger;
  wire clk;
  wire [0:0]nextstate;
  wire reset;
  wire [2:0]state;

  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h06)) 
    AXIstart_INST_0
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .O(AXIstart));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h15)) 
    DRW_INST_0
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .O(DRW));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h01)) 
    Done_INST_0
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[1]),
        .O(Done));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(nextstate),
        .I1(reset),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h101010105D585858)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(state[1]),
        .I1(Trigger),
        .I2(state[2]),
        .I3(MemWrite),
        .I4(MStrobe),
        .I5(state[0]),
        .O(nextstate));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h00001A12)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(Trigger),
        .I4(reset),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000AABA)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(MStrobe),
        .I3(MemWrite),
        .I4(state[1]),
        .I5(reset),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "Idle:000,ReadStart:100,WriteStart:001,ReadData:110,ReadMem:101,WriteData:011,WriteMem:010" *) 
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "Idle:000,ReadStart:100,WriteStart:001,ReadData:110,ReadMem:101,WriteData:011,WriteMem:010" *) 
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "Idle:000,ReadStart:100,WriteStart:001,ReadData:110,ReadMem:101,WriteData:011,WriteMem:010" *) 
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \FSM_sequential_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(state[2]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "adder" *) 
module design_1_top_0_0_adder
   (d2,
    wd3,
    DI,
    \q[7]_i_8 ,
    S,
    rf_reg_r1_0_31_6_11_i_3,
    rf_reg_r1_0_31_12_17_i_1,
    rf_reg_r1_0_31_12_17_i_11,
    rf_reg_r1_0_31_18_23_i_11,
    rf_reg_r1_0_31_24_29_i_7,
    rf_reg_r1_0_31_24_29_i_15,
    rf_reg_r1_0_31_24_29_i_15_0,
    d3,
    Instr,
    rf_reg_r1_0_31_0_5,
    rf_reg_r1_0_31_0_5_0,
    rf_reg_r1_0_31_0_5_1,
    rf_reg_r1_0_31_0_5_2,
    rf_reg_r1_0_31_0_5_3,
    rf_reg_r1_0_31_6_11,
    rf_reg_r1_0_31_6_11_0);
  output [30:0]d2;
  output [6:0]wd3;
  input [2:0]DI;
  input [3:0]\q[7]_i_8 ;
  input [0:0]S;
  input [3:0]rf_reg_r1_0_31_6_11_i_3;
  input [3:0]rf_reg_r1_0_31_12_17_i_1;
  input [3:0]rf_reg_r1_0_31_12_17_i_11;
  input [3:0]rf_reg_r1_0_31_18_23_i_11;
  input [3:0]rf_reg_r1_0_31_24_29_i_7;
  input [2:0]rf_reg_r1_0_31_24_29_i_15;
  input [0:0]rf_reg_r1_0_31_24_29_i_15_0;
  input [6:0]d3;
  input [2:0]Instr;
  input rf_reg_r1_0_31_0_5;
  input rf_reg_r1_0_31_0_5_0;
  input rf_reg_r1_0_31_0_5_1;
  input rf_reg_r1_0_31_0_5_2;
  input rf_reg_r1_0_31_0_5_3;
  input rf_reg_r1_0_31_6_11;
  input rf_reg_r1_0_31_6_11_0;

  wire [2:0]DI;
  wire [2:0]Instr;
  wire [0:0]S;
  wire [30:0]d2;
  wire [6:0]d3;
  wire [3:0]\q[7]_i_8 ;
  wire rf_reg_r1_0_31_0_5;
  wire rf_reg_r1_0_31_0_5_0;
  wire rf_reg_r1_0_31_0_5_1;
  wire rf_reg_r1_0_31_0_5_2;
  wire rf_reg_r1_0_31_0_5_3;
  wire [3:0]rf_reg_r1_0_31_12_17_i_1;
  wire [3:0]rf_reg_r1_0_31_12_17_i_11;
  wire [3:0]rf_reg_r1_0_31_18_23_i_11;
  wire [2:0]rf_reg_r1_0_31_24_29_i_15;
  wire [0:0]rf_reg_r1_0_31_24_29_i_15_0;
  wire [3:0]rf_reg_r1_0_31_24_29_i_7;
  wire rf_reg_r1_0_31_6_11;
  wire rf_reg_r1_0_31_6_11_0;
  wire [3:0]rf_reg_r1_0_31_6_11_i_3;
  wire [6:0]wd3;
  wire y_carry__0_n_0;
  wire y_carry__0_n_1;
  wire y_carry__0_n_2;
  wire y_carry__0_n_3;
  wire y_carry__1_n_0;
  wire y_carry__1_n_1;
  wire y_carry__1_n_2;
  wire y_carry__1_n_3;
  wire y_carry__2_n_0;
  wire y_carry__2_n_1;
  wire y_carry__2_n_2;
  wire y_carry__2_n_3;
  wire y_carry__3_n_0;
  wire y_carry__3_n_1;
  wire y_carry__3_n_2;
  wire y_carry__3_n_3;
  wire y_carry__4_n_0;
  wire y_carry__4_n_1;
  wire y_carry__4_n_2;
  wire y_carry__4_n_3;
  wire y_carry__5_n_0;
  wire y_carry__5_n_1;
  wire y_carry__5_n_2;
  wire y_carry__5_n_3;
  wire y_carry__6_n_2;
  wire y_carry__6_n_3;
  wire y_carry_n_0;
  wire y_carry_n_1;
  wire y_carry_n_2;
  wire y_carry_n_3;
  wire [3:2]NLW_y_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_y_carry__6_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFAFFCCFF0A00CC00)) 
    rf_reg_r1_0_31_0_5_i_2
       (.I0(d2[0]),
        .I1(d3[0]),
        .I2(Instr[1]),
        .I3(Instr[0]),
        .I4(Instr[2]),
        .I5(rf_reg_r1_0_31_0_5),
        .O(wd3[0]));
  LUT6 #(
    .INIT(64'hFAFFCCFF0A00CC00)) 
    rf_reg_r1_0_31_0_5_i_4
       (.I0(d2[2]),
        .I1(d3[2]),
        .I2(Instr[1]),
        .I3(Instr[0]),
        .I4(Instr[2]),
        .I5(rf_reg_r1_0_31_0_5_1),
        .O(wd3[2]));
  LUT6 #(
    .INIT(64'hFAFFCCFF0A00CC00)) 
    rf_reg_r1_0_31_0_5_i_5
       (.I0(d2[1]),
        .I1(d3[1]),
        .I2(Instr[1]),
        .I3(Instr[0]),
        .I4(Instr[2]),
        .I5(rf_reg_r1_0_31_0_5_0),
        .O(wd3[1]));
  LUT6 #(
    .INIT(64'hFAFFCCFF0A00CC00)) 
    rf_reg_r1_0_31_0_5_i_6
       (.I0(d2[4]),
        .I1(d3[4]),
        .I2(Instr[1]),
        .I3(Instr[0]),
        .I4(Instr[2]),
        .I5(rf_reg_r1_0_31_0_5_3),
        .O(wd3[4]));
  LUT6 #(
    .INIT(64'hFAFFCCFF0A00CC00)) 
    rf_reg_r1_0_31_0_5_i_7
       (.I0(d2[3]),
        .I1(d3[3]),
        .I2(Instr[1]),
        .I3(Instr[0]),
        .I4(Instr[2]),
        .I5(rf_reg_r1_0_31_0_5_2),
        .O(wd3[3]));
  LUT6 #(
    .INIT(64'hFAFFCCFF0A00CC00)) 
    rf_reg_r1_0_31_6_11_i_1
       (.I0(d2[6]),
        .I1(d3[6]),
        .I2(Instr[1]),
        .I3(Instr[0]),
        .I4(Instr[2]),
        .I5(rf_reg_r1_0_31_6_11_0),
        .O(wd3[6]));
  LUT6 #(
    .INIT(64'hFAFFCCFF0A00CC00)) 
    rf_reg_r1_0_31_6_11_i_2
       (.I0(d2[5]),
        .I1(d3[5]),
        .I2(Instr[1]),
        .I3(Instr[0]),
        .I4(Instr[2]),
        .I5(rf_reg_r1_0_31_6_11),
        .O(wd3[5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry
       (.CI(1'b0),
        .CO({y_carry_n_0,y_carry_n_1,y_carry_n_2,y_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,DI[1],1'b0}),
        .O(d2[3:0]),
        .S({\q[7]_i_8 [0],DI[2],S,DI[0]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__0
       (.CI(y_carry_n_0),
        .CO({y_carry__0_n_0,y_carry__0_n_1,y_carry__0_n_2,y_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(d2[7:4]),
        .S({rf_reg_r1_0_31_6_11_i_3[0],\q[7]_i_8 [3:1]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__1
       (.CI(y_carry__0_n_0),
        .CO({y_carry__1_n_0,y_carry__1_n_1,y_carry__1_n_2,y_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(d2[11:8]),
        .S({rf_reg_r1_0_31_12_17_i_1[0],rf_reg_r1_0_31_6_11_i_3[3:1]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__2
       (.CI(y_carry__1_n_0),
        .CO({y_carry__2_n_0,y_carry__2_n_1,y_carry__2_n_2,y_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(d2[15:12]),
        .S({rf_reg_r1_0_31_12_17_i_11[0],rf_reg_r1_0_31_12_17_i_1[3:1]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__3
       (.CI(y_carry__2_n_0),
        .CO({y_carry__3_n_0,y_carry__3_n_1,y_carry__3_n_2,y_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(d2[19:16]),
        .S({rf_reg_r1_0_31_18_23_i_11[0],rf_reg_r1_0_31_12_17_i_11[3:1]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__4
       (.CI(y_carry__3_n_0),
        .CO({y_carry__4_n_0,y_carry__4_n_1,y_carry__4_n_2,y_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(d2[23:20]),
        .S({rf_reg_r1_0_31_24_29_i_7[0],rf_reg_r1_0_31_18_23_i_11[3:1]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__5
       (.CI(y_carry__4_n_0),
        .CO({y_carry__5_n_0,y_carry__5_n_1,y_carry__5_n_2,y_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(d2[27:24]),
        .S({rf_reg_r1_0_31_24_29_i_15[0],rf_reg_r1_0_31_24_29_i_7[3:1]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__6
       (.CI(y_carry__5_n_0),
        .CO({NLW_y_carry__6_CO_UNCONNECTED[3:2],y_carry__6_n_2,y_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_y_carry__6_O_UNCONNECTED[3],d2[30:28]}),
        .S({1'b0,rf_reg_r1_0_31_24_29_i_15_0,rf_reg_r1_0_31_24_29_i_15[2:1]}));
endmodule

(* ORIG_REF_NAME = "adder" *) 
module design_1_top_0_0_adder_0
   (\q_reg[30] ,
    \q_reg[19] ,
    \q_reg[19]_0 ,
    \q_reg[19]_1 ,
    \q_reg[19]_2 ,
    \q_reg[23] ,
    \q_reg[23]_0 ,
    \q_reg[23]_1 ,
    \q_reg[23]_2 ,
    \q_reg[27] ,
    \q_reg[27]_0 ,
    \q_reg[27]_1 ,
    \q_reg[27]_2 ,
    DI,
    S,
    rf_reg_r1_0_31_0_5_i_7,
    rf_reg_r1_0_31_0_5_i_7_0,
    rf_reg_r1_0_31_6_11_i_4,
    rf_reg_r1_0_31_6_11_i_4_0,
    rf_reg_r1_0_31_12_17_i_2,
    rf_reg_r1_0_31_12_17_i_2_0,
    rf_reg_r1_0_31_12_17_i_14_0,
    rf_reg_r1_0_31_12_17_i_14_1,
    rf_reg_r1_0_31_18_23_i_13_0,
    rf_reg_r1_0_31_18_23_i_13_1,
    rf_reg_r1_0_31_24_29_i_9_0,
    rf_reg_r1_0_31_24_29_i_9_1,
    rf_reg_r1_0_31_24_29_i_17,
    rf_reg_r1_0_31_24_29_i_17_0,
    d2,
    Instr);
  output [19:0]\q_reg[30] ;
  output \q_reg[19] ;
  output \q_reg[19]_0 ;
  output \q_reg[19]_1 ;
  output \q_reg[19]_2 ;
  output \q_reg[23] ;
  output \q_reg[23]_0 ;
  output \q_reg[23]_1 ;
  output \q_reg[23]_2 ;
  output \q_reg[27] ;
  output \q_reg[27]_0 ;
  output \q_reg[27]_1 ;
  output \q_reg[27]_2 ;
  input [3:0]DI;
  input [3:0]S;
  input [3:0]rf_reg_r1_0_31_0_5_i_7;
  input [3:0]rf_reg_r1_0_31_0_5_i_7_0;
  input [3:0]rf_reg_r1_0_31_6_11_i_4;
  input [3:0]rf_reg_r1_0_31_6_11_i_4_0;
  input [3:0]rf_reg_r1_0_31_12_17_i_2;
  input [3:0]rf_reg_r1_0_31_12_17_i_2_0;
  input [3:0]rf_reg_r1_0_31_12_17_i_14_0;
  input [3:0]rf_reg_r1_0_31_12_17_i_14_1;
  input [3:0]rf_reg_r1_0_31_18_23_i_13_0;
  input [3:0]rf_reg_r1_0_31_18_23_i_13_1;
  input [3:0]rf_reg_r1_0_31_24_29_i_9_0;
  input [3:0]rf_reg_r1_0_31_24_29_i_9_1;
  input [2:0]rf_reg_r1_0_31_24_29_i_17;
  input [3:0]rf_reg_r1_0_31_24_29_i_17_0;
  input [11:0]d2;
  input [2:0]Instr;

  wire [3:0]DI;
  wire [2:0]Instr;
  wire [3:0]S;
  wire [11:0]d2;
  wire [27:16]d3;
  wire \q_reg[19] ;
  wire \q_reg[19]_0 ;
  wire \q_reg[19]_1 ;
  wire \q_reg[19]_2 ;
  wire \q_reg[23] ;
  wire \q_reg[23]_0 ;
  wire \q_reg[23]_1 ;
  wire \q_reg[23]_2 ;
  wire \q_reg[27] ;
  wire \q_reg[27]_0 ;
  wire \q_reg[27]_1 ;
  wire \q_reg[27]_2 ;
  wire [19:0]\q_reg[30] ;
  wire [3:0]rf_reg_r1_0_31_0_5_i_7;
  wire [3:0]rf_reg_r1_0_31_0_5_i_7_0;
  wire [3:0]rf_reg_r1_0_31_12_17_i_14_0;
  wire [3:0]rf_reg_r1_0_31_12_17_i_14_1;
  wire [3:0]rf_reg_r1_0_31_12_17_i_2;
  wire [3:0]rf_reg_r1_0_31_12_17_i_2_0;
  wire [3:0]rf_reg_r1_0_31_18_23_i_13_0;
  wire [3:0]rf_reg_r1_0_31_18_23_i_13_1;
  wire [2:0]rf_reg_r1_0_31_24_29_i_17;
  wire [3:0]rf_reg_r1_0_31_24_29_i_17_0;
  wire [3:0]rf_reg_r1_0_31_24_29_i_9_0;
  wire [3:0]rf_reg_r1_0_31_24_29_i_9_1;
  wire [3:0]rf_reg_r1_0_31_6_11_i_4;
  wire [3:0]rf_reg_r1_0_31_6_11_i_4_0;
  wire y_carry__0_n_0;
  wire y_carry__0_n_1;
  wire y_carry__0_n_2;
  wire y_carry__0_n_3;
  wire y_carry__1_n_0;
  wire y_carry__1_n_1;
  wire y_carry__1_n_2;
  wire y_carry__1_n_3;
  wire y_carry__2_n_0;
  wire y_carry__2_n_1;
  wire y_carry__2_n_2;
  wire y_carry__2_n_3;
  wire y_carry__3_n_0;
  wire y_carry__3_n_1;
  wire y_carry__3_n_2;
  wire y_carry__3_n_3;
  wire y_carry__4_n_0;
  wire y_carry__4_n_1;
  wire y_carry__4_n_2;
  wire y_carry__4_n_3;
  wire y_carry__5_n_0;
  wire y_carry__5_n_1;
  wire y_carry__5_n_2;
  wire y_carry__5_n_3;
  wire y_carry__6_n_1;
  wire y_carry__6_n_2;
  wire y_carry__6_n_3;
  wire y_carry_n_0;
  wire y_carry_n_1;
  wire y_carry_n_2;
  wire y_carry_n_3;
  wire [3:3]NLW_y_carry__6_CO_UNCONNECTED;

  LUT5 #(
    .INIT(32'h0A00CA00)) 
    rf_reg_r1_0_31_12_17_i_11
       (.I0(d3[17]),
        .I1(d2[1]),
        .I2(Instr[2]),
        .I3(Instr[0]),
        .I4(Instr[1]),
        .O(\q_reg[19]_0 ));
  LUT5 #(
    .INIT(32'h0A00CA00)) 
    rf_reg_r1_0_31_12_17_i_14
       (.I0(d3[16]),
        .I1(d2[0]),
        .I2(Instr[2]),
        .I3(Instr[0]),
        .I4(Instr[1]),
        .O(\q_reg[19] ));
  LUT5 #(
    .INIT(32'h0A00CA00)) 
    rf_reg_r1_0_31_18_23_i_11
       (.I0(d3[21]),
        .I1(d2[5]),
        .I2(Instr[2]),
        .I3(Instr[0]),
        .I4(Instr[1]),
        .O(\q_reg[23]_0 ));
  LUT5 #(
    .INIT(32'h0A00CA00)) 
    rf_reg_r1_0_31_18_23_i_13
       (.I0(d3[20]),
        .I1(d2[4]),
        .I2(Instr[2]),
        .I3(Instr[0]),
        .I4(Instr[1]),
        .O(\q_reg[23] ));
  LUT5 #(
    .INIT(32'h0A00CA00)) 
    rf_reg_r1_0_31_18_23_i_15
       (.I0(d3[23]),
        .I1(d2[7]),
        .I2(Instr[2]),
        .I3(Instr[0]),
        .I4(Instr[1]),
        .O(\q_reg[23]_2 ));
  LUT5 #(
    .INIT(32'h0A00CA00)) 
    rf_reg_r1_0_31_18_23_i_17
       (.I0(d3[22]),
        .I1(d2[6]),
        .I2(Instr[2]),
        .I3(Instr[0]),
        .I4(Instr[1]),
        .O(\q_reg[23]_1 ));
  LUT5 #(
    .INIT(32'h0A00CA00)) 
    rf_reg_r1_0_31_18_23_i_7
       (.I0(d3[19]),
        .I1(d2[3]),
        .I2(Instr[2]),
        .I3(Instr[0]),
        .I4(Instr[1]),
        .O(\q_reg[19]_2 ));
  LUT5 #(
    .INIT(32'h0A00CA00)) 
    rf_reg_r1_0_31_18_23_i_9
       (.I0(d3[18]),
        .I1(d2[2]),
        .I2(Instr[2]),
        .I3(Instr[0]),
        .I4(Instr[1]),
        .O(\q_reg[19]_1 ));
  LUT5 #(
    .INIT(32'h0A00CA00)) 
    rf_reg_r1_0_31_24_29_i_11
       (.I0(d3[27]),
        .I1(d2[11]),
        .I2(Instr[2]),
        .I3(Instr[0]),
        .I4(Instr[1]),
        .O(\q_reg[27]_2 ));
  LUT5 #(
    .INIT(32'h0A00CA00)) 
    rf_reg_r1_0_31_24_29_i_13
       (.I0(d3[26]),
        .I1(d2[10]),
        .I2(Instr[2]),
        .I3(Instr[0]),
        .I4(Instr[1]),
        .O(\q_reg[27]_1 ));
  LUT5 #(
    .INIT(32'h0A00CA00)) 
    rf_reg_r1_0_31_24_29_i_7
       (.I0(d3[25]),
        .I1(d2[9]),
        .I2(Instr[2]),
        .I3(Instr[0]),
        .I4(Instr[1]),
        .O(\q_reg[27]_0 ));
  LUT5 #(
    .INIT(32'h0A00CA00)) 
    rf_reg_r1_0_31_24_29_i_9
       (.I0(d3[24]),
        .I1(d2[8]),
        .I2(Instr[2]),
        .I3(Instr[0]),
        .I4(Instr[1]),
        .O(\q_reg[27] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry
       (.CI(1'b0),
        .CO({y_carry_n_0,y_carry_n_1,y_carry_n_2,y_carry_n_3}),
        .CYINIT(1'b0),
        .DI(DI),
        .O(\q_reg[30] [3:0]),
        .S(S));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__0
       (.CI(y_carry_n_0),
        .CO({y_carry__0_n_0,y_carry__0_n_1,y_carry__0_n_2,y_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(rf_reg_r1_0_31_0_5_i_7),
        .O(\q_reg[30] [7:4]),
        .S(rf_reg_r1_0_31_0_5_i_7_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__1
       (.CI(y_carry__0_n_0),
        .CO({y_carry__1_n_0,y_carry__1_n_1,y_carry__1_n_2,y_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(rf_reg_r1_0_31_6_11_i_4),
        .O(\q_reg[30] [11:8]),
        .S(rf_reg_r1_0_31_6_11_i_4_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__2
       (.CI(y_carry__1_n_0),
        .CO({y_carry__2_n_0,y_carry__2_n_1,y_carry__2_n_2,y_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(rf_reg_r1_0_31_12_17_i_2),
        .O(\q_reg[30] [15:12]),
        .S(rf_reg_r1_0_31_12_17_i_2_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__3
       (.CI(y_carry__2_n_0),
        .CO({y_carry__3_n_0,y_carry__3_n_1,y_carry__3_n_2,y_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(rf_reg_r1_0_31_12_17_i_14_0),
        .O(d3[19:16]),
        .S(rf_reg_r1_0_31_12_17_i_14_1));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__4
       (.CI(y_carry__3_n_0),
        .CO({y_carry__4_n_0,y_carry__4_n_1,y_carry__4_n_2,y_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(rf_reg_r1_0_31_18_23_i_13_0),
        .O(d3[23:20]),
        .S(rf_reg_r1_0_31_18_23_i_13_1));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__5
       (.CI(y_carry__4_n_0),
        .CO({y_carry__5_n_0,y_carry__5_n_1,y_carry__5_n_2,y_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(rf_reg_r1_0_31_24_29_i_9_0),
        .O(d3[27:24]),
        .S(rf_reg_r1_0_31_24_29_i_9_1));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__6
       (.CI(y_carry__5_n_0),
        .CO({NLW_y_carry__6_CO_UNCONNECTED[3],y_carry__6_n_1,y_carry__6_n_2,y_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,rf_reg_r1_0_31_24_29_i_17}),
        .O(\q_reg[30] [19:16]),
        .S(rf_reg_r1_0_31_24_29_i_17_0));
endmodule

(* ORIG_REF_NAME = "alu" *) 
module design_1_top_0_0_alu
   (sum_carry__6_i_7,
    O,
    CO,
    \ALUResult[31]_INST_0_i_3 ,
    LT,
    ALUControl,
    immext,
    sum__0_carry__0_0,
    SrcA,
    S,
    \ALUResult[4]_INST_0_i_8 ,
    \ALUResult[8]_INST_0_i_3 ,
    \ALUResult[12]_INST_0_i_3 ,
    \ALUResult[16]_INST_0_i_3 ,
    \ALUResult[20]_INST_0_i_3 ,
    \ALUResult[24]_INST_0_i_3 ,
    \ALUResult[28]_INST_0_i_3 ,
    sum__0_carry__0_1,
    sum__0_carry__1_0,
    sum__0_carry__2_0,
    sum__0_carry__3_0,
    sum__0_carry__4_0,
    sum__0_carry__5_0,
    sum__0_carry__6_0,
    \q[31]_i_17 ,
    SrcB,
    \addressM[30] ,
    \addressM[30]_0 ,
    \addressM[30]_1 ,
    \addressM[30]_2 ,
    \addressM[30]_3 ,
    \addressM[30]_4 ,
    ALUControl__0,
    Instr,
    sel0);
  output [29:0]sum_carry__6_i_7;
  output [0:0]O;
  output [0:0]CO;
  output \ALUResult[31]_INST_0_i_3 ;
  output LT;
  output [0:0]ALUControl;
  output [0:0]immext;
  input sum__0_carry__0_0;
  input [31:0]SrcA;
  input [3:0]S;
  input [3:0]\ALUResult[4]_INST_0_i_8 ;
  input [3:0]\ALUResult[8]_INST_0_i_3 ;
  input [3:0]\ALUResult[12]_INST_0_i_3 ;
  input [3:0]\ALUResult[16]_INST_0_i_3 ;
  input [3:0]\ALUResult[20]_INST_0_i_3 ;
  input [3:0]\ALUResult[24]_INST_0_i_3 ;
  input [3:0]\ALUResult[28]_INST_0_i_3 ;
  input [3:0]sum__0_carry__0_1;
  input [3:0]sum__0_carry__1_0;
  input [3:0]sum__0_carry__2_0;
  input [3:0]sum__0_carry__3_0;
  input [3:0]sum__0_carry__4_0;
  input [3:0]sum__0_carry__5_0;
  input [3:0]sum__0_carry__6_0;
  input [3:0]\q[31]_i_17 ;
  input [1:0]SrcB;
  input \addressM[30] ;
  input \addressM[30]_0 ;
  input \addressM[30]_1 ;
  input \addressM[30]_2 ;
  input \addressM[30]_3 ;
  input \addressM[30]_4 ;
  input [1:0]ALUControl__0;
  input [10:0]Instr;
  input [2:0]sel0;

  wire [0:0]ALUControl;
  wire [1:0]ALUControl__0;
  wire [3:0]\ALUResult[12]_INST_0_i_3 ;
  wire [3:0]\ALUResult[16]_INST_0_i_3 ;
  wire [3:0]\ALUResult[20]_INST_0_i_3 ;
  wire [3:0]\ALUResult[24]_INST_0_i_3 ;
  wire [3:0]\ALUResult[28]_INST_0_i_3 ;
  wire \ALUResult[30]_INST_0_i_3_n_0 ;
  wire \ALUResult[31]_INST_0_i_24_n_0 ;
  wire \ALUResult[31]_INST_0_i_3 ;
  wire [3:0]\ALUResult[4]_INST_0_i_8 ;
  wire [3:0]\ALUResult[8]_INST_0_i_3 ;
  wire [0:0]CO;
  wire [10:0]Instr;
  wire LT;
  wire [0:0]O;
  wire [3:0]S;
  wire [31:0]SrcA;
  wire [1:0]SrcB;
  wire \addressM[30] ;
  wire \addressM[30]_0 ;
  wire \addressM[30]_1 ;
  wire \addressM[30]_2 ;
  wire \addressM[30]_3 ;
  wire \addressM[30]_4 ;
  wire [0:0]immext;
  wire [3:0]\q[31]_i_17 ;
  wire [2:0]sel0;
  wire [30:30]sum;
  wire sum__0_carry__0_0;
  wire [3:0]sum__0_carry__0_1;
  wire sum__0_carry__0_n_0;
  wire sum__0_carry__0_n_1;
  wire sum__0_carry__0_n_2;
  wire sum__0_carry__0_n_3;
  wire [3:0]sum__0_carry__1_0;
  wire sum__0_carry__1_n_0;
  wire sum__0_carry__1_n_1;
  wire sum__0_carry__1_n_2;
  wire sum__0_carry__1_n_3;
  wire [3:0]sum__0_carry__2_0;
  wire sum__0_carry__2_n_0;
  wire sum__0_carry__2_n_1;
  wire sum__0_carry__2_n_2;
  wire sum__0_carry__2_n_3;
  wire [3:0]sum__0_carry__3_0;
  wire sum__0_carry__3_n_0;
  wire sum__0_carry__3_n_1;
  wire sum__0_carry__3_n_2;
  wire sum__0_carry__3_n_3;
  wire [3:0]sum__0_carry__4_0;
  wire sum__0_carry__4_n_0;
  wire sum__0_carry__4_n_1;
  wire sum__0_carry__4_n_2;
  wire sum__0_carry__4_n_3;
  wire [3:0]sum__0_carry__5_0;
  wire sum__0_carry__5_n_0;
  wire sum__0_carry__5_n_1;
  wire sum__0_carry__5_n_2;
  wire sum__0_carry__5_n_3;
  wire [3:0]sum__0_carry__6_0;
  wire sum__0_carry__6_n_1;
  wire sum__0_carry__6_n_2;
  wire sum__0_carry__6_n_3;
  wire sum__0_carry_n_0;
  wire sum__0_carry_n_1;
  wire sum__0_carry_n_2;
  wire sum__0_carry_n_3;
  wire sum_carry__0_n_0;
  wire sum_carry__0_n_1;
  wire sum_carry__0_n_2;
  wire sum_carry__0_n_3;
  wire sum_carry__1_n_0;
  wire sum_carry__1_n_1;
  wire sum_carry__1_n_2;
  wire sum_carry__1_n_3;
  wire sum_carry__2_n_0;
  wire sum_carry__2_n_1;
  wire sum_carry__2_n_2;
  wire sum_carry__2_n_3;
  wire sum_carry__3_n_0;
  wire sum_carry__3_n_1;
  wire sum_carry__3_n_2;
  wire sum_carry__3_n_3;
  wire sum_carry__4_n_0;
  wire sum_carry__4_n_1;
  wire sum_carry__4_n_2;
  wire sum_carry__4_n_3;
  wire sum_carry__5_n_0;
  wire sum_carry__5_n_1;
  wire sum_carry__5_n_2;
  wire sum_carry__5_n_3;
  wire [29:0]sum_carry__6_i_7;
  wire sum_carry__6_n_1;
  wire sum_carry__6_n_2;
  wire sum_carry__6_n_3;
  wire sum_carry_n_0;
  wire sum_carry_n_1;
  wire sum_carry_n_2;
  wire sum_carry_n_3;
  wire [3:0]NLW_sum__0_carry_O_UNCONNECTED;
  wire [3:0]NLW_sum__0_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_sum__0_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_sum__0_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_sum__0_carry__3_O_UNCONNECTED;
  wire [3:0]NLW_sum__0_carry__4_O_UNCONNECTED;
  wire [3:0]NLW_sum__0_carry__5_O_UNCONNECTED;
  wire [3:0]NLW_sum__0_carry__6_O_UNCONNECTED;
  wire [3:3]NLW_sum_carry__6_CO_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFFDFFFDE00400048)) 
    \ALUResult[0]_INST_0_i_18 
       (.I0(SrcB[1]),
        .I1(SrcA[31]),
        .I2(ALUControl),
        .I3(ALUControl__0[0]),
        .I4(ALUControl__0[1]),
        .I5(O),
        .O(LT));
  LUT5 #(
    .INIT(32'hF0CCAACC)) 
    \ALUResult[30]_INST_0 
       (.I0(SrcB[0]),
        .I1(\addressM[30] ),
        .I2(\ALUResult[30]_INST_0_i_3_n_0 ),
        .I3(\addressM[30]_0 ),
        .I4(\addressM[30]_1 ),
        .O(\ALUResult[31]_INST_0_i_3 ));
  LUT6 #(
    .INIT(64'hFF00FCFCAAAAC0C0)) 
    \ALUResult[30]_INST_0_i_3 
       (.I0(sum),
        .I1(SrcA[30]),
        .I2(SrcB[0]),
        .I3(\addressM[30]_2 ),
        .I4(\addressM[30]_3 ),
        .I5(\addressM[30]_4 ),
        .O(\ALUResult[30]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h8F00F8F8)) 
    \ALUResult[31]_INST_0_i_12 
       (.I0(\ALUResult[31]_INST_0_i_24_n_0 ),
        .I1(Instr[1]),
        .I2(Instr[3]),
        .I3(Instr[2]),
        .I4(Instr[0]),
        .O(ALUControl));
  LUT5 #(
    .INIT(32'h0CF0F0F8)) 
    \ALUResult[31]_INST_0_i_24 
       (.I0(Instr[2]),
        .I1(Instr[9]),
        .I2(Instr[6]),
        .I3(Instr[7]),
        .I4(Instr[5]),
        .O(\ALUResult[31]_INST_0_i_24_n_0 ));
  CARRY4 sum__0_carry
       (.CI(1'b0),
        .CO({sum__0_carry_n_0,sum__0_carry_n_1,sum__0_carry_n_2,sum__0_carry_n_3}),
        .CYINIT(sum__0_carry__0_0),
        .DI(SrcA[3:0]),
        .O(NLW_sum__0_carry_O_UNCONNECTED[3:0]),
        .S(sum__0_carry__0_1));
  CARRY4 sum__0_carry__0
       (.CI(sum__0_carry_n_0),
        .CO({sum__0_carry__0_n_0,sum__0_carry__0_n_1,sum__0_carry__0_n_2,sum__0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(SrcA[7:4]),
        .O(NLW_sum__0_carry__0_O_UNCONNECTED[3:0]),
        .S(sum__0_carry__1_0));
  CARRY4 sum__0_carry__1
       (.CI(sum__0_carry__0_n_0),
        .CO({sum__0_carry__1_n_0,sum__0_carry__1_n_1,sum__0_carry__1_n_2,sum__0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(SrcA[11:8]),
        .O(NLW_sum__0_carry__1_O_UNCONNECTED[3:0]),
        .S(sum__0_carry__2_0));
  CARRY4 sum__0_carry__2
       (.CI(sum__0_carry__1_n_0),
        .CO({sum__0_carry__2_n_0,sum__0_carry__2_n_1,sum__0_carry__2_n_2,sum__0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(SrcA[15:12]),
        .O(NLW_sum__0_carry__2_O_UNCONNECTED[3:0]),
        .S(sum__0_carry__3_0));
  CARRY4 sum__0_carry__3
       (.CI(sum__0_carry__2_n_0),
        .CO({sum__0_carry__3_n_0,sum__0_carry__3_n_1,sum__0_carry__3_n_2,sum__0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(SrcA[19:16]),
        .O(NLW_sum__0_carry__3_O_UNCONNECTED[3:0]),
        .S(sum__0_carry__4_0));
  CARRY4 sum__0_carry__4
       (.CI(sum__0_carry__3_n_0),
        .CO({sum__0_carry__4_n_0,sum__0_carry__4_n_1,sum__0_carry__4_n_2,sum__0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(SrcA[23:20]),
        .O(NLW_sum__0_carry__4_O_UNCONNECTED[3:0]),
        .S(sum__0_carry__5_0));
  CARRY4 sum__0_carry__5
       (.CI(sum__0_carry__4_n_0),
        .CO({sum__0_carry__5_n_0,sum__0_carry__5_n_1,sum__0_carry__5_n_2,sum__0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(SrcA[27:24]),
        .O(NLW_sum__0_carry__5_O_UNCONNECTED[3:0]),
        .S(sum__0_carry__6_0));
  CARRY4 sum__0_carry__6
       (.CI(sum__0_carry__5_n_0),
        .CO({CO,sum__0_carry__6_n_1,sum__0_carry__6_n_2,sum__0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI(SrcA[31:28]),
        .O(NLW_sum__0_carry__6_O_UNCONNECTED[3:0]),
        .S(\q[31]_i_17 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_carry
       (.CI(1'b0),
        .CO({sum_carry_n_0,sum_carry_n_1,sum_carry_n_2,sum_carry_n_3}),
        .CYINIT(sum__0_carry__0_0),
        .DI(SrcA[3:0]),
        .O(sum_carry__6_i_7[3:0]),
        .S(S));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_carry__0
       (.CI(sum_carry_n_0),
        .CO({sum_carry__0_n_0,sum_carry__0_n_1,sum_carry__0_n_2,sum_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(SrcA[7:4]),
        .O(sum_carry__6_i_7[7:4]),
        .S(\ALUResult[4]_INST_0_i_8 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_carry__1
       (.CI(sum_carry__0_n_0),
        .CO({sum_carry__1_n_0,sum_carry__1_n_1,sum_carry__1_n_2,sum_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(SrcA[11:8]),
        .O(sum_carry__6_i_7[11:8]),
        .S(\ALUResult[8]_INST_0_i_3 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_carry__2
       (.CI(sum_carry__1_n_0),
        .CO({sum_carry__2_n_0,sum_carry__2_n_1,sum_carry__2_n_2,sum_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(SrcA[15:12]),
        .O(sum_carry__6_i_7[15:12]),
        .S(\ALUResult[12]_INST_0_i_3 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_carry__3
       (.CI(sum_carry__2_n_0),
        .CO({sum_carry__3_n_0,sum_carry__3_n_1,sum_carry__3_n_2,sum_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(SrcA[19:16]),
        .O(sum_carry__6_i_7[19:16]),
        .S(\ALUResult[16]_INST_0_i_3 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_carry__4
       (.CI(sum_carry__3_n_0),
        .CO({sum_carry__4_n_0,sum_carry__4_n_1,sum_carry__4_n_2,sum_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(SrcA[23:20]),
        .O(sum_carry__6_i_7[23:20]),
        .S(\ALUResult[20]_INST_0_i_3 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_carry__5
       (.CI(sum_carry__4_n_0),
        .CO({sum_carry__5_n_0,sum_carry__5_n_1,sum_carry__5_n_2,sum_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(SrcA[27:24]),
        .O(sum_carry__6_i_7[27:24]),
        .S(\ALUResult[24]_INST_0_i_3 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_carry__6
       (.CI(sum_carry__5_n_0),
        .CO({NLW_sum_carry__6_CO_UNCONNECTED[3],sum_carry__6_n_1,sum_carry__6_n_2,sum_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,SrcA[30:28]}),
        .O({O,sum,sum_carry__6_i_7[29:28]}),
        .S(\ALUResult[28]_INST_0_i_3 ));
  LUT6 #(
    .INIT(64'h00000000FB3BC808)) 
    y_carry__1_i_5
       (.I0(Instr[4]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(Instr[8]),
        .I4(Instr[10]),
        .I5(sel0[2]),
        .O(immext));
endmodule

(* ORIG_REF_NAME = "datapath" *) 
module design_1_top_0_0_datapath
   (\q_reg[0] ,
    PC,
    \ALUResult[31]_INST_0_i_6 ,
    \ALUResult[31]_INST_0_i_3 ,
    \ALUResult[31]_INST_0_i_3_0 ,
    \ALUResult[31]_INST_0_i_3_1 ,
    \ALUResult[31]_INST_0_i_3_2 ,
    \ALUResult[0]_INST_0_i_3 ,
    \ALUResult[1]_INST_0_i_4 ,
    ALUResult,
    WriteData,
    PCReady,
    clk,
    reset,
    Instr,
    ReadData);
  output \q_reg[0] ;
  output [30:0]PC;
  output \ALUResult[31]_INST_0_i_6 ;
  output \ALUResult[31]_INST_0_i_3 ;
  output \ALUResult[31]_INST_0_i_3_0 ;
  output \ALUResult[31]_INST_0_i_3_1 ;
  output \ALUResult[31]_INST_0_i_3_2 ;
  output \ALUResult[0]_INST_0_i_3 ;
  output \ALUResult[1]_INST_0_i_4 ;
  output [24:0]ALUResult;
  output [31:0]WriteData;
  input PCReady;
  input clk;
  input reset;
  input [29:0]Instr;
  input [31:0]ReadData;

  wire [0:0]ALUControl;
  wire [2:1]ALUControl__0;
  wire [24:0]ALUResult;
  wire \ALUResult[0]_INST_0_i_3 ;
  wire \ALUResult[1]_INST_0_i_4 ;
  wire \ALUResult[31]_INST_0_i_3 ;
  wire \ALUResult[31]_INST_0_i_3_0 ;
  wire \ALUResult[31]_INST_0_i_3_1 ;
  wire \ALUResult[31]_INST_0_i_3_2 ;
  wire \ALUResult[31]_INST_0_i_6 ;
  wire [29:0]Instr;
  wire LT;
  wire [30:0]PC;
  wire PCReady;
  wire [1:0]PCSrc;
  wire [31:0]ReadData;
  wire [31:0]SrcA;
  wire [31:30]SrcB;
  wire [31:0]WriteData;
  wire clk;
  wire [31:1]d2;
  wire [31:0]d3;
  wire [28:0]\ext/immext ;
  wire p_3_in;
  wire pcaddbranch_n_20;
  wire pcaddbranch_n_21;
  wire pcaddbranch_n_22;
  wire pcaddbranch_n_23;
  wire pcaddbranch_n_24;
  wire pcaddbranch_n_25;
  wire pcaddbranch_n_26;
  wire pcaddbranch_n_27;
  wire pcaddbranch_n_28;
  wire pcaddbranch_n_29;
  wire pcaddbranch_n_30;
  wire pcaddbranch_n_31;
  wire pcreg_n_100;
  wire pcreg_n_101;
  wire pcreg_n_102;
  wire pcreg_n_103;
  wire pcreg_n_104;
  wire pcreg_n_105;
  wire pcreg_n_106;
  wire pcreg_n_107;
  wire pcreg_n_108;
  wire pcreg_n_109;
  wire pcreg_n_110;
  wire pcreg_n_111;
  wire pcreg_n_112;
  wire pcreg_n_113;
  wire pcreg_n_114;
  wire pcreg_n_115;
  wire pcreg_n_116;
  wire pcreg_n_117;
  wire pcreg_n_118;
  wire pcreg_n_119;
  wire pcreg_n_120;
  wire pcreg_n_121;
  wire pcreg_n_122;
  wire pcreg_n_123;
  wire pcreg_n_124;
  wire pcreg_n_125;
  wire pcreg_n_126;
  wire pcreg_n_127;
  wire pcreg_n_32;
  wire pcreg_n_33;
  wire pcreg_n_34;
  wire pcreg_n_39;
  wire pcreg_n_43;
  wire pcreg_n_44;
  wire pcreg_n_45;
  wire pcreg_n_46;
  wire pcreg_n_47;
  wire pcreg_n_48;
  wire pcreg_n_49;
  wire pcreg_n_50;
  wire pcreg_n_51;
  wire pcreg_n_54;
  wire pcreg_n_55;
  wire pcreg_n_56;
  wire pcreg_n_85;
  wire pcreg_n_86;
  wire pcreg_n_87;
  wire pcreg_n_88;
  wire pcreg_n_89;
  wire pcreg_n_90;
  wire pcreg_n_91;
  wire pcreg_n_92;
  wire pcreg_n_93;
  wire pcreg_n_94;
  wire pcreg_n_97;
  wire pcreg_n_98;
  wire pcreg_n_99;
  wire \q_reg[0] ;
  wire rd11;
  wire rd21;
  wire reset;
  wire rf_n_10;
  wire rf_n_11;
  wire rf_n_113;
  wire rf_n_114;
  wire rf_n_115;
  wire rf_n_116;
  wire rf_n_117;
  wire rf_n_118;
  wire rf_n_119;
  wire rf_n_120;
  wire rf_n_121;
  wire rf_n_122;
  wire rf_n_123;
  wire rf_n_124;
  wire rf_n_125;
  wire rf_n_126;
  wire rf_n_127;
  wire rf_n_128;
  wire rf_n_129;
  wire rf_n_130;
  wire rf_n_131;
  wire rf_n_132;
  wire rf_n_133;
  wire rf_n_134;
  wire rf_n_135;
  wire rf_n_136;
  wire rf_n_137;
  wire rf_n_138;
  wire rf_n_139;
  wire rf_n_140;
  wire rf_n_141;
  wire rf_n_142;
  wire rf_n_143;
  wire rf_n_144;
  wire rf_n_145;
  wire rf_n_146;
  wire rf_n_147;
  wire rf_n_148;
  wire rf_n_149;
  wire rf_n_150;
  wire rf_n_151;
  wire rf_n_152;
  wire rf_n_153;
  wire rf_n_154;
  wire rf_n_155;
  wire rf_n_156;
  wire rf_n_157;
  wire rf_n_158;
  wire rf_n_159;
  wire rf_n_160;
  wire rf_n_161;
  wire rf_n_162;
  wire rf_n_163;
  wire rf_n_164;
  wire rf_n_165;
  wire rf_n_166;
  wire rf_n_167;
  wire rf_n_168;
  wire rf_n_169;
  wire rf_n_170;
  wire rf_n_171;
  wire rf_n_172;
  wire rf_n_173;
  wire rf_n_174;
  wire rf_n_175;
  wire rf_n_176;
  wire rf_n_177;
  wire rf_n_178;
  wire rf_n_179;
  wire rf_n_180;
  wire rf_n_181;
  wire rf_n_182;
  wire rf_n_183;
  wire rf_n_184;
  wire rf_n_185;
  wire rf_n_186;
  wire rf_n_187;
  wire rf_n_188;
  wire rf_n_189;
  wire rf_n_190;
  wire rf_n_191;
  wire rf_n_192;
  wire rf_n_193;
  wire rf_n_194;
  wire rf_n_195;
  wire rf_n_196;
  wire rf_n_197;
  wire rf_n_198;
  wire rf_n_199;
  wire rf_n_200;
  wire rf_n_201;
  wire rf_n_202;
  wire rf_n_203;
  wire rf_n_204;
  wire rf_n_205;
  wire rf_n_206;
  wire rf_n_207;
  wire rf_n_208;
  wire rf_n_209;
  wire rf_n_37;
  wire rf_n_38;
  wire rf_n_39;
  wire rf_n_40;
  wire rf_n_41;
  wire rf_n_42;
  wire rf_n_6;
  wire rf_n_77;
  wire rf_n_78;
  wire rf_n_79;
  wire rf_n_80;
  wire [1:0]s;
  wire [2:0]sel0;
  wire [29:0]sum;
  wire [32:32]sum_extended;
  wire [31:0]wd3;

  design_1_top_0_0_alu alu
       (.ALUControl(ALUControl),
        .ALUControl__0(ALUControl__0),
        .\ALUResult[12]_INST_0_i_3 ({rf_n_189,rf_n_190,rf_n_191,rf_n_192}),
        .\ALUResult[16]_INST_0_i_3 ({rf_n_193,rf_n_194,rf_n_195,rf_n_196}),
        .\ALUResult[20]_INST_0_i_3 ({rf_n_197,rf_n_198,rf_n_199,rf_n_200}),
        .\ALUResult[24]_INST_0_i_3 ({rf_n_201,rf_n_202,rf_n_203,rf_n_204}),
        .\ALUResult[28]_INST_0_i_3 ({rf_n_205,rf_n_206,rf_n_207,rf_n_208}),
        .\ALUResult[31]_INST_0_i_3 (\ALUResult[31]_INST_0_i_3 ),
        .\ALUResult[4]_INST_0_i_8 ({rf_n_181,rf_n_182,rf_n_183,rf_n_184}),
        .\ALUResult[8]_INST_0_i_3 ({rf_n_185,rf_n_186,rf_n_187,rf_n_188}),
        .CO(sum_extended),
        .Instr({Instr[29:28],Instr[18],Instr[12:10],Instr[5:2],Instr[0]}),
        .LT(LT),
        .O(p_3_in),
        .S({rf_n_177,rf_n_178,rf_n_179,rf_n_180}),
        .SrcA(SrcA),
        .SrcB(SrcB),
        .\addressM[30] (rf_n_78),
        .\addressM[30]_0 (pcreg_n_47),
        .\addressM[30]_1 (pcreg_n_48),
        .\addressM[30]_2 (rf_n_77),
        .\addressM[30]_3 (pcreg_n_50),
        .\addressM[30]_4 (pcreg_n_51),
        .immext(\ext/immext [11]),
        .\q[31]_i_17 ({rf_n_145,rf_n_146,rf_n_147,rf_n_148}),
        .sel0(sel0),
        .sum__0_carry__0_0(rf_n_209),
        .sum__0_carry__0_1({rf_n_173,rf_n_174,rf_n_175,rf_n_176}),
        .sum__0_carry__1_0({rf_n_169,rf_n_170,rf_n_171,rf_n_172}),
        .sum__0_carry__2_0({rf_n_165,rf_n_166,rf_n_167,rf_n_168}),
        .sum__0_carry__3_0({rf_n_161,rf_n_162,rf_n_163,rf_n_164}),
        .sum__0_carry__4_0({rf_n_157,rf_n_158,rf_n_159,rf_n_160}),
        .sum__0_carry__5_0({rf_n_153,rf_n_154,rf_n_155,rf_n_156}),
        .sum__0_carry__6_0({rf_n_149,rf_n_150,rf_n_151,rf_n_152}),
        .sum_carry__6_i_7(sum));
  design_1_top_0_0_adder pcadd4
       (.DI(PC[2:0]),
        .Instr({Instr[3:2],Instr[0]}),
        .S(pcreg_n_98),
        .d2(d2),
        .d3(d3[7:1]),
        .\q[7]_i_8 (PC[6:3]),
        .rf_reg_r1_0_31_0_5(rf_n_10),
        .rf_reg_r1_0_31_0_5_0(rf_n_11),
        .rf_reg_r1_0_31_0_5_1(rf_n_37),
        .rf_reg_r1_0_31_0_5_2(rf_n_38),
        .rf_reg_r1_0_31_0_5_3(rf_n_39),
        .rf_reg_r1_0_31_12_17_i_1(PC[14:11]),
        .rf_reg_r1_0_31_12_17_i_11(PC[18:15]),
        .rf_reg_r1_0_31_18_23_i_11(PC[22:19]),
        .rf_reg_r1_0_31_24_29_i_15(PC[29:27]),
        .rf_reg_r1_0_31_24_29_i_15_0(PC[30]),
        .rf_reg_r1_0_31_24_29_i_7(PC[26:23]),
        .rf_reg_r1_0_31_6_11(rf_n_40),
        .rf_reg_r1_0_31_6_11_0(rf_n_41),
        .rf_reg_r1_0_31_6_11_i_3(PC[10:7]),
        .wd3(wd3[7:1]));
  design_1_top_0_0_adder_0 pcaddbranch
       (.DI({PC[2:0],\q_reg[0] }),
        .Instr({Instr[3:2],Instr[0]}),
        .S({pcreg_n_100,pcreg_n_101,pcreg_n_102,pcreg_n_103}),
        .d2(d2[27:16]),
        .\q_reg[19] (pcaddbranch_n_20),
        .\q_reg[19]_0 (pcaddbranch_n_21),
        .\q_reg[19]_1 (pcaddbranch_n_22),
        .\q_reg[19]_2 (pcaddbranch_n_23),
        .\q_reg[23] (pcaddbranch_n_24),
        .\q_reg[23]_0 (pcaddbranch_n_25),
        .\q_reg[23]_1 (pcaddbranch_n_26),
        .\q_reg[23]_2 (pcaddbranch_n_27),
        .\q_reg[27] (pcaddbranch_n_28),
        .\q_reg[27]_0 (pcaddbranch_n_29),
        .\q_reg[27]_1 (pcaddbranch_n_30),
        .\q_reg[27]_2 (pcaddbranch_n_31),
        .\q_reg[30] ({d3[31:28],d3[15:0]}),
        .rf_reg_r1_0_31_0_5_i_7(PC[6:3]),
        .rf_reg_r1_0_31_0_5_i_7_0({pcreg_n_104,pcreg_n_105,pcreg_n_106,pcreg_n_107}),
        .rf_reg_r1_0_31_12_17_i_14_0(PC[18:15]),
        .rf_reg_r1_0_31_12_17_i_14_1({pcreg_n_116,pcreg_n_117,pcreg_n_118,pcreg_n_119}),
        .rf_reg_r1_0_31_12_17_i_2(PC[14:11]),
        .rf_reg_r1_0_31_12_17_i_2_0({pcreg_n_112,pcreg_n_113,pcreg_n_114,pcreg_n_115}),
        .rf_reg_r1_0_31_18_23_i_13_0(PC[22:19]),
        .rf_reg_r1_0_31_18_23_i_13_1({pcreg_n_120,pcreg_n_121,pcreg_n_122,pcreg_n_123}),
        .rf_reg_r1_0_31_24_29_i_17(PC[29:27]),
        .rf_reg_r1_0_31_24_29_i_17_0({pcreg_n_88,pcreg_n_89,pcreg_n_90,pcreg_n_91}),
        .rf_reg_r1_0_31_24_29_i_9_0(PC[26:23]),
        .rf_reg_r1_0_31_24_29_i_9_1({pcreg_n_124,pcreg_n_125,pcreg_n_126,pcreg_n_127}),
        .rf_reg_r1_0_31_6_11_i_4(PC[10:7]),
        .rf_reg_r1_0_31_6_11_i_4_0({pcreg_n_108,pcreg_n_109,pcreg_n_110,pcreg_n_111}));
  design_1_top_0_0_flopenr pcreg
       (.ALUControl(ALUControl),
        .ALUControl__0(ALUControl__0),
        .ALUResult(ALUResult[24]),
        .\ALUResult[19]_INST_0_i_5_0 (pcreg_n_86),
        .\ALUResult[30]_INST_0_i_4_0 (pcreg_n_99),
        .\ALUResult[30]_INST_0_i_5_0 (pcreg_n_92),
        .\ALUResult[31]_INST_0_i_12 (pcreg_n_54),
        .\ALUResult[31]_INST_0_i_12_0 (pcreg_n_55),
        .\ALUResult[31]_INST_0_i_14_0 (pcreg_n_47),
        .\ALUResult[31]_INST_0_i_14_1 (pcreg_n_48),
        .\ALUResult[31]_INST_0_i_16_0 (pcreg_n_39),
        .\ALUResult[31]_INST_0_i_16_1 (pcreg_n_43),
        .\ALUResult[31]_INST_0_i_16_2 (pcreg_n_44),
        .\ALUResult[31]_INST_0_i_16_3 (pcreg_n_45),
        .\ALUResult[31]_INST_0_i_18_0 ({\ext/immext [28:12],\ext/immext [10:0]}),
        .\ALUResult[31]_INST_0_i_18_1 (pcreg_n_87),
        .\ALUResult[31]_INST_0_i_22_0 (pcreg_n_51),
        .\ALUResult[31]_INST_0_i_23_0 (pcreg_n_50),
        .\ALUResult[31]_INST_0_i_3_0 (pcreg_n_46),
        .\ALUResult[31]_INST_0_i_9_0 (pcreg_n_49),
        .DI({PC[2:0],\q_reg[0] }),
        .Instr(Instr),
        .O({rf_n_113,rf_n_114,rf_n_115,rf_n_116}),
        .PCReady(PCReady),
        .PCSrc(PCSrc[1]),
        .S({pcreg_n_32,pcreg_n_33,pcreg_n_34}),
        .clk(clk),
        .d2(d2[31:28]),
        .\q[31]_i_11_0 (PCSrc[0]),
        .\q[31]_i_15_0 (pcreg_n_97),
        .\q[31]_i_18_0 (pcreg_n_56),
        .\q_reg[11]_0 (PC[10:7]),
        .\q_reg[11]_1 ({pcreg_n_108,pcreg_n_109,pcreg_n_110,pcreg_n_111}),
        .\q_reg[11]_2 ({rf_n_121,rf_n_122,rf_n_123,rf_n_124}),
        .\q_reg[15]_0 (PC[14:11]),
        .\q_reg[15]_1 ({pcreg_n_112,pcreg_n_113,pcreg_n_114,pcreg_n_115}),
        .\q_reg[15]_2 ({rf_n_125,rf_n_126,rf_n_127,rf_n_128}),
        .\q_reg[19]_0 (PC[18:15]),
        .\q_reg[19]_1 ({pcreg_n_116,pcreg_n_117,pcreg_n_118,pcreg_n_119}),
        .\q_reg[19]_2 ({rf_n_129,rf_n_130,rf_n_131,rf_n_132}),
        .\q_reg[23]_0 (PC[22:19]),
        .\q_reg[23]_1 ({pcreg_n_120,pcreg_n_121,pcreg_n_122,pcreg_n_123}),
        .\q_reg[23]_2 ({rf_n_133,rf_n_134,rf_n_135,rf_n_136}),
        .\q_reg[27]_0 (PC[26:23]),
        .\q_reg[27]_1 ({pcreg_n_124,pcreg_n_125,pcreg_n_126,pcreg_n_127}),
        .\q_reg[27]_2 ({rf_n_137,rf_n_138,rf_n_139,rf_n_140}),
        .\q_reg[2]_0 (pcreg_n_98),
        .\q_reg[30]_0 (PC[29:27]),
        .\q_reg[30]_1 (pcreg_n_93),
        .\q_reg[30]_2 (pcreg_n_94),
        .\q_reg[31]_0 (PC[30]),
        .\q_reg[31]_1 ({pcreg_n_88,pcreg_n_89,pcreg_n_90,pcreg_n_91}),
        .\q_reg[31]_2 ({rf_n_141,rf_n_142,rf_n_143,rf_n_144}),
        .\q_reg[31]_3 (\ALUResult[31]_INST_0_i_6 ),
        .\q_reg[31]_4 (\ALUResult[31]_INST_0_i_3 ),
        .\q_reg[3]_0 ({pcreg_n_100,pcreg_n_101,pcreg_n_102,pcreg_n_103}),
        .\q_reg[7]_0 (PC[6:3]),
        .\q_reg[7]_1 ({pcreg_n_104,pcreg_n_105,pcreg_n_106,pcreg_n_107}),
        .\q_reg[7]_2 ({rf_n_117,rf_n_118,rf_n_119,rf_n_120}),
        .rd11(rd11),
        .rd21(rd21),
        .reset(reset),
        .rf_reg_r1_0_31_0_5(rf_n_6),
        .rf_reg_r1_0_31_30_31_i_1__0_0({d3[31:28],d3[0]}),
        .rf_reg_r2_0_31_30_31(rf_n_79),
        .rf_reg_r2_0_31_30_31__0(rf_n_42),
        .rf_reg_r2_0_31_30_31__0_0(rf_n_80),
        .s(s),
        .sel0(sel0),
        .wd3({wd3[31:30],wd3[0]}),
        .y_carry__1(\ext/immext [11]),
        .y_carry_i_5_0(pcreg_n_85));
  design_1_top_0_0_regfile rf
       (.ALUControl(ALUControl),
        .ALUControl__0(ALUControl__0[1]),
        .ALUResult(ALUResult),
        .\ALUResult[0]_INST_0_i_3_0 (\ALUResult[0]_INST_0_i_3 ),
        .\ALUResult[0]_INST_0_i_6_0 (rf_n_209),
        .\ALUResult[1]_INST_0_i_4_0 (\ALUResult[1]_INST_0_i_4 ),
        .\ALUResult[30]_INST_0_i_10_0 (pcreg_n_54),
        .\ALUResult[30]_INST_0_i_1_0 (rf_n_77),
        .\ALUResult[30]_INST_0_i_9_0 (rf_n_78),
        .\ALUResult[31]_INST_0_i_3 (\ALUResult[31]_INST_0_i_3_0 ),
        .\ALUResult[31]_INST_0_i_3_0 (\ALUResult[31]_INST_0_i_3_1 ),
        .\ALUResult[31]_INST_0_i_3_1 (\ALUResult[31]_INST_0_i_3_2 ),
        .\ALUResult[31]_INST_0_i_6_0 (\ALUResult[31]_INST_0_i_6 ),
        .\ALUResult[7]_INST_0_i_25_0 (pcreg_n_44),
        .\ALUResult[7]_INST_0_i_25_1 (pcreg_n_39),
        .\ALUResult[7]_INST_0_i_25_2 (pcreg_n_45),
        .CO(sum_extended),
        .DI({PC[2:0],\q_reg[0] }),
        .Instr({Instr[29:5],Instr[3:2],Instr[0]}),
        .LT(LT),
        .O(p_3_in),
        .PCSrc(PCSrc[1]),
        .ReadData(ReadData),
        .S({pcreg_n_32,pcreg_n_33,pcreg_n_34}),
        .SrcA(SrcA),
        .WriteData(WriteData),
        .\addressM[0] (pcreg_n_48),
        .\addressM[0]_0 (pcreg_n_47),
        .\addressM[0]_1 (pcreg_n_50),
        .\addressM[0]_2 (pcreg_n_51),
        .\addressM[11] (pcreg_n_85),
        .\addressM[16] (pcreg_n_55),
        .\addressM[16]_0 (pcreg_n_49),
        .\addressM[1] (pcreg_n_43),
        .\addressM[20] (pcreg_n_92),
        .\addressM[29] (sum),
        .clk(clk),
        .clk_0(SrcB),
        .clk_1({rf_n_145,rf_n_146,rf_n_147,rf_n_148}),
        .clk_10({rf_n_181,rf_n_182,rf_n_183,rf_n_184}),
        .clk_11({rf_n_185,rf_n_186,rf_n_187,rf_n_188}),
        .clk_12({rf_n_189,rf_n_190,rf_n_191,rf_n_192}),
        .clk_13({rf_n_193,rf_n_194,rf_n_195,rf_n_196}),
        .clk_14({rf_n_197,rf_n_198,rf_n_199,rf_n_200}),
        .clk_15({rf_n_201,rf_n_202,rf_n_203,rf_n_204}),
        .clk_16({rf_n_205,rf_n_206,rf_n_207,rf_n_208}),
        .clk_2({rf_n_149,rf_n_150,rf_n_151,rf_n_152}),
        .clk_3({rf_n_153,rf_n_154,rf_n_155,rf_n_156}),
        .clk_4({rf_n_157,rf_n_158,rf_n_159,rf_n_160}),
        .clk_5({rf_n_161,rf_n_162,rf_n_163,rf_n_164}),
        .clk_6({rf_n_165,rf_n_166,rf_n_167,rf_n_168}),
        .clk_7({rf_n_169,rf_n_170,rf_n_171,rf_n_172}),
        .clk_8({rf_n_173,rf_n_174,rf_n_175,rf_n_176}),
        .clk_9({rf_n_177,rf_n_178,rf_n_179,rf_n_180}),
        .d2(d2[28:1]),
        .immext(\ext/immext ),
        .\q[31]_i_25_0 (pcreg_n_46),
        .\q[31]_i_5 (pcreg_n_97),
        .\q[31]_i_5_0 (pcreg_n_56),
        .\q[31]_i_9_0 (\ALUResult[31]_INST_0_i_3 ),
        .\q_reg[11] ({rf_n_121,rf_n_122,rf_n_123,rf_n_124}),
        .\q_reg[11]_0 (PC[10:7]),
        .\q_reg[15] ({rf_n_125,rf_n_126,rf_n_127,rf_n_128}),
        .\q_reg[15]_0 (PC[14:11]),
        .\q_reg[19] ({rf_n_129,rf_n_130,rf_n_131,rf_n_132}),
        .\q_reg[19]_0 (pcreg_n_87),
        .\q_reg[19]_1 (pcreg_n_86),
        .\q_reg[19]_2 (PC[18:15]),
        .\q_reg[23] ({rf_n_133,rf_n_134,rf_n_135,rf_n_136}),
        .\q_reg[23]_0 (PC[22:19]),
        .\q_reg[27] ({rf_n_137,rf_n_138,rf_n_139,rf_n_140}),
        .\q_reg[27]_0 (PC[26:23]),
        .\q_reg[31] ({rf_n_141,rf_n_142,rf_n_143,rf_n_144}),
        .\q_reg[31]_0 (pcreg_n_99),
        .\q_reg[31]_1 (PC[27]),
        .\q_reg[3] ({rf_n_113,rf_n_114,rf_n_115,rf_n_116}),
        .\q_reg[3]_0 (PCSrc[0]),
        .\q_reg[7] ({rf_n_117,rf_n_118,rf_n_119,rf_n_120}),
        .\q_reg[7]_0 (PC[6:3]),
        .rd11(rd11),
        .rd21(rd21),
        .\readDataM[0] (rf_n_6),
        .\readDataM[15] (rf_n_42),
        .\readDataM[1] (rf_n_10),
        .\readDataM[2] (rf_n_11),
        .\readDataM[30] (rf_n_79),
        .\readDataM[31] (rf_n_80),
        .\readDataM[3] (rf_n_37),
        .\readDataM[4] (rf_n_38),
        .\readDataM[5] (rf_n_39),
        .\readDataM[6] (rf_n_40),
        .\readDataM[7] (rf_n_41),
        .rf_reg_r2_0_31_12_17_0(d3[15:8]),
        .rf_reg_r2_0_31_12_17_1(pcaddbranch_n_20),
        .rf_reg_r2_0_31_12_17_2(pcaddbranch_n_21),
        .rf_reg_r2_0_31_18_23_0(pcaddbranch_n_22),
        .rf_reg_r2_0_31_18_23_1(pcaddbranch_n_23),
        .rf_reg_r2_0_31_18_23_2(pcaddbranch_n_24),
        .rf_reg_r2_0_31_18_23_3(pcaddbranch_n_25),
        .rf_reg_r2_0_31_18_23_4(pcaddbranch_n_26),
        .rf_reg_r2_0_31_18_23_5(pcaddbranch_n_27),
        .rf_reg_r2_0_31_24_29_0(pcaddbranch_n_28),
        .rf_reg_r2_0_31_24_29_1(pcaddbranch_n_29),
        .rf_reg_r2_0_31_24_29_2(pcaddbranch_n_30),
        .rf_reg_r2_0_31_24_29_3(pcaddbranch_n_31),
        .rf_reg_r2_0_31_24_29_4(pcreg_n_93),
        .rf_reg_r2_0_31_24_29_5(pcreg_n_94),
        .s(s),
        .sel0(sel0),
        .\writeDataM[31] ({wd3[31:30],wd3[7:0]}));
endmodule

(* ORIG_REF_NAME = "flopenr" *) 
module design_1_top_0_0_flopenr
   (DI,
    \q_reg[7]_0 ,
    \q_reg[11]_0 ,
    \q_reg[15]_0 ,
    \q_reg[19]_0 ,
    \q_reg[23]_0 ,
    \q_reg[27]_0 ,
    \q_reg[30]_0 ,
    \q_reg[31]_0 ,
    S,
    \q[31]_i_11_0 ,
    wd3,
    \ALUResult[31]_INST_0_i_16_0 ,
    sel0,
    \ALUResult[31]_INST_0_i_16_1 ,
    \ALUResult[31]_INST_0_i_16_2 ,
    \ALUResult[31]_INST_0_i_16_3 ,
    \ALUResult[31]_INST_0_i_3_0 ,
    \ALUResult[31]_INST_0_i_14_0 ,
    \ALUResult[31]_INST_0_i_14_1 ,
    \ALUResult[31]_INST_0_i_9_0 ,
    \ALUResult[31]_INST_0_i_23_0 ,
    \ALUResult[31]_INST_0_i_22_0 ,
    ALUControl__0,
    \ALUResult[31]_INST_0_i_12 ,
    \ALUResult[31]_INST_0_i_12_0 ,
    \q[31]_i_18_0 ,
    \ALUResult[31]_INST_0_i_18_0 ,
    y_carry_i_5_0,
    \ALUResult[19]_INST_0_i_5_0 ,
    \ALUResult[31]_INST_0_i_18_1 ,
    \q_reg[31]_1 ,
    \ALUResult[30]_INST_0_i_5_0 ,
    \q_reg[30]_1 ,
    \q_reg[30]_2 ,
    rd21,
    rd11,
    \q[31]_i_15_0 ,
    \q_reg[2]_0 ,
    \ALUResult[30]_INST_0_i_4_0 ,
    \q_reg[3]_0 ,
    \q_reg[7]_1 ,
    \q_reg[11]_1 ,
    \q_reg[15]_1 ,
    \q_reg[19]_1 ,
    \q_reg[23]_1 ,
    \q_reg[27]_1 ,
    PCReady,
    O,
    clk,
    reset,
    \q_reg[7]_2 ,
    \q_reg[11]_2 ,
    \q_reg[15]_2 ,
    \q_reg[19]_2 ,
    \q_reg[23]_2 ,
    \q_reg[27]_2 ,
    \q_reg[31]_2 ,
    PCSrc,
    d2,
    \q_reg[31]_3 ,
    rf_reg_r1_0_31_30_31_i_1__0_0,
    Instr,
    rf_reg_r1_0_31_0_5,
    s,
    rf_reg_r2_0_31_30_31__0,
    rf_reg_r2_0_31_30_31,
    \q_reg[31]_4 ,
    rf_reg_r2_0_31_30_31__0_0,
    ALUControl,
    y_carry__1,
    ALUResult);
  output [3:0]DI;
  output [3:0]\q_reg[7]_0 ;
  output [3:0]\q_reg[11]_0 ;
  output [3:0]\q_reg[15]_0 ;
  output [3:0]\q_reg[19]_0 ;
  output [3:0]\q_reg[23]_0 ;
  output [3:0]\q_reg[27]_0 ;
  output [2:0]\q_reg[30]_0 ;
  output [0:0]\q_reg[31]_0 ;
  output [2:0]S;
  output [0:0]\q[31]_i_11_0 ;
  output [2:0]wd3;
  output \ALUResult[31]_INST_0_i_16_0 ;
  output [2:0]sel0;
  output \ALUResult[31]_INST_0_i_16_1 ;
  output \ALUResult[31]_INST_0_i_16_2 ;
  output \ALUResult[31]_INST_0_i_16_3 ;
  output \ALUResult[31]_INST_0_i_3_0 ;
  output \ALUResult[31]_INST_0_i_14_0 ;
  output \ALUResult[31]_INST_0_i_14_1 ;
  output \ALUResult[31]_INST_0_i_9_0 ;
  output \ALUResult[31]_INST_0_i_23_0 ;
  output \ALUResult[31]_INST_0_i_22_0 ;
  output [1:0]ALUControl__0;
  output \ALUResult[31]_INST_0_i_12 ;
  output \ALUResult[31]_INST_0_i_12_0 ;
  output \q[31]_i_18_0 ;
  output [27:0]\ALUResult[31]_INST_0_i_18_0 ;
  output y_carry_i_5_0;
  output \ALUResult[19]_INST_0_i_5_0 ;
  output \ALUResult[31]_INST_0_i_18_1 ;
  output [3:0]\q_reg[31]_1 ;
  output \ALUResult[30]_INST_0_i_5_0 ;
  output \q_reg[30]_1 ;
  output \q_reg[30]_2 ;
  output rd21;
  output rd11;
  output \q[31]_i_15_0 ;
  output [0:0]\q_reg[2]_0 ;
  output \ALUResult[30]_INST_0_i_4_0 ;
  output [3:0]\q_reg[3]_0 ;
  output [3:0]\q_reg[7]_1 ;
  output [3:0]\q_reg[11]_1 ;
  output [3:0]\q_reg[15]_1 ;
  output [3:0]\q_reg[19]_1 ;
  output [3:0]\q_reg[23]_1 ;
  output [3:0]\q_reg[27]_1 ;
  input PCReady;
  input [3:0]O;
  input clk;
  input reset;
  input [3:0]\q_reg[7]_2 ;
  input [3:0]\q_reg[11]_2 ;
  input [3:0]\q_reg[15]_2 ;
  input [3:0]\q_reg[19]_2 ;
  input [3:0]\q_reg[23]_2 ;
  input [3:0]\q_reg[27]_2 ;
  input [3:0]\q_reg[31]_2 ;
  input [0:0]PCSrc;
  input [3:0]d2;
  input \q_reg[31]_3 ;
  input [4:0]rf_reg_r1_0_31_30_31_i_1__0_0;
  input [29:0]Instr;
  input rf_reg_r1_0_31_0_5;
  input [1:0]s;
  input rf_reg_r2_0_31_30_31__0;
  input rf_reg_r2_0_31_30_31;
  input \q_reg[31]_4 ;
  input rf_reg_r2_0_31_30_31__0_0;
  input [0:0]ALUControl;
  input [0:0]y_carry__1;
  input [0:0]ALUResult;

  wire [0:0]ALUControl;
  wire [1:0]ALUControl__0;
  wire [0:0]ALUResult;
  wire \ALUResult[11]_INST_0_i_9_n_0 ;
  wire \ALUResult[19]_INST_0_i_10_n_0 ;
  wire \ALUResult[19]_INST_0_i_5_0 ;
  wire \ALUResult[30]_INST_0_i_4_0 ;
  wire \ALUResult[30]_INST_0_i_5_0 ;
  wire \ALUResult[31]_INST_0_i_12 ;
  wire \ALUResult[31]_INST_0_i_12_0 ;
  wire \ALUResult[31]_INST_0_i_13_n_0 ;
  wire \ALUResult[31]_INST_0_i_14_0 ;
  wire \ALUResult[31]_INST_0_i_14_1 ;
  wire \ALUResult[31]_INST_0_i_14_n_0 ;
  wire \ALUResult[31]_INST_0_i_16_0 ;
  wire \ALUResult[31]_INST_0_i_16_1 ;
  wire \ALUResult[31]_INST_0_i_16_2 ;
  wire \ALUResult[31]_INST_0_i_16_3 ;
  wire [27:0]\ALUResult[31]_INST_0_i_18_0 ;
  wire \ALUResult[31]_INST_0_i_18_1 ;
  wire \ALUResult[31]_INST_0_i_22_0 ;
  wire \ALUResult[31]_INST_0_i_23_0 ;
  wire \ALUResult[31]_INST_0_i_25_n_0 ;
  wire \ALUResult[31]_INST_0_i_33_n_0 ;
  wire \ALUResult[31]_INST_0_i_3_0 ;
  wire \ALUResult[31]_INST_0_i_9_0 ;
  wire [3:0]DI;
  wire [29:0]Instr;
  wire [3:0]O;
  wire PCReady;
  wire [0:0]PCSrc;
  wire [2:0]S;
  wire clk;
  wire [3:0]d2;
  wire [30:29]\ext/immext ;
  wire [31:31]\ext/immext__91 ;
  wire [0:0]\q[31]_i_11_0 ;
  wire \q[31]_i_15_0 ;
  wire \q[31]_i_18_0 ;
  wire [3:0]\q_reg[11]_0 ;
  wire [3:0]\q_reg[11]_1 ;
  wire [3:0]\q_reg[11]_2 ;
  wire [3:0]\q_reg[15]_0 ;
  wire [3:0]\q_reg[15]_1 ;
  wire [3:0]\q_reg[15]_2 ;
  wire [3:0]\q_reg[19]_0 ;
  wire [3:0]\q_reg[19]_1 ;
  wire [3:0]\q_reg[19]_2 ;
  wire [3:0]\q_reg[23]_0 ;
  wire [3:0]\q_reg[23]_1 ;
  wire [3:0]\q_reg[23]_2 ;
  wire [3:0]\q_reg[27]_0 ;
  wire [3:0]\q_reg[27]_1 ;
  wire [3:0]\q_reg[27]_2 ;
  wire [0:0]\q_reg[2]_0 ;
  wire [2:0]\q_reg[30]_0 ;
  wire \q_reg[30]_1 ;
  wire \q_reg[30]_2 ;
  wire [0:0]\q_reg[31]_0 ;
  wire [3:0]\q_reg[31]_1 ;
  wire [3:0]\q_reg[31]_2 ;
  wire \q_reg[31]_3 ;
  wire \q_reg[31]_4 ;
  wire [3:0]\q_reg[3]_0 ;
  wire [3:0]\q_reg[7]_0 ;
  wire [3:0]\q_reg[7]_1 ;
  wire [3:0]\q_reg[7]_2 ;
  wire rd11;
  wire rd21;
  wire reset;
  wire rf_reg_r1_0_31_0_5;
  wire [4:0]rf_reg_r1_0_31_30_31_i_1__0_0;
  wire rf_reg_r1_0_31_30_31_i_2__0_n_0;
  wire rf_reg_r1_0_31_30_31_i_2_n_0;
  wire rf_reg_r2_0_31_30_31;
  wire rf_reg_r2_0_31_30_31__0;
  wire rf_reg_r2_0_31_30_31__0_0;
  wire [1:0]s;
  wire [2:0]sel0;
  wire [2:0]wd3;
  wire [0:0]y_carry__1;
  wire y_carry_i_5_0;

  LUT6 #(
    .INIT(64'hCCCFAAAACCC0AAAA)) 
    \ALUResult[11]_INST_0_i_5 
       (.I0(Instr[29]),
        .I1(Instr[18]),
        .I2(\ALUResult[19]_INST_0_i_10_n_0 ),
        .I3(\ALUResult[11]_INST_0_i_9_n_0 ),
        .I4(sel0[1]),
        .I5(Instr[5]),
        .O(y_carry_i_5_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ALUResult[11]_INST_0_i_9 
       (.I0(Instr[1]),
        .I1(Instr[0]),
        .O(\ALUResult[11]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022F22222)) 
    \ALUResult[19]_INST_0_i_10 
       (.I0(Instr[3]),
        .I1(Instr[4]),
        .I2(Instr[10]),
        .I3(Instr[11]),
        .I4(Instr[2]),
        .I5(Instr[0]),
        .O(\ALUResult[19]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h48)) 
    \ALUResult[19]_INST_0_i_5 
       (.I0(Instr[2]),
        .I1(Instr[0]),
        .I2(Instr[1]),
        .O(\ALUResult[19]_INST_0_i_5_0 ));
  LUT6 #(
    .INIT(64'h000000000A220AAA)) 
    \ALUResult[19]_INST_0_i_6 
       (.I0(Instr[29]),
        .I1(Instr[4]),
        .I2(Instr[1]),
        .I3(Instr[0]),
        .I4(\ALUResult[19]_INST_0_i_10_n_0 ),
        .I5(sel0[2]),
        .O(\ALUResult[31]_INST_0_i_18_1 ));
  LUT6 #(
    .INIT(64'hCCCCCC00CACACAAC)) 
    \ALUResult[1]_INST_0_i_5 
       (.I0(Instr[6]),
        .I1(Instr[19]),
        .I2(sel0[1]),
        .I3(\ALUResult[19]_INST_0_i_10_n_0 ),
        .I4(\ALUResult[11]_INST_0_i_9_n_0 ),
        .I5(sel0[2]),
        .O(\ALUResult[31]_INST_0_i_18_0 [1]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \ALUResult[29]_INST_0_i_10 
       (.I0(Instr[16]),
        .I1(Instr[13]),
        .I2(Instr[14]),
        .I3(Instr[17]),
        .I4(Instr[15]),
        .O(rd11));
  LUT2 #(
    .INIT(4'h8)) 
    \ALUResult[29]_INST_0_i_11 
       (.I0(\ALUResult[31]_INST_0_i_23_0 ),
        .I1(\ALUResult[31]_INST_0_i_22_0 ),
        .O(\ALUResult[31]_INST_0_i_9_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \ALUResult[29]_INST_0_i_13 
       (.I0(ALUControl__0[0]),
        .I1(ALUControl),
        .O(\ALUResult[31]_INST_0_i_12_0 ));
  LUT6 #(
    .INIT(64'hCCCCCC00CACACAAC)) 
    \ALUResult[2]_INST_0_i_5 
       (.I0(Instr[7]),
        .I1(Instr[20]),
        .I2(sel0[1]),
        .I3(\ALUResult[19]_INST_0_i_10_n_0 ),
        .I4(\ALUResult[11]_INST_0_i_9_n_0 ),
        .I5(sel0[2]),
        .O(\ALUResult[31]_INST_0_i_18_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \ALUResult[30]_INST_0_i_4 
       (.I0(Instr[1]),
        .I1(Instr[0]),
        .I2(Instr[2]),
        .O(\ALUResult[30]_INST_0_i_4_0 ));
  LUT5 #(
    .INIT(32'h00AA8AAA)) 
    \ALUResult[30]_INST_0_i_5 
       (.I0(Instr[29]),
        .I1(Instr[11]),
        .I2(Instr[10]),
        .I3(Instr[2]),
        .I4(Instr[0]),
        .O(\ALUResult[30]_INST_0_i_5_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h58)) 
    \ALUResult[31]_INST_0_i_13 
       (.I0(Instr[0]),
        .I1(Instr[3]),
        .I2(Instr[4]),
        .O(\ALUResult[31]_INST_0_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    \ALUResult[31]_INST_0_i_14 
       (.I0(Instr[0]),
        .I1(Instr[3]),
        .I2(Instr[2]),
        .O(\ALUResult[31]_INST_0_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \ALUResult[31]_INST_0_i_15 
       (.I0(Instr[21]),
        .I1(Instr[18]),
        .I2(Instr[19]),
        .I3(Instr[22]),
        .I4(Instr[20]),
        .O(rd21));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0F01010F)) 
    \ALUResult[31]_INST_0_i_16 
       (.I0(Instr[4]),
        .I1(Instr[2]),
        .I2(Instr[1]),
        .I3(Instr[0]),
        .I4(Instr[3]),
        .O(\ALUResult[31]_INST_0_i_16_1 ));
  LUT6 #(
    .INIT(64'hFFFF8F8800008F88)) 
    \ALUResult[31]_INST_0_i_17 
       (.I0(Instr[2]),
        .I1(\ALUResult[31]_INST_0_i_25_n_0 ),
        .I2(Instr[4]),
        .I3(Instr[3]),
        .I4(Instr[0]),
        .I5(Instr[1]),
        .O(sel0[0]));
  LUT4 #(
    .INIT(16'h88C8)) 
    \ALUResult[31]_INST_0_i_18 
       (.I0(Instr[0]),
        .I1(Instr[2]),
        .I2(Instr[10]),
        .I3(Instr[11]),
        .O(sel0[2]));
  LUT6 #(
    .INIT(64'h2280A2A2A2A22280)) 
    \ALUResult[31]_INST_0_i_22 
       (.I0(Instr[2]),
        .I1(Instr[0]),
        .I2(Instr[3]),
        .I3(Instr[4]),
        .I4(\ALUResult[31]_INST_0_i_33_n_0 ),
        .I5(Instr[12]),
        .O(ALUControl__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hAAAA8A80)) 
    \ALUResult[31]_INST_0_i_23 
       (.I0(\ALUResult[31]_INST_0_i_14_n_0 ),
        .I1(Instr[11]),
        .I2(Instr[12]),
        .I3(Instr[10]),
        .I4(\ALUResult[31]_INST_0_i_13_n_0 ),
        .O(ALUControl__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ALUResult[31]_INST_0_i_25 
       (.I0(Instr[10]),
        .I1(Instr[11]),
        .O(\ALUResult[31]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h3F3F3F3F2F3F3F3F)) 
    \ALUResult[31]_INST_0_i_3 
       (.I0(ALUControl),
        .I1(\ALUResult[31]_INST_0_i_13_n_0 ),
        .I2(\ALUResult[31]_INST_0_i_14_n_0 ),
        .I3(Instr[12]),
        .I4(Instr[10]),
        .I5(Instr[11]),
        .O(\ALUResult[31]_INST_0_i_14_1 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \ALUResult[31]_INST_0_i_33 
       (.I0(Instr[10]),
        .I1(Instr[11]),
        .O(\ALUResult[31]_INST_0_i_33_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFBFFF)) 
    \ALUResult[31]_INST_0_i_4 
       (.I0(\ALUResult[31]_INST_0_i_13_n_0 ),
        .I1(\ALUResult[31]_INST_0_i_14_n_0 ),
        .I2(Instr[12]),
        .I3(Instr[10]),
        .I4(Instr[11]),
        .O(\ALUResult[31]_INST_0_i_14_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \ALUResult[31]_INST_0_i_8 
       (.I0(ALUControl__0[1]),
        .I1(ALUControl__0[0]),
        .O(\ALUResult[31]_INST_0_i_23_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \ALUResult[31]_INST_0_i_9 
       (.I0(ALUControl__0[0]),
        .I1(ALUControl),
        .I2(ALUControl__0[1]),
        .O(\ALUResult[31]_INST_0_i_22_0 ));
  LUT6 #(
    .INIT(64'hCCCCCC00CACACAAC)) 
    \ALUResult[3]_INST_0_i_5 
       (.I0(Instr[8]),
        .I1(Instr[21]),
        .I2(sel0[1]),
        .I3(\ALUResult[19]_INST_0_i_10_n_0 ),
        .I4(\ALUResult[11]_INST_0_i_9_n_0 ),
        .I5(sel0[2]),
        .O(\ALUResult[31]_INST_0_i_18_0 [3]));
  LUT6 #(
    .INIT(64'hCCCCCC00CACACAAC)) 
    \ALUResult[4]_INST_0_i_5 
       (.I0(Instr[9]),
        .I1(Instr[22]),
        .I2(sel0[1]),
        .I3(\ALUResult[19]_INST_0_i_10_n_0 ),
        .I4(\ALUResult[11]_INST_0_i_9_n_0 ),
        .I5(sel0[2]),
        .O(\ALUResult[31]_INST_0_i_18_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ALUResult[7]_INST_0_i_27 
       (.I0(ALUControl__0[0]),
        .I1(ALUControl),
        .O(\ALUResult[31]_INST_0_i_12 ));
  LUT6 #(
    .INIT(64'h222E222200000000)) 
    \ALUResult[7]_INST_0_i_36 
       (.I0(Instr[29]),
        .I1(sel0[2]),
        .I2(\ALUResult[19]_INST_0_i_10_n_0 ),
        .I3(\ALUResult[11]_INST_0_i_9_n_0 ),
        .I4(Instr[28]),
        .I5(\ALUResult[31]_INST_0_i_16_1 ),
        .O(\ALUResult[31]_INST_0_i_16_2 ));
  LUT6 #(
    .INIT(64'h222E222200000000)) 
    \ALUResult[7]_INST_0_i_38 
       (.I0(Instr[29]),
        .I1(sel0[2]),
        .I2(\ALUResult[19]_INST_0_i_10_n_0 ),
        .I3(\ALUResult[11]_INST_0_i_9_n_0 ),
        .I4(Instr[27]),
        .I5(\ALUResult[31]_INST_0_i_16_1 ),
        .O(\ALUResult[31]_INST_0_i_16_0 ));
  LUT6 #(
    .INIT(64'h22222AAA00000000)) 
    \ALUResult[7]_INST_0_i_39 
       (.I0(Instr[29]),
        .I1(sel0[2]),
        .I2(Instr[1]),
        .I3(Instr[0]),
        .I4(\ALUResult[19]_INST_0_i_10_n_0 ),
        .I5(\ALUResult[31]_INST_0_i_16_1 ),
        .O(\ALUResult[31]_INST_0_i_16_3 ));
  LUT5 #(
    .INIT(32'h00AA8AAA)) 
    \q[11]_i_10 
       (.I0(Instr[28]),
        .I1(Instr[11]),
        .I2(Instr[10]),
        .I3(Instr[2]),
        .I4(Instr[0]),
        .O(\ALUResult[31]_INST_0_i_18_0 [10]));
  LUT5 #(
    .INIT(32'h00AA8AAA)) 
    \q[11]_i_11 
       (.I0(Instr[27]),
        .I1(Instr[11]),
        .I2(Instr[10]),
        .I3(Instr[2]),
        .I4(Instr[0]),
        .O(\ALUResult[31]_INST_0_i_18_0 [9]));
  LUT5 #(
    .INIT(32'h00AA8AAA)) 
    \q[11]_i_12 
       (.I0(Instr[26]),
        .I1(Instr[11]),
        .I2(Instr[10]),
        .I3(Instr[2]),
        .I4(Instr[0]),
        .O(\ALUResult[31]_INST_0_i_18_0 [8]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \q[15]_i_10 
       (.I0(Instr[13]),
        .I1(\ALUResult[19]_INST_0_i_5_0 ),
        .I2(\ALUResult[31]_INST_0_i_18_1 ),
        .O(\ALUResult[31]_INST_0_i_18_0 [14]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \q[15]_i_11 
       (.I0(Instr[12]),
        .I1(\ALUResult[19]_INST_0_i_5_0 ),
        .I2(\ALUResult[31]_INST_0_i_18_1 ),
        .O(\ALUResult[31]_INST_0_i_18_0 [13]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \q[15]_i_12 
       (.I0(Instr[11]),
        .I1(\ALUResult[19]_INST_0_i_5_0 ),
        .I2(\ALUResult[31]_INST_0_i_18_1 ),
        .O(\ALUResult[31]_INST_0_i_18_0 [12]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \q[15]_i_13 
       (.I0(Instr[10]),
        .I1(\ALUResult[19]_INST_0_i_5_0 ),
        .I2(\ALUResult[31]_INST_0_i_18_1 ),
        .O(\ALUResult[31]_INST_0_i_18_0 [11]));
  LUT6 #(
    .INIT(64'h222B333B22280008)) 
    \q[19]_i_10 
       (.I0(Instr[17]),
        .I1(sel0[2]),
        .I2(\ALUResult[19]_INST_0_i_10_n_0 ),
        .I3(\ALUResult[11]_INST_0_i_9_n_0 ),
        .I4(sel0[1]),
        .I5(Instr[29]),
        .O(\ALUResult[31]_INST_0_i_18_0 [18]));
  LUT6 #(
    .INIT(64'h222B333B22280008)) 
    \q[19]_i_11 
       (.I0(Instr[16]),
        .I1(sel0[2]),
        .I2(\ALUResult[19]_INST_0_i_10_n_0 ),
        .I3(\ALUResult[11]_INST_0_i_9_n_0 ),
        .I4(sel0[1]),
        .I5(Instr[29]),
        .O(\ALUResult[31]_INST_0_i_18_0 [17]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \q[19]_i_12 
       (.I0(Instr[15]),
        .I1(\ALUResult[19]_INST_0_i_5_0 ),
        .I2(\ALUResult[31]_INST_0_i_18_1 ),
        .O(\ALUResult[31]_INST_0_i_18_0 [16]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \q[19]_i_13 
       (.I0(Instr[14]),
        .I1(\ALUResult[19]_INST_0_i_5_0 ),
        .I2(\ALUResult[31]_INST_0_i_18_1 ),
        .O(\ALUResult[31]_INST_0_i_18_0 [15]));
  LUT6 #(
    .INIT(64'h002AFFFF002A0000)) 
    \q[23]_i_10 
       (.I0(Instr[21]),
        .I1(Instr[1]),
        .I2(Instr[0]),
        .I3(\ALUResult[19]_INST_0_i_10_n_0 ),
        .I4(sel0[2]),
        .I5(Instr[29]),
        .O(\ALUResult[31]_INST_0_i_18_0 [22]));
  LUT6 #(
    .INIT(64'h002AFFFF002A0000)) 
    \q[23]_i_11 
       (.I0(Instr[20]),
        .I1(Instr[1]),
        .I2(Instr[0]),
        .I3(\ALUResult[19]_INST_0_i_10_n_0 ),
        .I4(sel0[2]),
        .I5(Instr[29]),
        .O(\ALUResult[31]_INST_0_i_18_0 [21]));
  LUT6 #(
    .INIT(64'h002AFFFF002A0000)) 
    \q[23]_i_12 
       (.I0(Instr[19]),
        .I1(Instr[1]),
        .I2(Instr[0]),
        .I3(\ALUResult[19]_INST_0_i_10_n_0 ),
        .I4(sel0[2]),
        .I5(Instr[29]),
        .O(\ALUResult[31]_INST_0_i_18_0 [20]));
  LUT6 #(
    .INIT(64'h002AFFFF002A0000)) 
    \q[23]_i_13 
       (.I0(Instr[18]),
        .I1(Instr[1]),
        .I2(Instr[0]),
        .I3(\ALUResult[19]_INST_0_i_10_n_0 ),
        .I4(sel0[2]),
        .I5(Instr[29]),
        .O(\ALUResult[31]_INST_0_i_18_0 [19]));
  LUT6 #(
    .INIT(64'h002AFFFF002A0000)) 
    \q[27]_i_10 
       (.I0(Instr[25]),
        .I1(Instr[1]),
        .I2(Instr[0]),
        .I3(\ALUResult[19]_INST_0_i_10_n_0 ),
        .I4(sel0[2]),
        .I5(Instr[29]),
        .O(\ALUResult[31]_INST_0_i_18_0 [26]));
  LUT6 #(
    .INIT(64'h002AFFFF002A0000)) 
    \q[27]_i_11 
       (.I0(Instr[24]),
        .I1(Instr[1]),
        .I2(Instr[0]),
        .I3(\ALUResult[19]_INST_0_i_10_n_0 ),
        .I4(sel0[2]),
        .I5(Instr[29]),
        .O(\ALUResult[31]_INST_0_i_18_0 [25]));
  LUT6 #(
    .INIT(64'h002AFFFF002A0000)) 
    \q[27]_i_12 
       (.I0(Instr[23]),
        .I1(Instr[1]),
        .I2(Instr[0]),
        .I3(\ALUResult[19]_INST_0_i_10_n_0 ),
        .I4(sel0[2]),
        .I5(Instr[29]),
        .O(\ALUResult[31]_INST_0_i_18_0 [24]));
  LUT6 #(
    .INIT(64'h002AFFFF002A0000)) 
    \q[27]_i_13 
       (.I0(Instr[22]),
        .I1(Instr[1]),
        .I2(Instr[0]),
        .I3(\ALUResult[19]_INST_0_i_10_n_0 ),
        .I4(sel0[2]),
        .I5(Instr[29]),
        .O(\ALUResult[31]_INST_0_i_18_0 [23]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h4F7F0000)) 
    \q[31]_i_10 
       (.I0(Instr[1]),
        .I1(Instr[0]),
        .I2(Instr[2]),
        .I3(\ALUResult[31]_INST_0_i_25_n_0 ),
        .I4(Instr[29]),
        .O(\ext/immext__91 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \q[31]_i_11 
       (.I0(Instr[1]),
        .I1(Instr[4]),
        .I2(Instr[0]),
        .O(\q[31]_i_11_0 ));
  LUT6 #(
    .INIT(64'h002AFFFF002A0000)) 
    \q[31]_i_12 
       (.I0(Instr[28]),
        .I1(Instr[1]),
        .I2(Instr[0]),
        .I3(\ALUResult[19]_INST_0_i_10_n_0 ),
        .I4(sel0[2]),
        .I5(Instr[29]),
        .O(\ext/immext [30]));
  LUT6 #(
    .INIT(64'h002AFFFF002A0000)) 
    \q[31]_i_13 
       (.I0(Instr[27]),
        .I1(Instr[1]),
        .I2(Instr[0]),
        .I3(\ALUResult[19]_INST_0_i_10_n_0 ),
        .I4(sel0[2]),
        .I5(Instr[29]),
        .O(\ext/immext [29]));
  LUT6 #(
    .INIT(64'h002AFFFF002A0000)) 
    \q[31]_i_14 
       (.I0(Instr[26]),
        .I1(Instr[1]),
        .I2(Instr[0]),
        .I3(\ALUResult[19]_INST_0_i_10_n_0 ),
        .I4(sel0[2]),
        .I5(Instr[29]),
        .O(\ALUResult[31]_INST_0_i_18_0 [27]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \q[31]_i_15 
       (.I0(Instr[1]),
        .I1(Instr[4]),
        .I2(Instr[0]),
        .O(\q[31]_i_15_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[31]_i_18 
       (.I0(Instr[4]),
        .I1(Instr[0]),
        .O(\q[31]_i_18_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \q[31]_i_30 
       (.I0(\ALUResult[31]_INST_0_i_14_0 ),
        .I1(\ALUResult[31]_INST_0_i_14_1 ),
        .O(\ALUResult[31]_INST_0_i_3_0 ));
  LUT6 #(
    .INIT(64'h6F6F6F6060606F60)) 
    \q[31]_i_5 
       (.I0(\ext/immext__91 ),
        .I1(\q_reg[31]_0 ),
        .I2(PCSrc),
        .I3(d2[3]),
        .I4(\q[31]_i_11_0 ),
        .I5(\q_reg[31]_3 ),
        .O(S[2]));
  LUT6 #(
    .INIT(64'h6F6F6F6060606F60)) 
    \q[31]_i_6 
       (.I0(\ext/immext [30]),
        .I1(\q_reg[30]_0 [2]),
        .I2(PCSrc),
        .I3(d2[2]),
        .I4(\q[31]_i_11_0 ),
        .I5(\q_reg[31]_4 ),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h6F6F6F6060606F60)) 
    \q[31]_i_7 
       (.I0(\ext/immext [29]),
        .I1(\q_reg[30]_0 [1]),
        .I2(PCSrc),
        .I3(d2[1]),
        .I4(\q[31]_i_11_0 ),
        .I5(ALUResult),
        .O(S[0]));
  LUT5 #(
    .INIT(32'hF0220030)) 
    \q[3]_i_10 
       (.I0(Instr[5]),
        .I1(sel0[1]),
        .I2(Instr[18]),
        .I3(sel0[2]),
        .I4(sel0[0]),
        .O(\ALUResult[31]_INST_0_i_18_0 [0]));
  LUT5 #(
    .INIT(32'h00AA8AAA)) 
    \q[7]_i_10 
       (.I0(Instr[25]),
        .I1(Instr[11]),
        .I2(Instr[10]),
        .I3(Instr[2]),
        .I4(Instr[0]),
        .O(\ALUResult[31]_INST_0_i_18_0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00AA8AAA)) 
    \q[7]_i_11 
       (.I0(Instr[24]),
        .I1(Instr[11]),
        .I2(Instr[10]),
        .I3(Instr[2]),
        .I4(Instr[0]),
        .O(\ALUResult[31]_INST_0_i_18_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00AA8AAA)) 
    \q[7]_i_12 
       (.I0(Instr[23]),
        .I1(Instr[11]),
        .I2(Instr[10]),
        .I3(Instr[2]),
        .I4(Instr[0]),
        .O(\ALUResult[31]_INST_0_i_18_0 [5]));
  FDCE \q_reg[0] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(O[0]),
        .Q(DI[0]));
  FDCE \q_reg[10] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(\q_reg[11]_2 [2]),
        .Q(\q_reg[11]_0 [2]));
  FDCE \q_reg[11] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(\q_reg[11]_2 [3]),
        .Q(\q_reg[11]_0 [3]));
  FDCE \q_reg[12] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(\q_reg[15]_2 [0]),
        .Q(\q_reg[15]_0 [0]));
  FDCE \q_reg[13] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(\q_reg[15]_2 [1]),
        .Q(\q_reg[15]_0 [1]));
  FDCE \q_reg[14] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(\q_reg[15]_2 [2]),
        .Q(\q_reg[15]_0 [2]));
  FDCE \q_reg[15] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(\q_reg[15]_2 [3]),
        .Q(\q_reg[15]_0 [3]));
  FDCE \q_reg[16] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(\q_reg[19]_2 [0]),
        .Q(\q_reg[19]_0 [0]));
  FDCE \q_reg[17] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(\q_reg[19]_2 [1]),
        .Q(\q_reg[19]_0 [1]));
  FDCE \q_reg[18] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(\q_reg[19]_2 [2]),
        .Q(\q_reg[19]_0 [2]));
  FDCE \q_reg[19] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(\q_reg[19]_2 [3]),
        .Q(\q_reg[19]_0 [3]));
  FDCE \q_reg[1] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(O[1]),
        .Q(DI[1]));
  FDCE \q_reg[20] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(\q_reg[23]_2 [0]),
        .Q(\q_reg[23]_0 [0]));
  FDCE \q_reg[21] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(\q_reg[23]_2 [1]),
        .Q(\q_reg[23]_0 [1]));
  FDCE \q_reg[22] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(\q_reg[23]_2 [2]),
        .Q(\q_reg[23]_0 [2]));
  FDCE \q_reg[23] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(\q_reg[23]_2 [3]),
        .Q(\q_reg[23]_0 [3]));
  FDCE \q_reg[24] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(\q_reg[27]_2 [0]),
        .Q(\q_reg[27]_0 [0]));
  FDCE \q_reg[25] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(\q_reg[27]_2 [1]),
        .Q(\q_reg[27]_0 [1]));
  FDCE \q_reg[26] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(\q_reg[27]_2 [2]),
        .Q(\q_reg[27]_0 [2]));
  FDCE \q_reg[27] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(\q_reg[27]_2 [3]),
        .Q(\q_reg[27]_0 [3]));
  FDCE \q_reg[28] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(\q_reg[31]_2 [0]),
        .Q(\q_reg[30]_0 [0]));
  FDCE \q_reg[29] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(\q_reg[31]_2 [1]),
        .Q(\q_reg[30]_0 [1]));
  FDCE \q_reg[2] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(O[2]),
        .Q(DI[2]));
  FDCE \q_reg[30] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(\q_reg[31]_2 [2]),
        .Q(\q_reg[30]_0 [2]));
  FDCE \q_reg[31] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(\q_reg[31]_2 [3]),
        .Q(\q_reg[31]_0 ));
  FDCE \q_reg[3] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(O[3]),
        .Q(DI[3]));
  FDCE \q_reg[4] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(\q_reg[7]_2 [0]),
        .Q(\q_reg[7]_0 [0]));
  FDCE \q_reg[5] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(\q_reg[7]_2 [1]),
        .Q(\q_reg[7]_0 [1]));
  FDCE \q_reg[6] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(\q_reg[7]_2 [2]),
        .Q(\q_reg[7]_0 [2]));
  FDCE \q_reg[7] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(\q_reg[7]_2 [3]),
        .Q(\q_reg[7]_0 [3]));
  FDCE \q_reg[8] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(\q_reg[11]_2 [0]),
        .Q(\q_reg[11]_0 [0]));
  FDCE \q_reg[9] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(\q_reg[11]_2 [1]),
        .Q(\q_reg[11]_0 [1]));
  LUT6 #(
    .INIT(64'hFAFFCCFF0A00CC00)) 
    rf_reg_r1_0_31_0_5_i_3
       (.I0(DI[0]),
        .I1(rf_reg_r1_0_31_30_31_i_1__0_0[0]),
        .I2(Instr[2]),
        .I3(Instr[0]),
        .I4(Instr[3]),
        .I5(rf_reg_r1_0_31_0_5),
        .O(wd3[0]));
  LUT5 #(
    .INIT(32'h0A00CA00)) 
    rf_reg_r1_0_31_24_29_i_15
       (.I0(rf_reg_r1_0_31_30_31_i_1__0_0[2]),
        .I1(d2[1]),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .I4(Instr[2]),
        .O(\q_reg[30]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h0A00CA00)) 
    rf_reg_r1_0_31_24_29_i_17
       (.I0(rf_reg_r1_0_31_30_31_i_1__0_0[1]),
        .I1(d2[0]),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .I4(Instr[2]),
        .O(\q_reg[30]_1 ));
  LUT6 #(
    .INIT(64'hBBBABBBBBBBABBBA)) 
    rf_reg_r1_0_31_30_31_i_1
       (.I0(rf_reg_r1_0_31_30_31_i_2_n_0),
        .I1(s[1]),
        .I2(rf_reg_r2_0_31_30_31__0),
        .I3(rf_reg_r2_0_31_30_31),
        .I4(s[0]),
        .I5(\q_reg[31]_4 ),
        .O(wd3[1]));
  LUT6 #(
    .INIT(64'hBBBABBBBBBBABBBA)) 
    rf_reg_r1_0_31_30_31_i_1__0
       (.I0(rf_reg_r1_0_31_30_31_i_2__0_n_0),
        .I1(s[1]),
        .I2(rf_reg_r2_0_31_30_31__0),
        .I3(rf_reg_r2_0_31_30_31__0_0),
        .I4(s[0]),
        .I5(\q_reg[31]_3 ),
        .O(wd3[2]));
  LUT5 #(
    .INIT(32'h0A00CA00)) 
    rf_reg_r1_0_31_30_31_i_2
       (.I0(rf_reg_r1_0_31_30_31_i_1__0_0[3]),
        .I1(d2[2]),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .I4(Instr[2]),
        .O(rf_reg_r1_0_31_30_31_i_2_n_0));
  LUT5 #(
    .INIT(32'h0A00CA00)) 
    rf_reg_r1_0_31_30_31_i_2__0
       (.I0(rf_reg_r1_0_31_30_31_i_1__0_0[4]),
        .I1(d2[3]),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .I4(Instr[2]),
        .O(rf_reg_r1_0_31_30_31_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h9595A595AAAAAAAA)) 
    y_carry__0_i_1
       (.I0(\q_reg[7]_0 [3]),
        .I1(Instr[0]),
        .I2(Instr[2]),
        .I3(Instr[10]),
        .I4(Instr[11]),
        .I5(Instr[25]),
        .O(\q_reg[7]_1 [3]));
  LUT6 #(
    .INIT(64'h9595A595AAAAAAAA)) 
    y_carry__0_i_2
       (.I0(\q_reg[7]_0 [2]),
        .I1(Instr[0]),
        .I2(Instr[2]),
        .I3(Instr[10]),
        .I4(Instr[11]),
        .I5(Instr[24]),
        .O(\q_reg[7]_1 [2]));
  LUT6 #(
    .INIT(64'h9595A595AAAAAAAA)) 
    y_carry__0_i_3
       (.I0(\q_reg[7]_0 [1]),
        .I1(Instr[0]),
        .I2(Instr[2]),
        .I3(Instr[10]),
        .I4(Instr[11]),
        .I5(Instr[23]),
        .O(\q_reg[7]_1 [1]));
  LUT6 #(
    .INIT(64'h5959A99A5A69AAAA)) 
    y_carry__0_i_4
       (.I0(\q_reg[7]_0 [0]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(Instr[22]),
        .I5(Instr[9]),
        .O(\q_reg[7]_1 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__1_i_1
       (.I0(\q_reg[11]_0 [3]),
        .I1(y_carry__1),
        .O(\q_reg[11]_1 [3]));
  LUT6 #(
    .INIT(64'h9595A595AAAAAAAA)) 
    y_carry__1_i_2
       (.I0(\q_reg[11]_0 [2]),
        .I1(Instr[0]),
        .I2(Instr[2]),
        .I3(Instr[10]),
        .I4(Instr[11]),
        .I5(Instr[28]),
        .O(\q_reg[11]_1 [2]));
  LUT6 #(
    .INIT(64'h9595A595AAAAAAAA)) 
    y_carry__1_i_3
       (.I0(\q_reg[11]_0 [1]),
        .I1(Instr[0]),
        .I2(Instr[2]),
        .I3(Instr[10]),
        .I4(Instr[11]),
        .I5(Instr[27]),
        .O(\q_reg[11]_1 [1]));
  LUT6 #(
    .INIT(64'h9595A595AAAAAAAA)) 
    y_carry__1_i_4
       (.I0(\q_reg[11]_0 [0]),
        .I1(Instr[0]),
        .I2(Instr[2]),
        .I3(Instr[10]),
        .I4(Instr[11]),
        .I5(Instr[26]),
        .O(\q_reg[11]_1 [0]));
  LUT4 #(
    .INIT(16'h5666)) 
    y_carry__2_i_1
       (.I0(\q_reg[15]_0 [3]),
        .I1(\ALUResult[31]_INST_0_i_18_1 ),
        .I2(\ALUResult[19]_INST_0_i_5_0 ),
        .I3(Instr[13]),
        .O(\q_reg[15]_1 [3]));
  LUT4 #(
    .INIT(16'h5666)) 
    y_carry__2_i_2
       (.I0(\q_reg[15]_0 [2]),
        .I1(\ALUResult[31]_INST_0_i_18_1 ),
        .I2(\ALUResult[19]_INST_0_i_5_0 ),
        .I3(Instr[12]),
        .O(\q_reg[15]_1 [2]));
  LUT4 #(
    .INIT(16'h5666)) 
    y_carry__2_i_3
       (.I0(\q_reg[15]_0 [1]),
        .I1(\ALUResult[31]_INST_0_i_18_1 ),
        .I2(\ALUResult[19]_INST_0_i_5_0 ),
        .I3(Instr[11]),
        .O(\q_reg[15]_1 [1]));
  LUT4 #(
    .INIT(16'h5666)) 
    y_carry__2_i_4
       (.I0(\q_reg[15]_0 [0]),
        .I1(\ALUResult[31]_INST_0_i_18_1 ),
        .I2(\ALUResult[19]_INST_0_i_5_0 ),
        .I3(Instr[10]),
        .O(\q_reg[15]_1 [0]));
  LUT4 #(
    .INIT(16'h5666)) 
    y_carry__3_i_1
       (.I0(\q_reg[19]_0 [3]),
        .I1(\ALUResult[31]_INST_0_i_18_1 ),
        .I2(\ALUResult[19]_INST_0_i_5_0 ),
        .I3(Instr[17]),
        .O(\q_reg[19]_1 [3]));
  LUT4 #(
    .INIT(16'h5666)) 
    y_carry__3_i_2
       (.I0(\q_reg[19]_0 [2]),
        .I1(\ALUResult[31]_INST_0_i_18_1 ),
        .I2(\ALUResult[19]_INST_0_i_5_0 ),
        .I3(Instr[16]),
        .O(\q_reg[19]_1 [2]));
  LUT4 #(
    .INIT(16'h5666)) 
    y_carry__3_i_3
       (.I0(\q_reg[19]_0 [1]),
        .I1(\ALUResult[31]_INST_0_i_18_1 ),
        .I2(\ALUResult[19]_INST_0_i_5_0 ),
        .I3(Instr[15]),
        .O(\q_reg[19]_1 [1]));
  LUT4 #(
    .INIT(16'h5666)) 
    y_carry__3_i_4
       (.I0(\q_reg[19]_0 [0]),
        .I1(\ALUResult[31]_INST_0_i_18_1 ),
        .I2(\ALUResult[19]_INST_0_i_5_0 ),
        .I3(Instr[14]),
        .O(\q_reg[19]_1 [0]));
  LUT5 #(
    .INIT(32'h55A6A6A6)) 
    y_carry__4_i_1
       (.I0(\q_reg[23]_0 [3]),
        .I1(Instr[29]),
        .I2(sel0[2]),
        .I3(\ALUResult[30]_INST_0_i_4_0 ),
        .I4(Instr[21]),
        .O(\q_reg[23]_1 [3]));
  LUT5 #(
    .INIT(32'h55A6A6A6)) 
    y_carry__4_i_2
       (.I0(\q_reg[23]_0 [2]),
        .I1(Instr[29]),
        .I2(sel0[2]),
        .I3(\ALUResult[30]_INST_0_i_4_0 ),
        .I4(Instr[20]),
        .O(\q_reg[23]_1 [2]));
  LUT5 #(
    .INIT(32'h55A6A6A6)) 
    y_carry__4_i_3
       (.I0(\q_reg[23]_0 [1]),
        .I1(Instr[29]),
        .I2(sel0[2]),
        .I3(\ALUResult[30]_INST_0_i_4_0 ),
        .I4(Instr[19]),
        .O(\q_reg[23]_1 [1]));
  LUT5 #(
    .INIT(32'h55A6A6A6)) 
    y_carry__4_i_4
       (.I0(\q_reg[23]_0 [0]),
        .I1(Instr[29]),
        .I2(sel0[2]),
        .I3(\ALUResult[30]_INST_0_i_4_0 ),
        .I4(Instr[18]),
        .O(\q_reg[23]_1 [0]));
  LUT5 #(
    .INIT(32'h55A6A6A6)) 
    y_carry__5_i_1
       (.I0(\q_reg[27]_0 [3]),
        .I1(Instr[29]),
        .I2(sel0[2]),
        .I3(\ALUResult[30]_INST_0_i_4_0 ),
        .I4(Instr[25]),
        .O(\q_reg[27]_1 [3]));
  LUT5 #(
    .INIT(32'h55A6A6A6)) 
    y_carry__5_i_2
       (.I0(\q_reg[27]_0 [2]),
        .I1(Instr[29]),
        .I2(sel0[2]),
        .I3(\ALUResult[30]_INST_0_i_4_0 ),
        .I4(Instr[24]),
        .O(\q_reg[27]_1 [2]));
  LUT5 #(
    .INIT(32'h55A6A6A6)) 
    y_carry__5_i_3
       (.I0(\q_reg[27]_0 [1]),
        .I1(Instr[29]),
        .I2(sel0[2]),
        .I3(\ALUResult[30]_INST_0_i_4_0 ),
        .I4(Instr[23]),
        .O(\q_reg[27]_1 [1]));
  LUT5 #(
    .INIT(32'h55A6A6A6)) 
    y_carry__5_i_4
       (.I0(\q_reg[27]_0 [0]),
        .I1(Instr[29]),
        .I2(sel0[2]),
        .I3(\ALUResult[30]_INST_0_i_4_0 ),
        .I4(Instr[22]),
        .O(\q_reg[27]_1 [0]));
  LUT4 #(
    .INIT(16'hA666)) 
    y_carry__6_i_1
       (.I0(\q_reg[31]_0 ),
        .I1(Instr[29]),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .O(\q_reg[31]_1 [3]));
  LUT5 #(
    .INIT(32'h55A6A6A6)) 
    y_carry__6_i_2
       (.I0(\q_reg[30]_0 [2]),
        .I1(Instr[29]),
        .I2(sel0[2]),
        .I3(\ALUResult[30]_INST_0_i_4_0 ),
        .I4(Instr[28]),
        .O(\q_reg[31]_1 [2]));
  LUT5 #(
    .INIT(32'h55A6A6A6)) 
    y_carry__6_i_3
       (.I0(\q_reg[30]_0 [1]),
        .I1(Instr[29]),
        .I2(sel0[2]),
        .I3(\ALUResult[30]_INST_0_i_4_0 ),
        .I4(Instr[27]),
        .O(\q_reg[31]_1 [1]));
  LUT5 #(
    .INIT(32'h55A6A6A6)) 
    y_carry__6_i_4
       (.I0(\q_reg[30]_0 [0]),
        .I1(Instr[29]),
        .I2(sel0[2]),
        .I3(\ALUResult[30]_INST_0_i_4_0 ),
        .I4(Instr[26]),
        .O(\q_reg[31]_1 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    y_carry_i_1
       (.I0(DI[2]),
        .O(\q_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h5959A99A5A69AAAA)) 
    y_carry_i_1__0
       (.I0(DI[3]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(Instr[21]),
        .I5(Instr[8]),
        .O(\q_reg[3]_0 [3]));
  LUT6 #(
    .INIT(64'h5959A99A5A69AAAA)) 
    y_carry_i_2
       (.I0(DI[2]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(Instr[20]),
        .I5(Instr[7]),
        .O(\q_reg[3]_0 [2]));
  LUT6 #(
    .INIT(64'h5959A99A5A69AAAA)) 
    y_carry_i_3
       (.I0(DI[1]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(Instr[19]),
        .I5(Instr[6]),
        .O(\q_reg[3]_0 [1]));
  LUT6 #(
    .INIT(64'h6AAA65A66AAA69AA)) 
    y_carry_i_4
       (.I0(DI[0]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(Instr[18]),
        .I4(sel0[1]),
        .I5(Instr[5]),
        .O(\q_reg[3]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    y_carry_i_5
       (.I0(Instr[1]),
        .I1(Instr[0]),
        .I2(Instr[4]),
        .O(sel0[1]));
endmodule

(* ORIG_REF_NAME = "regfile" *) 
module design_1_top_0_0_regfile
   (PCSrc,
    \ALUResult[31]_INST_0_i_6_0 ,
    \ALUResult[31]_INST_0_i_3 ,
    \ALUResult[31]_INST_0_i_3_0 ,
    \ALUResult[31]_INST_0_i_3_1 ,
    \ALUResult[0]_INST_0_i_3_0 ,
    \readDataM[0] ,
    s,
    \ALUResult[1]_INST_0_i_4_0 ,
    \readDataM[1] ,
    \readDataM[2] ,
    ALUResult,
    \readDataM[3] ,
    \readDataM[4] ,
    \readDataM[5] ,
    \readDataM[6] ,
    \readDataM[7] ,
    \readDataM[15] ,
    SrcA,
    clk_0,
    \ALUResult[30]_INST_0_i_1_0 ,
    \ALUResult[30]_INST_0_i_9_0 ,
    \readDataM[30] ,
    \readDataM[31] ,
    WriteData,
    \q_reg[3] ,
    \q_reg[7] ,
    \q_reg[11] ,
    \q_reg[15] ,
    \q_reg[19] ,
    \q_reg[23] ,
    \q_reg[27] ,
    \q_reg[31] ,
    clk_1,
    clk_2,
    clk_3,
    clk_4,
    clk_5,
    clk_6,
    clk_7,
    clk_8,
    clk_9,
    clk_10,
    clk_11,
    clk_12,
    clk_13,
    clk_14,
    clk_15,
    clk_16,
    \ALUResult[0]_INST_0_i_6_0 ,
    clk,
    \writeDataM[31] ,
    Instr,
    sel0,
    \q_reg[31]_0 ,
    \q_reg[19]_0 ,
    \q_reg[19]_1 ,
    immext,
    \q[31]_i_5 ,
    \q[31]_i_5_0 ,
    \q[31]_i_9_0 ,
    ReadData,
    rf_reg_r2_0_31_12_17_0,
    d2,
    rf_reg_r2_0_31_12_17_1,
    rf_reg_r2_0_31_12_17_2,
    rf_reg_r2_0_31_18_23_0,
    rf_reg_r2_0_31_18_23_1,
    rf_reg_r2_0_31_18_23_2,
    rf_reg_r2_0_31_18_23_3,
    rf_reg_r2_0_31_18_23_4,
    rf_reg_r2_0_31_18_23_5,
    rf_reg_r2_0_31_24_29_0,
    rf_reg_r2_0_31_24_29_1,
    rf_reg_r2_0_31_24_29_2,
    rf_reg_r2_0_31_24_29_3,
    rf_reg_r2_0_31_24_29_4,
    rf_reg_r2_0_31_24_29_5,
    \addressM[0] ,
    \addressM[0]_0 ,
    \addressM[29] ,
    \addressM[0]_1 ,
    \addressM[0]_2 ,
    ALUControl,
    ALUControl__0,
    CO,
    rd11,
    LT,
    \q[31]_i_25_0 ,
    O,
    \addressM[16] ,
    \addressM[16]_0 ,
    \ALUResult[30]_INST_0_i_10_0 ,
    rd21,
    \addressM[1] ,
    \addressM[11] ,
    \addressM[20] ,
    \ALUResult[7]_INST_0_i_25_0 ,
    \ALUResult[7]_INST_0_i_25_1 ,
    \ALUResult[7]_INST_0_i_25_2 ,
    S,
    \q_reg[3]_0 ,
    DI,
    \q_reg[7]_0 ,
    \q_reg[11]_0 ,
    \q_reg[15]_0 ,
    \q_reg[19]_2 ,
    \q_reg[23]_0 ,
    \q_reg[27]_0 ,
    \q_reg[31]_1 );
  output [0:0]PCSrc;
  output \ALUResult[31]_INST_0_i_6_0 ;
  output \ALUResult[31]_INST_0_i_3 ;
  output \ALUResult[31]_INST_0_i_3_0 ;
  output \ALUResult[31]_INST_0_i_3_1 ;
  output \ALUResult[0]_INST_0_i_3_0 ;
  output \readDataM[0] ;
  output [1:0]s;
  output \ALUResult[1]_INST_0_i_4_0 ;
  output \readDataM[1] ;
  output \readDataM[2] ;
  output [24:0]ALUResult;
  output \readDataM[3] ;
  output \readDataM[4] ;
  output \readDataM[5] ;
  output \readDataM[6] ;
  output \readDataM[7] ;
  output \readDataM[15] ;
  output [31:0]SrcA;
  output [1:0]clk_0;
  output \ALUResult[30]_INST_0_i_1_0 ;
  output \ALUResult[30]_INST_0_i_9_0 ;
  output \readDataM[30] ;
  output \readDataM[31] ;
  output [31:0]WriteData;
  output [3:0]\q_reg[3] ;
  output [3:0]\q_reg[7] ;
  output [3:0]\q_reg[11] ;
  output [3:0]\q_reg[15] ;
  output [3:0]\q_reg[19] ;
  output [3:0]\q_reg[23] ;
  output [3:0]\q_reg[27] ;
  output [3:0]\q_reg[31] ;
  output [3:0]clk_1;
  output [3:0]clk_2;
  output [3:0]clk_3;
  output [3:0]clk_4;
  output [3:0]clk_5;
  output [3:0]clk_6;
  output [3:0]clk_7;
  output [3:0]clk_8;
  output [3:0]clk_9;
  output [3:0]clk_10;
  output [3:0]clk_11;
  output [3:0]clk_12;
  output [3:0]clk_13;
  output [3:0]clk_14;
  output [3:0]clk_15;
  output [3:0]clk_16;
  output \ALUResult[0]_INST_0_i_6_0 ;
  input clk;
  input [9:0]\writeDataM[31] ;
  input [27:0]Instr;
  input [2:0]sel0;
  input \q_reg[31]_0 ;
  input \q_reg[19]_0 ;
  input \q_reg[19]_1 ;
  input [28:0]immext;
  input \q[31]_i_5 ;
  input \q[31]_i_5_0 ;
  input \q[31]_i_9_0 ;
  input [31:0]ReadData;
  input [7:0]rf_reg_r2_0_31_12_17_0;
  input [27:0]d2;
  input rf_reg_r2_0_31_12_17_1;
  input rf_reg_r2_0_31_12_17_2;
  input rf_reg_r2_0_31_18_23_0;
  input rf_reg_r2_0_31_18_23_1;
  input rf_reg_r2_0_31_18_23_2;
  input rf_reg_r2_0_31_18_23_3;
  input rf_reg_r2_0_31_18_23_4;
  input rf_reg_r2_0_31_18_23_5;
  input rf_reg_r2_0_31_24_29_0;
  input rf_reg_r2_0_31_24_29_1;
  input rf_reg_r2_0_31_24_29_2;
  input rf_reg_r2_0_31_24_29_3;
  input rf_reg_r2_0_31_24_29_4;
  input rf_reg_r2_0_31_24_29_5;
  input \addressM[0] ;
  input \addressM[0]_0 ;
  input [29:0]\addressM[29] ;
  input \addressM[0]_1 ;
  input \addressM[0]_2 ;
  input [0:0]ALUControl;
  input [0:0]ALUControl__0;
  input [0:0]CO;
  input rd11;
  input LT;
  input \q[31]_i_25_0 ;
  input [0:0]O;
  input \addressM[16] ;
  input \addressM[16]_0 ;
  input \ALUResult[30]_INST_0_i_10_0 ;
  input rd21;
  input \addressM[1] ;
  input \addressM[11] ;
  input \addressM[20] ;
  input \ALUResult[7]_INST_0_i_25_0 ;
  input \ALUResult[7]_INST_0_i_25_1 ;
  input \ALUResult[7]_INST_0_i_25_2 ;
  input [2:0]S;
  input [0:0]\q_reg[3]_0 ;
  input [3:0]DI;
  input [3:0]\q_reg[7]_0 ;
  input [3:0]\q_reg[11]_0 ;
  input [3:0]\q_reg[15]_0 ;
  input [3:0]\q_reg[19]_2 ;
  input [3:0]\q_reg[23]_0 ;
  input [3:0]\q_reg[27]_0 ;
  input [0:0]\q_reg[31]_1 ;

  wire [0:0]ALUControl;
  wire [0:0]ALUControl__0;
  wire [24:0]ALUResult;
  wire \ALUResult[0]_INST_0_i_10_n_0 ;
  wire \ALUResult[0]_INST_0_i_11_n_0 ;
  wire \ALUResult[0]_INST_0_i_12_n_0 ;
  wire \ALUResult[0]_INST_0_i_13_n_0 ;
  wire \ALUResult[0]_INST_0_i_14_n_0 ;
  wire \ALUResult[0]_INST_0_i_15_n_0 ;
  wire \ALUResult[0]_INST_0_i_16_n_0 ;
  wire \ALUResult[0]_INST_0_i_17_n_0 ;
  wire \ALUResult[0]_INST_0_i_1_n_0 ;
  wire \ALUResult[0]_INST_0_i_2_n_0 ;
  wire \ALUResult[0]_INST_0_i_3_0 ;
  wire \ALUResult[0]_INST_0_i_3_n_0 ;
  wire \ALUResult[0]_INST_0_i_4_n_0 ;
  wire \ALUResult[0]_INST_0_i_5_n_0 ;
  wire \ALUResult[0]_INST_0_i_6_0 ;
  wire \ALUResult[0]_INST_0_i_7_n_0 ;
  wire \ALUResult[0]_INST_0_i_8_n_0 ;
  wire \ALUResult[0]_INST_0_i_9_n_0 ;
  wire \ALUResult[10]_INST_0_i_10_n_0 ;
  wire \ALUResult[10]_INST_0_i_11_n_0 ;
  wire \ALUResult[10]_INST_0_i_2_n_0 ;
  wire \ALUResult[10]_INST_0_i_3_n_0 ;
  wire \ALUResult[10]_INST_0_i_4_n_0 ;
  wire \ALUResult[10]_INST_0_i_5_n_0 ;
  wire \ALUResult[10]_INST_0_i_6_n_0 ;
  wire \ALUResult[10]_INST_0_i_7_n_0 ;
  wire \ALUResult[10]_INST_0_i_8_n_0 ;
  wire \ALUResult[10]_INST_0_i_9_n_0 ;
  wire \ALUResult[11]_INST_0_i_10_n_0 ;
  wire \ALUResult[11]_INST_0_i_11_n_0 ;
  wire \ALUResult[11]_INST_0_i_12_n_0 ;
  wire \ALUResult[11]_INST_0_i_13_n_0 ;
  wire \ALUResult[11]_INST_0_i_14_n_0 ;
  wire \ALUResult[11]_INST_0_i_2_n_0 ;
  wire \ALUResult[11]_INST_0_i_3_n_0 ;
  wire \ALUResult[11]_INST_0_i_4_n_0 ;
  wire \ALUResult[11]_INST_0_i_6_n_0 ;
  wire \ALUResult[11]_INST_0_i_7_n_0 ;
  wire \ALUResult[11]_INST_0_i_8_n_0 ;
  wire \ALUResult[12]_INST_0_i_10_n_0 ;
  wire \ALUResult[12]_INST_0_i_11_n_0 ;
  wire \ALUResult[12]_INST_0_i_2_n_0 ;
  wire \ALUResult[12]_INST_0_i_3_n_0 ;
  wire \ALUResult[12]_INST_0_i_4_n_0 ;
  wire \ALUResult[12]_INST_0_i_5_n_0 ;
  wire \ALUResult[12]_INST_0_i_6_n_0 ;
  wire \ALUResult[12]_INST_0_i_7_n_0 ;
  wire \ALUResult[12]_INST_0_i_8_n_0 ;
  wire \ALUResult[12]_INST_0_i_9_n_0 ;
  wire \ALUResult[13]_INST_0_i_10_n_0 ;
  wire \ALUResult[13]_INST_0_i_11_n_0 ;
  wire \ALUResult[13]_INST_0_i_12_n_0 ;
  wire \ALUResult[13]_INST_0_i_2_n_0 ;
  wire \ALUResult[13]_INST_0_i_3_n_0 ;
  wire \ALUResult[13]_INST_0_i_4_n_0 ;
  wire \ALUResult[13]_INST_0_i_5_n_0 ;
  wire \ALUResult[13]_INST_0_i_6_n_0 ;
  wire \ALUResult[13]_INST_0_i_7_n_0 ;
  wire \ALUResult[13]_INST_0_i_8_n_0 ;
  wire \ALUResult[13]_INST_0_i_9_n_0 ;
  wire \ALUResult[14]_INST_0_i_10_n_0 ;
  wire \ALUResult[14]_INST_0_i_11_n_0 ;
  wire \ALUResult[14]_INST_0_i_12_n_0 ;
  wire \ALUResult[14]_INST_0_i_2_n_0 ;
  wire \ALUResult[14]_INST_0_i_3_n_0 ;
  wire \ALUResult[14]_INST_0_i_4_n_0 ;
  wire \ALUResult[14]_INST_0_i_5_n_0 ;
  wire \ALUResult[14]_INST_0_i_6_n_0 ;
  wire \ALUResult[14]_INST_0_i_7_n_0 ;
  wire \ALUResult[14]_INST_0_i_8_n_0 ;
  wire \ALUResult[14]_INST_0_i_9_n_0 ;
  wire \ALUResult[15]_INST_0_i_10_n_0 ;
  wire \ALUResult[15]_INST_0_i_11_n_0 ;
  wire \ALUResult[15]_INST_0_i_12_n_0 ;
  wire \ALUResult[15]_INST_0_i_13_n_0 ;
  wire \ALUResult[15]_INST_0_i_14_n_0 ;
  wire \ALUResult[15]_INST_0_i_15_n_0 ;
  wire \ALUResult[15]_INST_0_i_2_n_0 ;
  wire \ALUResult[15]_INST_0_i_3_n_0 ;
  wire \ALUResult[15]_INST_0_i_4_n_0 ;
  wire \ALUResult[15]_INST_0_i_5_n_0 ;
  wire \ALUResult[15]_INST_0_i_6_n_0 ;
  wire \ALUResult[15]_INST_0_i_7_n_0 ;
  wire \ALUResult[15]_INST_0_i_8_n_0 ;
  wire \ALUResult[15]_INST_0_i_9_n_0 ;
  wire \ALUResult[16]_INST_0_i_10_n_0 ;
  wire \ALUResult[16]_INST_0_i_11_n_0 ;
  wire \ALUResult[16]_INST_0_i_12_n_0 ;
  wire \ALUResult[16]_INST_0_i_13_n_0 ;
  wire \ALUResult[16]_INST_0_i_14_n_0 ;
  wire \ALUResult[16]_INST_0_i_15_n_0 ;
  wire \ALUResult[16]_INST_0_i_2_n_0 ;
  wire \ALUResult[16]_INST_0_i_3_n_0 ;
  wire \ALUResult[16]_INST_0_i_4_n_0 ;
  wire \ALUResult[16]_INST_0_i_5_n_0 ;
  wire \ALUResult[16]_INST_0_i_6_n_0 ;
  wire \ALUResult[16]_INST_0_i_7_n_0 ;
  wire \ALUResult[16]_INST_0_i_8_n_0 ;
  wire \ALUResult[16]_INST_0_i_9_n_0 ;
  wire \ALUResult[17]_INST_0_i_10_n_0 ;
  wire \ALUResult[17]_INST_0_i_11_n_0 ;
  wire \ALUResult[17]_INST_0_i_12_n_0 ;
  wire \ALUResult[17]_INST_0_i_2_n_0 ;
  wire \ALUResult[17]_INST_0_i_3_n_0 ;
  wire \ALUResult[17]_INST_0_i_4_n_0 ;
  wire \ALUResult[17]_INST_0_i_5_n_0 ;
  wire \ALUResult[17]_INST_0_i_6_n_0 ;
  wire \ALUResult[17]_INST_0_i_7_n_0 ;
  wire \ALUResult[17]_INST_0_i_8_n_0 ;
  wire \ALUResult[17]_INST_0_i_9_n_0 ;
  wire \ALUResult[18]_INST_0_i_10_n_0 ;
  wire \ALUResult[18]_INST_0_i_11_n_0 ;
  wire \ALUResult[18]_INST_0_i_12_n_0 ;
  wire \ALUResult[18]_INST_0_i_2_n_0 ;
  wire \ALUResult[18]_INST_0_i_3_n_0 ;
  wire \ALUResult[18]_INST_0_i_4_n_0 ;
  wire \ALUResult[18]_INST_0_i_5_n_0 ;
  wire \ALUResult[18]_INST_0_i_6_n_0 ;
  wire \ALUResult[18]_INST_0_i_7_n_0 ;
  wire \ALUResult[18]_INST_0_i_8_n_0 ;
  wire \ALUResult[18]_INST_0_i_9_n_0 ;
  wire \ALUResult[19]_INST_0_i_11_n_0 ;
  wire \ALUResult[19]_INST_0_i_12_n_0 ;
  wire \ALUResult[19]_INST_0_i_13_n_0 ;
  wire \ALUResult[19]_INST_0_i_14_n_0 ;
  wire \ALUResult[19]_INST_0_i_15_n_0 ;
  wire \ALUResult[19]_INST_0_i_16_n_0 ;
  wire \ALUResult[19]_INST_0_i_2_n_0 ;
  wire \ALUResult[19]_INST_0_i_3_n_0 ;
  wire \ALUResult[19]_INST_0_i_4_n_0 ;
  wire \ALUResult[19]_INST_0_i_7_n_0 ;
  wire \ALUResult[19]_INST_0_i_8_n_0 ;
  wire \ALUResult[19]_INST_0_i_9_n_0 ;
  wire \ALUResult[1]_INST_0_i_2_n_0 ;
  wire \ALUResult[1]_INST_0_i_3_n_0 ;
  wire \ALUResult[1]_INST_0_i_4_0 ;
  wire \ALUResult[1]_INST_0_i_4_n_0 ;
  wire \ALUResult[1]_INST_0_i_6_n_0 ;
  wire \ALUResult[1]_INST_0_i_7_n_0 ;
  wire \ALUResult[1]_INST_0_i_8_n_0 ;
  wire \ALUResult[1]_INST_0_i_9_n_0 ;
  wire \ALUResult[20]_INST_0_i_10_n_0 ;
  wire \ALUResult[20]_INST_0_i_11_n_0 ;
  wire \ALUResult[20]_INST_0_i_12_n_0 ;
  wire \ALUResult[20]_INST_0_i_13_n_0 ;
  wire \ALUResult[20]_INST_0_i_2_n_0 ;
  wire \ALUResult[20]_INST_0_i_3_n_0 ;
  wire \ALUResult[20]_INST_0_i_4_n_0 ;
  wire \ALUResult[20]_INST_0_i_5_n_0 ;
  wire \ALUResult[20]_INST_0_i_6_n_0 ;
  wire \ALUResult[20]_INST_0_i_7_n_0 ;
  wire \ALUResult[20]_INST_0_i_8_n_0 ;
  wire \ALUResult[20]_INST_0_i_9_n_0 ;
  wire \ALUResult[21]_INST_0_i_10_n_0 ;
  wire \ALUResult[21]_INST_0_i_11_n_0 ;
  wire \ALUResult[21]_INST_0_i_12_n_0 ;
  wire \ALUResult[21]_INST_0_i_13_n_0 ;
  wire \ALUResult[21]_INST_0_i_2_n_0 ;
  wire \ALUResult[21]_INST_0_i_3_n_0 ;
  wire \ALUResult[21]_INST_0_i_4_n_0 ;
  wire \ALUResult[21]_INST_0_i_5_n_0 ;
  wire \ALUResult[21]_INST_0_i_6_n_0 ;
  wire \ALUResult[21]_INST_0_i_7_n_0 ;
  wire \ALUResult[21]_INST_0_i_8_n_0 ;
  wire \ALUResult[21]_INST_0_i_9_n_0 ;
  wire \ALUResult[22]_INST_0_i_10_n_0 ;
  wire \ALUResult[22]_INST_0_i_11_n_0 ;
  wire \ALUResult[22]_INST_0_i_12_n_0 ;
  wire \ALUResult[22]_INST_0_i_13_n_0 ;
  wire \ALUResult[22]_INST_0_i_2_n_0 ;
  wire \ALUResult[22]_INST_0_i_3_n_0 ;
  wire \ALUResult[22]_INST_0_i_4_n_0 ;
  wire \ALUResult[22]_INST_0_i_5_n_0 ;
  wire \ALUResult[22]_INST_0_i_6_n_0 ;
  wire \ALUResult[22]_INST_0_i_7_n_0 ;
  wire \ALUResult[22]_INST_0_i_8_n_0 ;
  wire \ALUResult[22]_INST_0_i_9_n_0 ;
  wire \ALUResult[23]_INST_0_i_10_n_0 ;
  wire \ALUResult[23]_INST_0_i_11_n_0 ;
  wire \ALUResult[23]_INST_0_i_12_n_0 ;
  wire \ALUResult[23]_INST_0_i_2_n_0 ;
  wire \ALUResult[23]_INST_0_i_3_n_0 ;
  wire \ALUResult[23]_INST_0_i_4_n_0 ;
  wire \ALUResult[23]_INST_0_i_5_n_0 ;
  wire \ALUResult[23]_INST_0_i_6_n_0 ;
  wire \ALUResult[23]_INST_0_i_7_n_0 ;
  wire \ALUResult[23]_INST_0_i_8_n_0 ;
  wire \ALUResult[23]_INST_0_i_9_n_0 ;
  wire \ALUResult[24]_INST_0_i_10_n_0 ;
  wire \ALUResult[24]_INST_0_i_11_n_0 ;
  wire \ALUResult[24]_INST_0_i_12_n_0 ;
  wire \ALUResult[24]_INST_0_i_2_n_0 ;
  wire \ALUResult[24]_INST_0_i_3_n_0 ;
  wire \ALUResult[24]_INST_0_i_4_n_0 ;
  wire \ALUResult[24]_INST_0_i_5_n_0 ;
  wire \ALUResult[24]_INST_0_i_6_n_0 ;
  wire \ALUResult[24]_INST_0_i_7_n_0 ;
  wire \ALUResult[24]_INST_0_i_8_n_0 ;
  wire \ALUResult[24]_INST_0_i_9_n_0 ;
  wire \ALUResult[25]_INST_0_i_10_n_0 ;
  wire \ALUResult[25]_INST_0_i_11_n_0 ;
  wire \ALUResult[25]_INST_0_i_12_n_0 ;
  wire \ALUResult[25]_INST_0_i_2_n_0 ;
  wire \ALUResult[25]_INST_0_i_3_n_0 ;
  wire \ALUResult[25]_INST_0_i_4_n_0 ;
  wire \ALUResult[25]_INST_0_i_5_n_0 ;
  wire \ALUResult[25]_INST_0_i_6_n_0 ;
  wire \ALUResult[25]_INST_0_i_7_n_0 ;
  wire \ALUResult[25]_INST_0_i_8_n_0 ;
  wire \ALUResult[25]_INST_0_i_9_n_0 ;
  wire \ALUResult[26]_INST_0_i_10_n_0 ;
  wire \ALUResult[26]_INST_0_i_11_n_0 ;
  wire \ALUResult[26]_INST_0_i_2_n_0 ;
  wire \ALUResult[26]_INST_0_i_3_n_0 ;
  wire \ALUResult[26]_INST_0_i_4_n_0 ;
  wire \ALUResult[26]_INST_0_i_5_n_0 ;
  wire \ALUResult[26]_INST_0_i_6_n_0 ;
  wire \ALUResult[26]_INST_0_i_7_n_0 ;
  wire \ALUResult[26]_INST_0_i_8_n_0 ;
  wire \ALUResult[26]_INST_0_i_9_n_0 ;
  wire \ALUResult[27]_INST_0_i_10_n_0 ;
  wire \ALUResult[27]_INST_0_i_11_n_0 ;
  wire \ALUResult[27]_INST_0_i_12_n_0 ;
  wire \ALUResult[27]_INST_0_i_2_n_0 ;
  wire \ALUResult[27]_INST_0_i_3_n_0 ;
  wire \ALUResult[27]_INST_0_i_4_n_0 ;
  wire \ALUResult[27]_INST_0_i_5_n_0 ;
  wire \ALUResult[27]_INST_0_i_6_n_0 ;
  wire \ALUResult[27]_INST_0_i_7_n_0 ;
  wire \ALUResult[27]_INST_0_i_8_n_0 ;
  wire \ALUResult[27]_INST_0_i_9_n_0 ;
  wire \ALUResult[28]_INST_0_i_10_n_0 ;
  wire \ALUResult[28]_INST_0_i_11_n_0 ;
  wire \ALUResult[28]_INST_0_i_12_n_0 ;
  wire \ALUResult[28]_INST_0_i_2_n_0 ;
  wire \ALUResult[28]_INST_0_i_3_n_0 ;
  wire \ALUResult[28]_INST_0_i_4_n_0 ;
  wire \ALUResult[28]_INST_0_i_5_n_0 ;
  wire \ALUResult[28]_INST_0_i_6_n_0 ;
  wire \ALUResult[28]_INST_0_i_7_n_0 ;
  wire \ALUResult[28]_INST_0_i_8_n_0 ;
  wire \ALUResult[28]_INST_0_i_9_n_0 ;
  wire \ALUResult[29]_INST_0_i_12_n_0 ;
  wire \ALUResult[29]_INST_0_i_14_n_0 ;
  wire \ALUResult[29]_INST_0_i_15_n_0 ;
  wire \ALUResult[29]_INST_0_i_16_n_0 ;
  wire \ALUResult[29]_INST_0_i_17_n_0 ;
  wire \ALUResult[29]_INST_0_i_18_n_0 ;
  wire \ALUResult[29]_INST_0_i_19_n_0 ;
  wire \ALUResult[29]_INST_0_i_20_n_0 ;
  wire \ALUResult[29]_INST_0_i_2_n_0 ;
  wire \ALUResult[29]_INST_0_i_3_n_0 ;
  wire \ALUResult[29]_INST_0_i_4_n_0 ;
  wire \ALUResult[29]_INST_0_i_5_n_0 ;
  wire \ALUResult[29]_INST_0_i_6_n_0 ;
  wire \ALUResult[29]_INST_0_i_7_n_0 ;
  wire \ALUResult[29]_INST_0_i_8_n_0 ;
  wire \ALUResult[29]_INST_0_i_9_n_0 ;
  wire \ALUResult[2]_INST_0_i_10_n_0 ;
  wire \ALUResult[2]_INST_0_i_11_n_0 ;
  wire \ALUResult[2]_INST_0_i_2_n_0 ;
  wire \ALUResult[2]_INST_0_i_3_n_0 ;
  wire \ALUResult[2]_INST_0_i_4_n_0 ;
  wire \ALUResult[2]_INST_0_i_6_n_0 ;
  wire \ALUResult[2]_INST_0_i_7_n_0 ;
  wire \ALUResult[2]_INST_0_i_8_n_0 ;
  wire \ALUResult[2]_INST_0_i_9_n_0 ;
  wire \ALUResult[30]_INST_0_i_10_0 ;
  wire \ALUResult[30]_INST_0_i_11_n_0 ;
  wire \ALUResult[30]_INST_0_i_1_0 ;
  wire \ALUResult[30]_INST_0_i_6_n_0 ;
  wire \ALUResult[30]_INST_0_i_7_n_0 ;
  wire \ALUResult[30]_INST_0_i_8_n_0 ;
  wire \ALUResult[30]_INST_0_i_9_0 ;
  wire \ALUResult[30]_INST_0_i_9_n_0 ;
  wire \ALUResult[31]_INST_0_i_10_n_0 ;
  wire \ALUResult[31]_INST_0_i_11_n_0 ;
  wire \ALUResult[31]_INST_0_i_19_n_0 ;
  wire \ALUResult[31]_INST_0_i_1_n_0 ;
  wire \ALUResult[31]_INST_0_i_20_n_0 ;
  wire \ALUResult[31]_INST_0_i_21_n_0 ;
  wire \ALUResult[31]_INST_0_i_26_n_0 ;
  wire \ALUResult[31]_INST_0_i_27_n_0 ;
  wire \ALUResult[31]_INST_0_i_28_n_0 ;
  wire \ALUResult[31]_INST_0_i_29_n_0 ;
  wire \ALUResult[31]_INST_0_i_2_n_0 ;
  wire \ALUResult[31]_INST_0_i_3 ;
  wire \ALUResult[31]_INST_0_i_30_n_0 ;
  wire \ALUResult[31]_INST_0_i_31_n_0 ;
  wire \ALUResult[31]_INST_0_i_32_n_0 ;
  wire \ALUResult[31]_INST_0_i_3_0 ;
  wire \ALUResult[31]_INST_0_i_3_1 ;
  wire \ALUResult[31]_INST_0_i_6_0 ;
  wire \ALUResult[31]_INST_0_i_7_n_0 ;
  wire \ALUResult[3]_INST_0_i_10_n_0 ;
  wire \ALUResult[3]_INST_0_i_11_n_0 ;
  wire \ALUResult[3]_INST_0_i_12_n_0 ;
  wire \ALUResult[3]_INST_0_i_13_n_0 ;
  wire \ALUResult[3]_INST_0_i_3_n_0 ;
  wire \ALUResult[3]_INST_0_i_4_n_0 ;
  wire \ALUResult[3]_INST_0_i_6_n_0 ;
  wire \ALUResult[3]_INST_0_i_7_n_0 ;
  wire \ALUResult[3]_INST_0_i_8_n_0 ;
  wire \ALUResult[3]_INST_0_i_9_n_0 ;
  wire \ALUResult[4]_INST_0_i_10_n_0 ;
  wire \ALUResult[4]_INST_0_i_11_n_0 ;
  wire \ALUResult[4]_INST_0_i_12_n_0 ;
  wire \ALUResult[4]_INST_0_i_3_n_0 ;
  wire \ALUResult[4]_INST_0_i_4_n_0 ;
  wire \ALUResult[4]_INST_0_i_6_n_0 ;
  wire \ALUResult[4]_INST_0_i_7_n_0 ;
  wire \ALUResult[4]_INST_0_i_8_n_0 ;
  wire \ALUResult[4]_INST_0_i_9_n_0 ;
  wire \ALUResult[5]_INST_0_i_10_n_0 ;
  wire \ALUResult[5]_INST_0_i_11_n_0 ;
  wire \ALUResult[5]_INST_0_i_3_n_0 ;
  wire \ALUResult[5]_INST_0_i_4_n_0 ;
  wire \ALUResult[5]_INST_0_i_5_n_0 ;
  wire \ALUResult[5]_INST_0_i_6_n_0 ;
  wire \ALUResult[5]_INST_0_i_7_n_0 ;
  wire \ALUResult[5]_INST_0_i_8_n_0 ;
  wire \ALUResult[5]_INST_0_i_9_n_0 ;
  wire \ALUResult[6]_INST_0_i_10_n_0 ;
  wire \ALUResult[6]_INST_0_i_11_n_0 ;
  wire \ALUResult[6]_INST_0_i_12_n_0 ;
  wire \ALUResult[6]_INST_0_i_13_n_0 ;
  wire \ALUResult[6]_INST_0_i_14_n_0 ;
  wire \ALUResult[6]_INST_0_i_15_n_0 ;
  wire \ALUResult[6]_INST_0_i_16_n_0 ;
  wire \ALUResult[6]_INST_0_i_17_n_0 ;
  wire \ALUResult[6]_INST_0_i_3_n_0 ;
  wire \ALUResult[6]_INST_0_i_4_n_0 ;
  wire \ALUResult[6]_INST_0_i_5_n_0 ;
  wire \ALUResult[6]_INST_0_i_6_n_0 ;
  wire \ALUResult[6]_INST_0_i_7_n_0 ;
  wire \ALUResult[6]_INST_0_i_8_n_0 ;
  wire \ALUResult[6]_INST_0_i_9_n_0 ;
  wire \ALUResult[7]_INST_0_i_10_n_0 ;
  wire \ALUResult[7]_INST_0_i_11_n_0 ;
  wire \ALUResult[7]_INST_0_i_12_n_0 ;
  wire \ALUResult[7]_INST_0_i_13_n_0 ;
  wire \ALUResult[7]_INST_0_i_14_n_0 ;
  wire \ALUResult[7]_INST_0_i_15_n_0 ;
  wire \ALUResult[7]_INST_0_i_16_n_0 ;
  wire \ALUResult[7]_INST_0_i_17_n_0 ;
  wire \ALUResult[7]_INST_0_i_18_n_0 ;
  wire \ALUResult[7]_INST_0_i_19_n_0 ;
  wire \ALUResult[7]_INST_0_i_20_n_0 ;
  wire \ALUResult[7]_INST_0_i_21_n_0 ;
  wire \ALUResult[7]_INST_0_i_22_n_0 ;
  wire \ALUResult[7]_INST_0_i_23_n_0 ;
  wire \ALUResult[7]_INST_0_i_24_n_0 ;
  wire \ALUResult[7]_INST_0_i_25_0 ;
  wire \ALUResult[7]_INST_0_i_25_1 ;
  wire \ALUResult[7]_INST_0_i_25_2 ;
  wire \ALUResult[7]_INST_0_i_25_n_0 ;
  wire \ALUResult[7]_INST_0_i_26_n_0 ;
  wire \ALUResult[7]_INST_0_i_28_n_0 ;
  wire \ALUResult[7]_INST_0_i_29_n_0 ;
  wire \ALUResult[7]_INST_0_i_30_n_0 ;
  wire \ALUResult[7]_INST_0_i_31_n_0 ;
  wire \ALUResult[7]_INST_0_i_32_n_0 ;
  wire \ALUResult[7]_INST_0_i_33_n_0 ;
  wire \ALUResult[7]_INST_0_i_34_n_0 ;
  wire \ALUResult[7]_INST_0_i_35_n_0 ;
  wire \ALUResult[7]_INST_0_i_37_n_0 ;
  wire \ALUResult[7]_INST_0_i_3_n_0 ;
  wire \ALUResult[7]_INST_0_i_40_n_0 ;
  wire \ALUResult[7]_INST_0_i_4_n_0 ;
  wire \ALUResult[7]_INST_0_i_5_n_0 ;
  wire \ALUResult[7]_INST_0_i_6_n_0 ;
  wire \ALUResult[7]_INST_0_i_7_n_0 ;
  wire \ALUResult[7]_INST_0_i_8_n_0 ;
  wire \ALUResult[7]_INST_0_i_9_n_0 ;
  wire \ALUResult[8]_INST_0_i_10_n_0 ;
  wire \ALUResult[8]_INST_0_i_11_n_0 ;
  wire \ALUResult[8]_INST_0_i_2_n_0 ;
  wire \ALUResult[8]_INST_0_i_3_n_0 ;
  wire \ALUResult[8]_INST_0_i_4_n_0 ;
  wire \ALUResult[8]_INST_0_i_5_n_0 ;
  wire \ALUResult[8]_INST_0_i_6_n_0 ;
  wire \ALUResult[8]_INST_0_i_7_n_0 ;
  wire \ALUResult[8]_INST_0_i_8_n_0 ;
  wire \ALUResult[8]_INST_0_i_9_n_0 ;
  wire \ALUResult[9]_INST_0_i_10_n_0 ;
  wire \ALUResult[9]_INST_0_i_11_n_0 ;
  wire \ALUResult[9]_INST_0_i_2_n_0 ;
  wire \ALUResult[9]_INST_0_i_3_n_0 ;
  wire \ALUResult[9]_INST_0_i_4_n_0 ;
  wire \ALUResult[9]_INST_0_i_5_n_0 ;
  wire \ALUResult[9]_INST_0_i_6_n_0 ;
  wire \ALUResult[9]_INST_0_i_7_n_0 ;
  wire \ALUResult[9]_INST_0_i_8_n_0 ;
  wire \ALUResult[9]_INST_0_i_9_n_0 ;
  wire [0:0]CO;
  wire [3:0]DI;
  wire [27:0]Instr;
  wire LT;
  wire [0:0]O;
  wire [0:0]PCSrc;
  wire [31:0]ReadData;
  wire [2:0]S;
  wire [31:0]SrcA;
  wire [29:0]SrcB;
  wire [31:0]WriteData;
  wire \addressM[0] ;
  wire \addressM[0]_0 ;
  wire \addressM[0]_1 ;
  wire \addressM[0]_2 ;
  wire \addressM[11] ;
  wire \addressM[16] ;
  wire \addressM[16]_0 ;
  wire \addressM[1] ;
  wire \addressM[20] ;
  wire [29:0]\addressM[29] ;
  wire clk;
  wire [1:0]clk_0;
  wire [3:0]clk_1;
  wire [3:0]clk_10;
  wire [3:0]clk_11;
  wire [3:0]clk_12;
  wire [3:0]clk_13;
  wire [3:0]clk_14;
  wire [3:0]clk_15;
  wire [3:0]clk_16;
  wire [3:0]clk_2;
  wire [3:0]clk_3;
  wire [3:0]clk_4;
  wire [3:0]clk_5;
  wire [3:0]clk_6;
  wire [3:0]clk_7;
  wire [3:0]clk_8;
  wire [3:0]clk_9;
  wire [27:0]d2;
  wire [29:2]data8;
  wire [28:0]immext;
  wire [15:8]\loadext/ExtendedReadData__56 ;
  wire [7:0]\loadext/aligned_data__39 ;
  wire \q[11]_i_2_n_0 ;
  wire \q[11]_i_3_n_0 ;
  wire \q[11]_i_4_n_0 ;
  wire \q[11]_i_5_n_0 ;
  wire \q[11]_i_6_n_0 ;
  wire \q[11]_i_7_n_0 ;
  wire \q[11]_i_8_n_0 ;
  wire \q[11]_i_9_n_0 ;
  wire \q[15]_i_2_n_0 ;
  wire \q[15]_i_3_n_0 ;
  wire \q[15]_i_4_n_0 ;
  wire \q[15]_i_5_n_0 ;
  wire \q[15]_i_6_n_0 ;
  wire \q[15]_i_7_n_0 ;
  wire \q[15]_i_8_n_0 ;
  wire \q[15]_i_9_n_0 ;
  wire \q[19]_i_2_n_0 ;
  wire \q[19]_i_3_n_0 ;
  wire \q[19]_i_4_n_0 ;
  wire \q[19]_i_5_n_0 ;
  wire \q[19]_i_6_n_0 ;
  wire \q[19]_i_7_n_0 ;
  wire \q[19]_i_8_n_0 ;
  wire \q[19]_i_9_n_0 ;
  wire \q[23]_i_2_n_0 ;
  wire \q[23]_i_3_n_0 ;
  wire \q[23]_i_4_n_0 ;
  wire \q[23]_i_5_n_0 ;
  wire \q[23]_i_6_n_0 ;
  wire \q[23]_i_7_n_0 ;
  wire \q[23]_i_8_n_0 ;
  wire \q[23]_i_9_n_0 ;
  wire \q[27]_i_2_n_0 ;
  wire \q[27]_i_3_n_0 ;
  wire \q[27]_i_4_n_0 ;
  wire \q[27]_i_5_n_0 ;
  wire \q[27]_i_6_n_0 ;
  wire \q[27]_i_7_n_0 ;
  wire \q[27]_i_8_n_0 ;
  wire \q[27]_i_9_n_0 ;
  wire \q[31]_i_16_n_0 ;
  wire \q[31]_i_17_n_0 ;
  wire \q[31]_i_19_n_0 ;
  wire \q[31]_i_20_n_0 ;
  wire \q[31]_i_21_n_0 ;
  wire \q[31]_i_22_n_0 ;
  wire \q[31]_i_23_n_0 ;
  wire \q[31]_i_24_n_0 ;
  wire \q[31]_i_25_0 ;
  wire \q[31]_i_25_n_0 ;
  wire \q[31]_i_26_n_0 ;
  wire \q[31]_i_27_n_0 ;
  wire \q[31]_i_28_n_0 ;
  wire \q[31]_i_29_n_0 ;
  wire \q[31]_i_2_n_0 ;
  wire \q[31]_i_31_n_0 ;
  wire \q[31]_i_32_n_0 ;
  wire \q[31]_i_33_n_0 ;
  wire \q[31]_i_34_n_0 ;
  wire \q[31]_i_35_n_0 ;
  wire \q[31]_i_36_n_0 ;
  wire \q[31]_i_37_n_0 ;
  wire \q[31]_i_38_n_0 ;
  wire \q[31]_i_39_n_0 ;
  wire \q[31]_i_3_n_0 ;
  wire \q[31]_i_40_n_0 ;
  wire \q[31]_i_41_n_0 ;
  wire \q[31]_i_42_n_0 ;
  wire \q[31]_i_44_n_0 ;
  wire \q[31]_i_46_n_0 ;
  wire \q[31]_i_48_n_0 ;
  wire \q[31]_i_49_n_0 ;
  wire \q[31]_i_4_n_0 ;
  wire \q[31]_i_5 ;
  wire \q[31]_i_50_n_0 ;
  wire \q[31]_i_52_n_0 ;
  wire \q[31]_i_53_n_0 ;
  wire \q[31]_i_5_0 ;
  wire \q[31]_i_8_n_0 ;
  wire \q[31]_i_9_0 ;
  wire \q[3]_i_2_n_0 ;
  wire \q[3]_i_3_n_0 ;
  wire \q[3]_i_4_n_0 ;
  wire \q[3]_i_5_n_0 ;
  wire \q[3]_i_6_n_0 ;
  wire \q[3]_i_7_n_0 ;
  wire \q[3]_i_8_n_0 ;
  wire \q[3]_i_9_n_0 ;
  wire \q[7]_i_2_n_0 ;
  wire \q[7]_i_3_n_0 ;
  wire \q[7]_i_4_n_0 ;
  wire \q[7]_i_5_n_0 ;
  wire \q[7]_i_6_n_0 ;
  wire \q[7]_i_7_n_0 ;
  wire \q[7]_i_8_n_0 ;
  wire \q[7]_i_9_n_0 ;
  wire [3:0]\q_reg[11] ;
  wire [3:0]\q_reg[11]_0 ;
  wire \q_reg[11]_i_1_n_0 ;
  wire \q_reg[11]_i_1_n_1 ;
  wire \q_reg[11]_i_1_n_2 ;
  wire \q_reg[11]_i_1_n_3 ;
  wire [3:0]\q_reg[15] ;
  wire [3:0]\q_reg[15]_0 ;
  wire \q_reg[15]_i_1_n_0 ;
  wire \q_reg[15]_i_1_n_1 ;
  wire \q_reg[15]_i_1_n_2 ;
  wire \q_reg[15]_i_1_n_3 ;
  wire [3:0]\q_reg[19] ;
  wire \q_reg[19]_0 ;
  wire \q_reg[19]_1 ;
  wire [3:0]\q_reg[19]_2 ;
  wire \q_reg[19]_i_1_n_0 ;
  wire \q_reg[19]_i_1_n_1 ;
  wire \q_reg[19]_i_1_n_2 ;
  wire \q_reg[19]_i_1_n_3 ;
  wire [3:0]\q_reg[23] ;
  wire [3:0]\q_reg[23]_0 ;
  wire \q_reg[23]_i_1_n_0 ;
  wire \q_reg[23]_i_1_n_1 ;
  wire \q_reg[23]_i_1_n_2 ;
  wire \q_reg[23]_i_1_n_3 ;
  wire [3:0]\q_reg[27] ;
  wire [3:0]\q_reg[27]_0 ;
  wire \q_reg[27]_i_1_n_0 ;
  wire \q_reg[27]_i_1_n_1 ;
  wire \q_reg[27]_i_1_n_2 ;
  wire \q_reg[27]_i_1_n_3 ;
  wire [3:0]\q_reg[31] ;
  wire \q_reg[31]_0 ;
  wire [0:0]\q_reg[31]_1 ;
  wire \q_reg[31]_i_1_n_1 ;
  wire \q_reg[31]_i_1_n_2 ;
  wire \q_reg[31]_i_1_n_3 ;
  wire [3:0]\q_reg[3] ;
  wire [0:0]\q_reg[3]_0 ;
  wire \q_reg[3]_i_1_n_0 ;
  wire \q_reg[3]_i_1_n_1 ;
  wire \q_reg[3]_i_1_n_2 ;
  wire \q_reg[3]_i_1_n_3 ;
  wire [3:0]\q_reg[7] ;
  wire [3:0]\q_reg[7]_0 ;
  wire \q_reg[7]_i_1_n_0 ;
  wire \q_reg[7]_i_1_n_1 ;
  wire \q_reg[7]_i_1_n_2 ;
  wire \q_reg[7]_i_1_n_3 ;
  wire [31:0]rd10;
  wire rd11;
  wire [31:0]rd20;
  wire rd21;
  wire \readDataM[0] ;
  wire \readDataM[15] ;
  wire \readDataM[1] ;
  wire \readDataM[2] ;
  wire \readDataM[30] ;
  wire \readDataM[31] ;
  wire \readDataM[3] ;
  wire \readDataM[4] ;
  wire \readDataM[5] ;
  wire \readDataM[6] ;
  wire \readDataM[7] ;
  wire rf_reg_r1_0_31_0_5_i_20_n_0;
  wire rf_reg_r1_0_31_12_17_i_13_n_0;
  wire rf_reg_r1_0_31_12_17_i_15_n_0;
  wire rf_reg_r1_0_31_12_17_i_16_n_0;
  wire rf_reg_r1_0_31_12_17_i_17_n_0;
  wire rf_reg_r1_0_31_12_17_i_18_n_0;
  wire rf_reg_r1_0_31_12_17_i_19_n_0;
  wire rf_reg_r1_0_31_18_23_i_10_n_0;
  wire rf_reg_r1_0_31_18_23_i_12_n_0;
  wire rf_reg_r1_0_31_18_23_i_14_n_0;
  wire rf_reg_r1_0_31_18_23_i_16_n_0;
  wire rf_reg_r1_0_31_18_23_i_18_n_0;
  wire rf_reg_r1_0_31_18_23_i_8_n_0;
  wire rf_reg_r1_0_31_24_29_i_10_n_0;
  wire rf_reg_r1_0_31_24_29_i_12_n_0;
  wire rf_reg_r1_0_31_24_29_i_14_n_0;
  wire rf_reg_r1_0_31_24_29_i_16_n_0;
  wire rf_reg_r1_0_31_24_29_i_18_n_0;
  wire rf_reg_r1_0_31_24_29_i_8_n_0;
  wire rf_reg_r1_0_31_6_11_i_17_n_0;
  wire rf_reg_r1_0_31_6_11_i_18_n_0;
  wire rf_reg_r1_0_31_6_11_i_19_n_0;
  wire rf_reg_r1_0_31_6_11_i_20_n_0;
  wire [7:0]rf_reg_r2_0_31_12_17_0;
  wire rf_reg_r2_0_31_12_17_1;
  wire rf_reg_r2_0_31_12_17_2;
  wire rf_reg_r2_0_31_18_23_0;
  wire rf_reg_r2_0_31_18_23_1;
  wire rf_reg_r2_0_31_18_23_2;
  wire rf_reg_r2_0_31_18_23_3;
  wire rf_reg_r2_0_31_18_23_4;
  wire rf_reg_r2_0_31_18_23_5;
  wire rf_reg_r2_0_31_24_29_0;
  wire rf_reg_r2_0_31_24_29_1;
  wire rf_reg_r2_0_31_24_29_2;
  wire rf_reg_r2_0_31_24_29_3;
  wire rf_reg_r2_0_31_24_29_4;
  wire rf_reg_r2_0_31_24_29_5;
  wire [1:0]s;
  wire [2:0]sel0;
  wire [29:8]wd3;
  wire we3;
  wire [9:0]\writeDataM[31] ;
  wire [3:3]\NLW_q_reg[31]_i_1_CO_UNCONNECTED ;
  wire [1:0]NLW_rf_reg_r1_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r1_0_31_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r1_0_31_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r1_0_31_24_29_DOD_UNCONNECTED;
  wire NLW_rf_reg_r1_0_31_30_31_SPO_UNCONNECTED;
  wire NLW_rf_reg_r1_0_31_30_31__0_SPO_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r1_0_31_6_11_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r2_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r2_0_31_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r2_0_31_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r2_0_31_24_29_DOD_UNCONNECTED;
  wire NLW_rf_reg_r2_0_31_30_31_SPO_UNCONNECTED;
  wire NLW_rf_reg_r2_0_31_30_31__0_SPO_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r2_0_31_6_11_DOD_UNCONNECTED;

  LUT5 #(
    .INIT(32'hEAFAEAAA)) 
    \ALUResult[0]_INST_0 
       (.I0(\ALUResult[0]_INST_0_i_1_n_0 ),
        .I1(\ALUResult[0]_INST_0_i_2_n_0 ),
        .I2(\addressM[0] ),
        .I3(\addressM[0]_0 ),
        .I4(\ALUResult[0]_INST_0_i_3_n_0 ),
        .O(\ALUResult[0]_INST_0_i_3_0 ));
  LUT6 #(
    .INIT(64'h7272500022225000)) 
    \ALUResult[0]_INST_0_i_1 
       (.I0(\addressM[0]_0 ),
        .I1(\addressM[0] ),
        .I2(\ALUResult[0]_INST_0_i_4_n_0 ),
        .I3(\ALUResult[0]_INST_0_i_5_n_0 ),
        .I4(SrcB[0]),
        .I5(\ALUResult[1]_INST_0_i_8_n_0 ),
        .O(\ALUResult[0]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \ALUResult[0]_INST_0_i_10 
       (.I0(SrcB[14]),
        .I1(SrcB[13]),
        .I2(SrcB[12]),
        .O(\ALUResult[0]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \ALUResult[0]_INST_0_i_11 
       (.I0(SrcB[17]),
        .I1(SrcB[15]),
        .I2(SrcB[19]),
        .I3(SrcB[18]),
        .O(\ALUResult[0]_INST_0_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \ALUResult[0]_INST_0_i_12 
       (.I0(SrcB[11]),
        .I1(SrcB[10]),
        .I2(SrcB[9]),
        .I3(SrcB[20]),
        .I4(\ALUResult[0]_INST_0_i_17_n_0 ),
        .O(\ALUResult[0]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \ALUResult[0]_INST_0_i_13 
       (.I0(SrcA[0]),
        .I1(SrcA[16]),
        .I2(SrcB[3]),
        .I3(SrcA[24]),
        .I4(SrcB[4]),
        .I5(SrcA[8]),
        .O(\ALUResult[0]_INST_0_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hFF780078)) 
    \ALUResult[0]_INST_0_i_14 
       (.I0(rd11),
        .I1(rd10[0]),
        .I2(SrcB[0]),
        .I3(ALUControl),
        .I4(LT),
        .O(\ALUResult[0]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \ALUResult[0]_INST_0_i_15 
       (.I0(rd11),
        .I1(rd10[0]),
        .I2(SrcB[3]),
        .I3(SrcB[4]),
        .I4(SrcB[2]),
        .I5(SrcB[1]),
        .O(\ALUResult[0]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h050005FF053305FF)) 
    \ALUResult[0]_INST_0_i_16 
       (.I0(immext[25]),
        .I1(rd20[25]),
        .I2(immext[26]),
        .I3(\addressM[1] ),
        .I4(rd21),
        .I5(rd20[26]),
        .O(\ALUResult[0]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \ALUResult[0]_INST_0_i_17 
       (.I0(SrcB[6]),
        .I1(SrcB[5]),
        .I2(SrcB[8]),
        .I3(SrcB[7]),
        .O(\ALUResult[0]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FCFCAAAAC0C0)) 
    \ALUResult[0]_INST_0_i_2 
       (.I0(\addressM[29] [0]),
        .I1(SrcA[0]),
        .I2(SrcB[0]),
        .I3(\ALUResult[0]_INST_0_i_7_n_0 ),
        .I4(\addressM[0]_1 ),
        .I5(\addressM[0]_2 ),
        .O(\ALUResult[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \ALUResult[0]_INST_0_i_3 
       (.I0(SrcA[31]),
        .I1(\ALUResult[0]_INST_0_i_8_n_0 ),
        .I2(\ALUResult[0]_INST_0_i_9_n_0 ),
        .I3(\ALUResult[0]_INST_0_i_10_n_0 ),
        .I4(\ALUResult[0]_INST_0_i_11_n_0 ),
        .I5(\ALUResult[0]_INST_0_i_12_n_0 ),
        .O(\ALUResult[0]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \ALUResult[0]_INST_0_i_4 
       (.I0(\ALUResult[0]_INST_0_i_12_n_0 ),
        .I1(\ALUResult[0]_INST_0_i_11_n_0 ),
        .I2(\ALUResult[0]_INST_0_i_10_n_0 ),
        .I3(\ALUResult[0]_INST_0_i_9_n_0 ),
        .I4(\ALUResult[0]_INST_0_i_8_n_0 ),
        .O(\ALUResult[0]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \ALUResult[0]_INST_0_i_5 
       (.I0(\ALUResult[6]_INST_0_i_11_n_0 ),
        .I1(SrcB[2]),
        .I2(\ALUResult[2]_INST_0_i_10_n_0 ),
        .I3(\ALUResult[4]_INST_0_i_12_n_0 ),
        .I4(\ALUResult[0]_INST_0_i_13_n_0 ),
        .I5(SrcB[1]),
        .O(\ALUResult[0]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hF808)) 
    \ALUResult[0]_INST_0_i_6 
       (.I0(rd20[0]),
        .I1(rd21),
        .I2(\addressM[1] ),
        .I3(immext[0]),
        .O(SrcB[0]));
  LUT6 #(
    .INIT(64'h000CAAAAFF0CAAAA)) 
    \ALUResult[0]_INST_0_i_7 
       (.I0(\ALUResult[0]_INST_0_i_14_n_0 ),
        .I1(\ALUResult[0]_INST_0_i_15_n_0 ),
        .I2(\ALUResult[30]_INST_0_i_7_n_0 ),
        .I3(ALUControl),
        .I4(ALUControl__0),
        .I5(CO),
        .O(\ALUResult[0]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \ALUResult[0]_INST_0_i_8 
       (.I0(SrcB[23]),
        .I1(SrcB[24]),
        .I2(SrcB[21]),
        .I3(SrcB[22]),
        .I4(SrcB[16]),
        .O(\ALUResult[0]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \ALUResult[0]_INST_0_i_9 
       (.I0(clk_0[1]),
        .I1(SrcB[29]),
        .I2(clk_0[0]),
        .I3(\ALUResult[0]_INST_0_i_16_n_0 ),
        .I4(SrcB[27]),
        .I5(SrcB[28]),
        .O(\ALUResult[0]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0CCCCAAAACCCC)) 
    \ALUResult[10]_INST_0 
       (.I0(SrcB[10]),
        .I1(\ALUResult[10]_INST_0_i_2_n_0 ),
        .I2(\ALUResult[10]_INST_0_i_3_n_0 ),
        .I3(\ALUResult[10]_INST_0_i_4_n_0 ),
        .I4(\addressM[0]_0 ),
        .I5(\addressM[0] ),
        .O(\ALUResult[31]_INST_0_i_3_1 ));
  LUT5 #(
    .INIT(32'h0808F808)) 
    \ALUResult[10]_INST_0_i_1 
       (.I0(rd20[10]),
        .I1(rd21),
        .I2(\addressM[1] ),
        .I3(Instr[26]),
        .I4(sel0[2]),
        .O(SrcB[10]));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    \ALUResult[10]_INST_0_i_10 
       (.I0(SrcA[3]),
        .I1(SrcB[2]),
        .I2(\ALUResult[31]_INST_0_i_10_n_0 ),
        .I3(SrcA[7]),
        .I4(SrcB[1]),
        .I5(\ALUResult[12]_INST_0_i_11_n_0 ),
        .O(\ALUResult[10]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hB080)) 
    \ALUResult[10]_INST_0_i_11 
       (.I0(rd10[30]),
        .I1(SrcB[4]),
        .I2(rd11),
        .I3(rd10[14]),
        .O(\ALUResult[10]_INST_0_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \ALUResult[10]_INST_0_i_2 
       (.I0(\ALUResult[29]_INST_0_i_8_n_0 ),
        .I1(\ALUResult[11]_INST_0_i_6_n_0 ),
        .I2(\ALUResult[31]_INST_0_i_11_n_0 ),
        .I3(\ALUResult[10]_INST_0_i_5_n_0 ),
        .I4(\ALUResult[10]_INST_0_i_6_n_0 ),
        .O(\ALUResult[10]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000EAEAFF008080)) 
    \ALUResult[10]_INST_0_i_3 
       (.I0(SrcB[10]),
        .I1(rd11),
        .I2(rd10[10]),
        .I3(\addressM[29] [10]),
        .I4(\addressM[0]_1 ),
        .I5(\addressM[0]_2 ),
        .O(\ALUResult[10]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8A88A888A888A888)) 
    \ALUResult[10]_INST_0_i_4 
       (.I0(\addressM[16]_0 ),
        .I1(\ALUResult[10]_INST_0_i_7_n_0 ),
        .I2(SrcB[10]),
        .I3(\addressM[16] ),
        .I4(rd10[10]),
        .I5(rd11),
        .O(\ALUResult[10]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[10]_INST_0_i_5 
       (.I0(\ALUResult[12]_INST_0_i_8_n_0 ),
        .I1(SrcB[1]),
        .I2(\ALUResult[10]_INST_0_i_8_n_0 ),
        .O(\ALUResult[10]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8F8800000000)) 
    \ALUResult[10]_INST_0_i_6 
       (.I0(\ALUResult[7]_INST_0_i_7_n_0 ),
        .I1(\ALUResult[11]_INST_0_i_11_n_0 ),
        .I2(\ALUResult[30]_INST_0_i_7_n_0 ),
        .I3(\ALUResult[10]_INST_0_i_9_n_0 ),
        .I4(\ALUResult[0]_INST_0_i_3_n_0 ),
        .I5(\addressM[0] ),
        .O(\ALUResult[10]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00F2000000220000)) 
    \ALUResult[10]_INST_0_i_7 
       (.I0(\ALUResult[11]_INST_0_i_12_n_0 ),
        .I1(\ALUResult[30]_INST_0_i_7_n_0 ),
        .I2(\ALUResult[10]_INST_0_i_10_n_0 ),
        .I3(ALUControl),
        .I4(ALUControl__0),
        .I5(\ALUResult[7]_INST_0_i_7_n_0 ),
        .O(\ALUResult[10]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h7250FFFF72500000)) 
    \ALUResult[10]_INST_0_i_8 
       (.I0(SrcB[3]),
        .I1(SrcB[4]),
        .I2(\ALUResult[10]_INST_0_i_11_n_0 ),
        .I3(SrcA[22]),
        .I4(SrcB[2]),
        .I5(\ALUResult[8]_INST_0_i_9_n_0 ),
        .O(\ALUResult[10]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[10]_INST_0_i_9 
       (.I0(\ALUResult[16]_INST_0_i_14_n_0 ),
        .I1(\ALUResult[7]_INST_0_i_20_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[7]_INST_0_i_18_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[7]_INST_0_i_19_n_0 ),
        .O(\ALUResult[10]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0CCCCAAAACCCC)) 
    \ALUResult[11]_INST_0 
       (.I0(SrcB[11]),
        .I1(\ALUResult[11]_INST_0_i_2_n_0 ),
        .I2(\ALUResult[11]_INST_0_i_3_n_0 ),
        .I3(\ALUResult[11]_INST_0_i_4_n_0 ),
        .I4(\addressM[0]_0 ),
        .I5(\addressM[0] ),
        .O(\ALUResult[31]_INST_0_i_3_0 ));
  LUT5 #(
    .INIT(32'h0808F808)) 
    \ALUResult[11]_INST_0_i_1 
       (.I0(rd20[11]),
        .I1(rd21),
        .I2(\addressM[1] ),
        .I3(\addressM[11] ),
        .I4(sel0[2]),
        .O(SrcB[11]));
  LUT6 #(
    .INIT(64'h7250FFFF72500000)) 
    \ALUResult[11]_INST_0_i_10 
       (.I0(SrcB[3]),
        .I1(SrcB[4]),
        .I2(\ALUResult[11]_INST_0_i_13_n_0 ),
        .I3(SrcA[23]),
        .I4(SrcB[2]),
        .I5(\ALUResult[7]_INST_0_i_24_n_0 ),
        .O(\ALUResult[11]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[11]_INST_0_i_11 
       (.I0(\ALUResult[17]_INST_0_i_11_n_0 ),
        .I1(\ALUResult[7]_INST_0_i_14_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[15]_INST_0_i_14_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[7]_INST_0_i_16_n_0 ),
        .O(\ALUResult[11]_INST_0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[11]_INST_0_i_12 
       (.I0(\ALUResult[11]_INST_0_i_14_n_0 ),
        .I1(SrcB[1]),
        .I2(\ALUResult[13]_INST_0_i_12_n_0 ),
        .O(\ALUResult[11]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hE020)) 
    \ALUResult[11]_INST_0_i_13 
       (.I0(rd10[15]),
        .I1(SrcB[4]),
        .I2(rd11),
        .I3(rd10[31]),
        .O(\ALUResult[11]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h000000003300B8B8)) 
    \ALUResult[11]_INST_0_i_14 
       (.I0(SrcA[4]),
        .I1(SrcB[2]),
        .I2(SrcA[8]),
        .I3(SrcA[0]),
        .I4(SrcB[3]),
        .I5(SrcB[4]),
        .O(\ALUResult[11]_INST_0_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \ALUResult[11]_INST_0_i_2 
       (.I0(\ALUResult[29]_INST_0_i_8_n_0 ),
        .I1(\ALUResult[12]_INST_0_i_5_n_0 ),
        .I2(\ALUResult[31]_INST_0_i_11_n_0 ),
        .I3(\ALUResult[11]_INST_0_i_6_n_0 ),
        .I4(\ALUResult[11]_INST_0_i_7_n_0 ),
        .O(\ALUResult[11]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000EAEAFF008080)) 
    \ALUResult[11]_INST_0_i_3 
       (.I0(SrcB[11]),
        .I1(rd11),
        .I2(rd10[11]),
        .I3(\addressM[29] [11]),
        .I4(\addressM[0]_1 ),
        .I5(\addressM[0]_2 ),
        .O(\ALUResult[11]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8A88A888A888A888)) 
    \ALUResult[11]_INST_0_i_4 
       (.I0(\addressM[16]_0 ),
        .I1(\ALUResult[11]_INST_0_i_8_n_0 ),
        .I2(SrcB[11]),
        .I3(\addressM[16] ),
        .I4(rd10[11]),
        .I5(rd11),
        .O(\ALUResult[11]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[11]_INST_0_i_6 
       (.I0(\ALUResult[13]_INST_0_i_9_n_0 ),
        .I1(SrcB[1]),
        .I2(\ALUResult[11]_INST_0_i_10_n_0 ),
        .O(\ALUResult[11]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8F8800000000)) 
    \ALUResult[11]_INST_0_i_7 
       (.I0(\ALUResult[7]_INST_0_i_7_n_0 ),
        .I1(\ALUResult[12]_INST_0_i_9_n_0 ),
        .I2(\ALUResult[30]_INST_0_i_7_n_0 ),
        .I3(\ALUResult[11]_INST_0_i_11_n_0 ),
        .I4(\ALUResult[0]_INST_0_i_3_n_0 ),
        .I5(\addressM[0] ),
        .O(\ALUResult[11]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00F2000000220000)) 
    \ALUResult[11]_INST_0_i_8 
       (.I0(\ALUResult[12]_INST_0_i_10_n_0 ),
        .I1(\ALUResult[30]_INST_0_i_7_n_0 ),
        .I2(\ALUResult[11]_INST_0_i_12_n_0 ),
        .I3(ALUControl),
        .I4(ALUControl__0),
        .I5(\ALUResult[7]_INST_0_i_7_n_0 ),
        .O(\ALUResult[11]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0CCCCAAAACCCC)) 
    \ALUResult[12]_INST_0 
       (.I0(SrcB[12]),
        .I1(\ALUResult[12]_INST_0_i_2_n_0 ),
        .I2(\ALUResult[12]_INST_0_i_3_n_0 ),
        .I3(\ALUResult[12]_INST_0_i_4_n_0 ),
        .I4(\addressM[0]_0 ),
        .I5(\addressM[0] ),
        .O(ALUResult[7]));
  LUT6 #(
    .INIT(64'hF8F8F8F8F8080808)) 
    \ALUResult[12]_INST_0_i_1 
       (.I0(rd20[12]),
        .I1(rd21),
        .I2(\addressM[1] ),
        .I3(Instr[8]),
        .I4(\q_reg[19]_1 ),
        .I5(\q_reg[19]_0 ),
        .O(SrcB[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[12]_INST_0_i_10 
       (.I0(\ALUResult[12]_INST_0_i_11_n_0 ),
        .I1(SrcB[1]),
        .I2(\ALUResult[14]_INST_0_i_12_n_0 ),
        .O(\ALUResult[12]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h000000003300B8B8)) 
    \ALUResult[12]_INST_0_i_11 
       (.I0(SrcA[5]),
        .I1(SrcB[2]),
        .I2(SrcA[9]),
        .I3(SrcA[1]),
        .I4(SrcB[3]),
        .I5(SrcB[4]),
        .O(\ALUResult[12]_INST_0_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \ALUResult[12]_INST_0_i_2 
       (.I0(\ALUResult[29]_INST_0_i_8_n_0 ),
        .I1(\ALUResult[13]_INST_0_i_5_n_0 ),
        .I2(\ALUResult[31]_INST_0_i_11_n_0 ),
        .I3(\ALUResult[12]_INST_0_i_5_n_0 ),
        .I4(\ALUResult[12]_INST_0_i_6_n_0 ),
        .O(\ALUResult[12]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000EAEAFF008080)) 
    \ALUResult[12]_INST_0_i_3 
       (.I0(SrcB[12]),
        .I1(rd11),
        .I2(rd10[12]),
        .I3(\addressM[29] [12]),
        .I4(\addressM[0]_1 ),
        .I5(\addressM[0]_2 ),
        .O(\ALUResult[12]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8A88A888A888A888)) 
    \ALUResult[12]_INST_0_i_4 
       (.I0(\addressM[16]_0 ),
        .I1(\ALUResult[12]_INST_0_i_7_n_0 ),
        .I2(SrcB[12]),
        .I3(\addressM[16] ),
        .I4(rd10[12]),
        .I5(rd11),
        .O(\ALUResult[12]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[12]_INST_0_i_5 
       (.I0(\ALUResult[14]_INST_0_i_9_n_0 ),
        .I1(SrcB[1]),
        .I2(\ALUResult[12]_INST_0_i_8_n_0 ),
        .O(\ALUResult[12]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8F8800000000)) 
    \ALUResult[12]_INST_0_i_6 
       (.I0(\ALUResult[7]_INST_0_i_7_n_0 ),
        .I1(\ALUResult[13]_INST_0_i_10_n_0 ),
        .I2(\ALUResult[30]_INST_0_i_7_n_0 ),
        .I3(\ALUResult[12]_INST_0_i_9_n_0 ),
        .I4(\ALUResult[0]_INST_0_i_3_n_0 ),
        .I5(\addressM[0] ),
        .O(\ALUResult[12]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00F2000000220000)) 
    \ALUResult[12]_INST_0_i_7 
       (.I0(\ALUResult[13]_INST_0_i_11_n_0 ),
        .I1(\ALUResult[30]_INST_0_i_7_n_0 ),
        .I2(\ALUResult[12]_INST_0_i_10_n_0 ),
        .I3(ALUControl),
        .I4(ALUControl__0),
        .I5(\ALUResult[7]_INST_0_i_7_n_0 ),
        .O(\ALUResult[12]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00CAFFFF00CA0000)) 
    \ALUResult[12]_INST_0_i_8 
       (.I0(SrcA[16]),
        .I1(SrcA[24]),
        .I2(SrcB[3]),
        .I3(SrcB[4]),
        .I4(SrcB[2]),
        .I5(\ALUResult[8]_INST_0_i_10_n_0 ),
        .O(\ALUResult[12]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[12]_INST_0_i_9 
       (.I0(\ALUResult[18]_INST_0_i_11_n_0 ),
        .I1(\ALUResult[7]_INST_0_i_18_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[16]_INST_0_i_14_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[7]_INST_0_i_20_n_0 ),
        .O(\ALUResult[12]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0CCCCAAAACCCC)) 
    \ALUResult[13]_INST_0 
       (.I0(SrcB[13]),
        .I1(\ALUResult[13]_INST_0_i_2_n_0 ),
        .I2(\ALUResult[13]_INST_0_i_3_n_0 ),
        .I3(\ALUResult[13]_INST_0_i_4_n_0 ),
        .I4(\addressM[0]_0 ),
        .I5(\addressM[0] ),
        .O(ALUResult[8]));
  LUT6 #(
    .INIT(64'hF8F8F8F8F8080808)) 
    \ALUResult[13]_INST_0_i_1 
       (.I0(rd20[13]),
        .I1(rd21),
        .I2(\addressM[1] ),
        .I3(Instr[9]),
        .I4(\q_reg[19]_1 ),
        .I5(\q_reg[19]_0 ),
        .O(SrcB[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[13]_INST_0_i_10 
       (.I0(\ALUResult[19]_INST_0_i_15_n_0 ),
        .I1(\ALUResult[15]_INST_0_i_14_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[17]_INST_0_i_11_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[7]_INST_0_i_14_n_0 ),
        .O(\ALUResult[13]_INST_0_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ALUResult[13]_INST_0_i_11 
       (.I0(\ALUResult[13]_INST_0_i_12_n_0 ),
        .I1(SrcB[1]),
        .I2(\ALUResult[15]_INST_0_i_15_n_0 ),
        .I3(SrcB[2]),
        .I4(\ALUResult[19]_INST_0_i_16_n_0 ),
        .O(\ALUResult[13]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h000000003300B8B8)) 
    \ALUResult[13]_INST_0_i_12 
       (.I0(SrcA[6]),
        .I1(SrcB[2]),
        .I2(SrcA[10]),
        .I3(SrcA[2]),
        .I4(SrcB[3]),
        .I5(SrcB[4]),
        .O(\ALUResult[13]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \ALUResult[13]_INST_0_i_2 
       (.I0(\ALUResult[29]_INST_0_i_8_n_0 ),
        .I1(\ALUResult[14]_INST_0_i_5_n_0 ),
        .I2(\ALUResult[31]_INST_0_i_11_n_0 ),
        .I3(\ALUResult[13]_INST_0_i_5_n_0 ),
        .I4(\ALUResult[13]_INST_0_i_6_n_0 ),
        .O(\ALUResult[13]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000EAEAFF008080)) 
    \ALUResult[13]_INST_0_i_3 
       (.I0(SrcB[13]),
        .I1(rd11),
        .I2(rd10[13]),
        .I3(\addressM[29] [13]),
        .I4(\addressM[0]_1 ),
        .I5(\addressM[0]_2 ),
        .O(\ALUResult[13]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8A88A888A888A888)) 
    \ALUResult[13]_INST_0_i_4 
       (.I0(\addressM[16]_0 ),
        .I1(\ALUResult[13]_INST_0_i_7_n_0 ),
        .I2(SrcB[13]),
        .I3(\addressM[16] ),
        .I4(rd10[13]),
        .I5(rd11),
        .O(\ALUResult[13]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[13]_INST_0_i_5 
       (.I0(\ALUResult[13]_INST_0_i_8_n_0 ),
        .I1(SrcB[1]),
        .I2(\ALUResult[13]_INST_0_i_9_n_0 ),
        .O(\ALUResult[13]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8F8800000000)) 
    \ALUResult[13]_INST_0_i_6 
       (.I0(\ALUResult[7]_INST_0_i_7_n_0 ),
        .I1(\ALUResult[14]_INST_0_i_10_n_0 ),
        .I2(\ALUResult[30]_INST_0_i_7_n_0 ),
        .I3(\ALUResult[13]_INST_0_i_10_n_0 ),
        .I4(\ALUResult[0]_INST_0_i_3_n_0 ),
        .I5(\addressM[0] ),
        .O(\ALUResult[13]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00F2000000220000)) 
    \ALUResult[13]_INST_0_i_7 
       (.I0(\ALUResult[14]_INST_0_i_11_n_0 ),
        .I1(\ALUResult[30]_INST_0_i_7_n_0 ),
        .I2(\ALUResult[13]_INST_0_i_11_n_0 ),
        .I3(ALUControl),
        .I4(ALUControl__0),
        .I5(\ALUResult[7]_INST_0_i_7_n_0 ),
        .O(\ALUResult[13]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00CAFFFF00CA0000)) 
    \ALUResult[13]_INST_0_i_8 
       (.I0(SrcA[19]),
        .I1(SrcA[27]),
        .I2(SrcB[3]),
        .I3(SrcB[4]),
        .I4(SrcB[2]),
        .I5(\ALUResult[15]_INST_0_i_11_n_0 ),
        .O(\ALUResult[13]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00CAFFFF00CA0000)) 
    \ALUResult[13]_INST_0_i_9 
       (.I0(SrcA[17]),
        .I1(SrcA[25]),
        .I2(SrcB[3]),
        .I3(SrcB[4]),
        .I4(SrcB[2]),
        .I5(\ALUResult[7]_INST_0_i_22_n_0 ),
        .O(\ALUResult[13]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0CCCCAAAACCCC)) 
    \ALUResult[14]_INST_0 
       (.I0(SrcB[14]),
        .I1(\ALUResult[14]_INST_0_i_2_n_0 ),
        .I2(\ALUResult[14]_INST_0_i_3_n_0 ),
        .I3(\ALUResult[14]_INST_0_i_4_n_0 ),
        .I4(\addressM[0]_0 ),
        .I5(\addressM[0] ),
        .O(ALUResult[9]));
  LUT6 #(
    .INIT(64'hF8F8F8F8F8080808)) 
    \ALUResult[14]_INST_0_i_1 
       (.I0(rd20[14]),
        .I1(rd21),
        .I2(\addressM[1] ),
        .I3(Instr[10]),
        .I4(\q_reg[19]_1 ),
        .I5(\q_reg[19]_0 ),
        .O(SrcB[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[14]_INST_0_i_10 
       (.I0(\ALUResult[20]_INST_0_i_12_n_0 ),
        .I1(\ALUResult[16]_INST_0_i_14_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[18]_INST_0_i_11_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[7]_INST_0_i_18_n_0 ),
        .O(\ALUResult[14]_INST_0_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ALUResult[14]_INST_0_i_11 
       (.I0(\ALUResult[14]_INST_0_i_12_n_0 ),
        .I1(SrcB[1]),
        .I2(\ALUResult[16]_INST_0_i_15_n_0 ),
        .I3(SrcB[2]),
        .I4(\ALUResult[20]_INST_0_i_13_n_0 ),
        .O(\ALUResult[14]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h000000003300B8B8)) 
    \ALUResult[14]_INST_0_i_12 
       (.I0(SrcA[7]),
        .I1(SrcB[2]),
        .I2(SrcA[11]),
        .I3(SrcA[3]),
        .I4(SrcB[3]),
        .I5(SrcB[4]),
        .O(\ALUResult[14]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \ALUResult[14]_INST_0_i_2 
       (.I0(\ALUResult[29]_INST_0_i_8_n_0 ),
        .I1(\ALUResult[15]_INST_0_i_5_n_0 ),
        .I2(\ALUResult[31]_INST_0_i_11_n_0 ),
        .I3(\ALUResult[14]_INST_0_i_5_n_0 ),
        .I4(\ALUResult[14]_INST_0_i_6_n_0 ),
        .O(\ALUResult[14]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000EAEAFF008080)) 
    \ALUResult[14]_INST_0_i_3 
       (.I0(SrcB[14]),
        .I1(rd11),
        .I2(rd10[14]),
        .I3(\addressM[29] [14]),
        .I4(\addressM[0]_1 ),
        .I5(\addressM[0]_2 ),
        .O(\ALUResult[14]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8A88A888A888A888)) 
    \ALUResult[14]_INST_0_i_4 
       (.I0(\addressM[16]_0 ),
        .I1(\ALUResult[14]_INST_0_i_7_n_0 ),
        .I2(SrcB[14]),
        .I3(\addressM[16] ),
        .I4(rd10[14]),
        .I5(rd11),
        .O(\ALUResult[14]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[14]_INST_0_i_5 
       (.I0(\ALUResult[14]_INST_0_i_8_n_0 ),
        .I1(SrcB[1]),
        .I2(\ALUResult[14]_INST_0_i_9_n_0 ),
        .O(\ALUResult[14]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8F8800000000)) 
    \ALUResult[14]_INST_0_i_6 
       (.I0(\ALUResult[7]_INST_0_i_7_n_0 ),
        .I1(\ALUResult[15]_INST_0_i_12_n_0 ),
        .I2(\ALUResult[30]_INST_0_i_7_n_0 ),
        .I3(\ALUResult[14]_INST_0_i_10_n_0 ),
        .I4(\ALUResult[0]_INST_0_i_3_n_0 ),
        .I5(\addressM[0] ),
        .O(\ALUResult[14]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00F2000000220000)) 
    \ALUResult[14]_INST_0_i_7 
       (.I0(\ALUResult[15]_INST_0_i_13_n_0 ),
        .I1(\ALUResult[30]_INST_0_i_7_n_0 ),
        .I2(\ALUResult[14]_INST_0_i_11_n_0 ),
        .I3(ALUControl),
        .I4(ALUControl__0),
        .I5(\ALUResult[7]_INST_0_i_7_n_0 ),
        .O(\ALUResult[14]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00CAFFFF00CA0000)) 
    \ALUResult[14]_INST_0_i_8 
       (.I0(SrcA[20]),
        .I1(SrcA[28]),
        .I2(SrcB[3]),
        .I3(SrcB[4]),
        .I4(SrcB[2]),
        .I5(\ALUResult[16]_INST_0_i_11_n_0 ),
        .O(\ALUResult[14]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00CAFFFF00CA0000)) 
    \ALUResult[14]_INST_0_i_9 
       (.I0(SrcA[18]),
        .I1(SrcA[26]),
        .I2(SrcB[3]),
        .I3(SrcB[4]),
        .I4(SrcB[2]),
        .I5(\ALUResult[8]_INST_0_i_8_n_0 ),
        .O(\ALUResult[14]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0CCCCAAAACCCC)) 
    \ALUResult[15]_INST_0 
       (.I0(SrcB[15]),
        .I1(\ALUResult[15]_INST_0_i_2_n_0 ),
        .I2(\ALUResult[15]_INST_0_i_3_n_0 ),
        .I3(\ALUResult[15]_INST_0_i_4_n_0 ),
        .I4(\addressM[0]_0 ),
        .I5(\addressM[0] ),
        .O(ALUResult[10]));
  LUT6 #(
    .INIT(64'hF8F8F8F8F8080808)) 
    \ALUResult[15]_INST_0_i_1 
       (.I0(rd20[15]),
        .I1(rd21),
        .I2(\addressM[1] ),
        .I3(Instr[11]),
        .I4(\q_reg[19]_1 ),
        .I5(\q_reg[19]_0 ),
        .O(SrcB[15]));
  LUT5 #(
    .INIT(32'h0000C088)) 
    \ALUResult[15]_INST_0_i_10 
       (.I0(rd10[19]),
        .I1(rd11),
        .I2(rd10[27]),
        .I3(SrcB[3]),
        .I4(SrcB[4]),
        .O(\ALUResult[15]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000C0C0F000A0A0)) 
    \ALUResult[15]_INST_0_i_11 
       (.I0(rd10[15]),
        .I1(rd10[31]),
        .I2(rd11),
        .I3(rd10[23]),
        .I4(SrcB[3]),
        .I5(SrcB[4]),
        .O(\ALUResult[15]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[15]_INST_0_i_12 
       (.I0(\ALUResult[21]_INST_0_i_12_n_0 ),
        .I1(\ALUResult[17]_INST_0_i_11_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[19]_INST_0_i_15_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[15]_INST_0_i_14_n_0 ),
        .O(\ALUResult[15]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[15]_INST_0_i_13 
       (.I0(\ALUResult[15]_INST_0_i_15_n_0 ),
        .I1(\ALUResult[19]_INST_0_i_16_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[17]_INST_0_i_12_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[21]_INST_0_i_13_n_0 ),
        .O(\ALUResult[15]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFB8000000B80000)) 
    \ALUResult[15]_INST_0_i_14 
       (.I0(rd10[23]),
        .I1(SrcB[3]),
        .I2(rd10[15]),
        .I3(SrcB[4]),
        .I4(rd11),
        .I5(rd10[31]),
        .O(\ALUResult[15]_INST_0_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h0000C088)) 
    \ALUResult[15]_INST_0_i_15 
       (.I0(rd10[8]),
        .I1(rd11),
        .I2(rd10[0]),
        .I3(SrcB[3]),
        .I4(SrcB[4]),
        .O(\ALUResult[15]_INST_0_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \ALUResult[15]_INST_0_i_2 
       (.I0(\ALUResult[29]_INST_0_i_8_n_0 ),
        .I1(\ALUResult[16]_INST_0_i_5_n_0 ),
        .I2(\ALUResult[31]_INST_0_i_11_n_0 ),
        .I3(\ALUResult[15]_INST_0_i_5_n_0 ),
        .I4(\ALUResult[15]_INST_0_i_6_n_0 ),
        .O(\ALUResult[15]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000EAEAFF008080)) 
    \ALUResult[15]_INST_0_i_3 
       (.I0(SrcB[15]),
        .I1(rd11),
        .I2(rd10[15]),
        .I3(\addressM[29] [15]),
        .I4(\addressM[0]_1 ),
        .I5(\addressM[0]_2 ),
        .O(\ALUResult[15]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8A88A888A888A888)) 
    \ALUResult[15]_INST_0_i_4 
       (.I0(\addressM[16]_0 ),
        .I1(\ALUResult[15]_INST_0_i_7_n_0 ),
        .I2(SrcB[15]),
        .I3(\addressM[16] ),
        .I4(rd10[15]),
        .I5(rd11),
        .O(\ALUResult[15]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[15]_INST_0_i_5 
       (.I0(\ALUResult[15]_INST_0_i_8_n_0 ),
        .I1(\ALUResult[15]_INST_0_i_9_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[15]_INST_0_i_10_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[15]_INST_0_i_11_n_0 ),
        .O(\ALUResult[15]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8F8800000000)) 
    \ALUResult[15]_INST_0_i_6 
       (.I0(\ALUResult[7]_INST_0_i_7_n_0 ),
        .I1(\ALUResult[16]_INST_0_i_12_n_0 ),
        .I2(\ALUResult[30]_INST_0_i_7_n_0 ),
        .I3(\ALUResult[15]_INST_0_i_12_n_0 ),
        .I4(\ALUResult[0]_INST_0_i_3_n_0 ),
        .I5(\addressM[0] ),
        .O(\ALUResult[15]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00F2000000220000)) 
    \ALUResult[15]_INST_0_i_7 
       (.I0(\ALUResult[16]_INST_0_i_13_n_0 ),
        .I1(\ALUResult[30]_INST_0_i_7_n_0 ),
        .I2(\ALUResult[15]_INST_0_i_13_n_0 ),
        .I3(ALUControl),
        .I4(ALUControl__0),
        .I5(\ALUResult[7]_INST_0_i_7_n_0 ),
        .O(\ALUResult[15]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h0000C088)) 
    \ALUResult[15]_INST_0_i_8 
       (.I0(rd10[21]),
        .I1(rd11),
        .I2(rd10[29]),
        .I3(SrcB[3]),
        .I4(SrcB[4]),
        .O(\ALUResult[15]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h0000C088)) 
    \ALUResult[15]_INST_0_i_9 
       (.I0(rd10[17]),
        .I1(rd11),
        .I2(rd10[25]),
        .I3(SrcB[3]),
        .I4(SrcB[4]),
        .O(\ALUResult[15]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0CCCCAAAACCCC)) 
    \ALUResult[16]_INST_0 
       (.I0(SrcB[16]),
        .I1(\ALUResult[16]_INST_0_i_2_n_0 ),
        .I2(\ALUResult[16]_INST_0_i_3_n_0 ),
        .I3(\ALUResult[16]_INST_0_i_4_n_0 ),
        .I4(\addressM[0]_0 ),
        .I5(\addressM[0] ),
        .O(ALUResult[11]));
  LUT6 #(
    .INIT(64'hF8F8F8F8F8080808)) 
    \ALUResult[16]_INST_0_i_1 
       (.I0(rd20[16]),
        .I1(rd21),
        .I2(\addressM[1] ),
        .I3(Instr[12]),
        .I4(\q_reg[19]_1 ),
        .I5(\q_reg[19]_0 ),
        .O(SrcB[16]));
  LUT5 #(
    .INIT(32'h0000C088)) 
    \ALUResult[16]_INST_0_i_10 
       (.I0(rd10[20]),
        .I1(rd11),
        .I2(rd10[28]),
        .I3(SrcB[3]),
        .I4(SrcB[4]),
        .O(\ALUResult[16]_INST_0_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h0000C088)) 
    \ALUResult[16]_INST_0_i_11 
       (.I0(rd10[16]),
        .I1(rd11),
        .I2(rd10[24]),
        .I3(SrcB[3]),
        .I4(SrcB[4]),
        .O(\ALUResult[16]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[16]_INST_0_i_12 
       (.I0(\ALUResult[22]_INST_0_i_12_n_0 ),
        .I1(\ALUResult[18]_INST_0_i_11_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[20]_INST_0_i_12_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[16]_INST_0_i_14_n_0 ),
        .O(\ALUResult[16]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[16]_INST_0_i_13 
       (.I0(\ALUResult[16]_INST_0_i_15_n_0 ),
        .I1(\ALUResult[20]_INST_0_i_13_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[18]_INST_0_i_12_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[22]_INST_0_i_13_n_0 ),
        .O(\ALUResult[16]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFB8000000B80000)) 
    \ALUResult[16]_INST_0_i_14 
       (.I0(rd10[24]),
        .I1(SrcB[3]),
        .I2(rd10[16]),
        .I3(SrcB[4]),
        .I4(rd11),
        .I5(rd10[31]),
        .O(\ALUResult[16]_INST_0_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h0000C088)) 
    \ALUResult[16]_INST_0_i_15 
       (.I0(rd10[9]),
        .I1(rd11),
        .I2(rd10[1]),
        .I3(SrcB[3]),
        .I4(SrcB[4]),
        .O(\ALUResult[16]_INST_0_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \ALUResult[16]_INST_0_i_2 
       (.I0(\ALUResult[29]_INST_0_i_8_n_0 ),
        .I1(\ALUResult[17]_INST_0_i_5_n_0 ),
        .I2(\ALUResult[31]_INST_0_i_11_n_0 ),
        .I3(\ALUResult[16]_INST_0_i_5_n_0 ),
        .I4(\ALUResult[16]_INST_0_i_6_n_0 ),
        .O(\ALUResult[16]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000EAEAFF008080)) 
    \ALUResult[16]_INST_0_i_3 
       (.I0(SrcB[16]),
        .I1(rd11),
        .I2(rd10[16]),
        .I3(\addressM[29] [16]),
        .I4(\addressM[0]_1 ),
        .I5(\addressM[0]_2 ),
        .O(\ALUResult[16]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8A88A888A888A888)) 
    \ALUResult[16]_INST_0_i_4 
       (.I0(\addressM[16]_0 ),
        .I1(\ALUResult[16]_INST_0_i_7_n_0 ),
        .I2(SrcB[16]),
        .I3(\addressM[16] ),
        .I4(rd10[16]),
        .I5(rd11),
        .O(\ALUResult[16]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[16]_INST_0_i_5 
       (.I0(\ALUResult[16]_INST_0_i_8_n_0 ),
        .I1(\ALUResult[16]_INST_0_i_9_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[16]_INST_0_i_10_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[16]_INST_0_i_11_n_0 ),
        .O(\ALUResult[16]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8F8800000000)) 
    \ALUResult[16]_INST_0_i_6 
       (.I0(\ALUResult[7]_INST_0_i_7_n_0 ),
        .I1(\ALUResult[17]_INST_0_i_9_n_0 ),
        .I2(\ALUResult[30]_INST_0_i_7_n_0 ),
        .I3(\ALUResult[16]_INST_0_i_12_n_0 ),
        .I4(\ALUResult[0]_INST_0_i_3_n_0 ),
        .I5(\addressM[0] ),
        .O(\ALUResult[16]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00F2000000220000)) 
    \ALUResult[16]_INST_0_i_7 
       (.I0(\ALUResult[17]_INST_0_i_10_n_0 ),
        .I1(\ALUResult[30]_INST_0_i_7_n_0 ),
        .I2(\ALUResult[16]_INST_0_i_13_n_0 ),
        .I3(ALUControl),
        .I4(ALUControl__0),
        .I5(\ALUResult[7]_INST_0_i_7_n_0 ),
        .O(\ALUResult[16]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h0000C088)) 
    \ALUResult[16]_INST_0_i_8 
       (.I0(rd10[22]),
        .I1(rd11),
        .I2(rd10[30]),
        .I3(SrcB[3]),
        .I4(SrcB[4]),
        .O(\ALUResult[16]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h0000C088)) 
    \ALUResult[16]_INST_0_i_9 
       (.I0(rd10[18]),
        .I1(rd11),
        .I2(rd10[26]),
        .I3(SrcB[3]),
        .I4(SrcB[4]),
        .O(\ALUResult[16]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0CCCCAAAACCCC)) 
    \ALUResult[17]_INST_0 
       (.I0(SrcB[17]),
        .I1(\ALUResult[17]_INST_0_i_2_n_0 ),
        .I2(\ALUResult[17]_INST_0_i_3_n_0 ),
        .I3(\ALUResult[17]_INST_0_i_4_n_0 ),
        .I4(\addressM[0]_0 ),
        .I5(\addressM[0] ),
        .O(ALUResult[12]));
  LUT6 #(
    .INIT(64'hF8F8F8F8F8080808)) 
    \ALUResult[17]_INST_0_i_1 
       (.I0(rd20[17]),
        .I1(rd21),
        .I2(\addressM[1] ),
        .I3(Instr[13]),
        .I4(\q_reg[19]_1 ),
        .I5(\q_reg[19]_0 ),
        .O(SrcB[17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[17]_INST_0_i_10 
       (.I0(\ALUResult[17]_INST_0_i_12_n_0 ),
        .I1(\ALUResult[21]_INST_0_i_13_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[19]_INST_0_i_16_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[23]_INST_0_i_12_n_0 ),
        .O(\ALUResult[17]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFB8000000B80000)) 
    \ALUResult[17]_INST_0_i_11 
       (.I0(rd10[25]),
        .I1(SrcB[3]),
        .I2(rd10[17]),
        .I3(SrcB[4]),
        .I4(rd11),
        .I5(rd10[31]),
        .O(\ALUResult[17]_INST_0_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h0000C088)) 
    \ALUResult[17]_INST_0_i_12 
       (.I0(rd10[10]),
        .I1(rd11),
        .I2(rd10[2]),
        .I3(SrcB[3]),
        .I4(SrcB[4]),
        .O(\ALUResult[17]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \ALUResult[17]_INST_0_i_2 
       (.I0(\ALUResult[29]_INST_0_i_8_n_0 ),
        .I1(\ALUResult[18]_INST_0_i_5_n_0 ),
        .I2(\ALUResult[31]_INST_0_i_11_n_0 ),
        .I3(\ALUResult[17]_INST_0_i_5_n_0 ),
        .I4(\ALUResult[17]_INST_0_i_6_n_0 ),
        .O(\ALUResult[17]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000EAEAFF008080)) 
    \ALUResult[17]_INST_0_i_3 
       (.I0(SrcB[17]),
        .I1(rd11),
        .I2(rd10[17]),
        .I3(\addressM[29] [17]),
        .I4(\addressM[0]_1 ),
        .I5(\addressM[0]_2 ),
        .O(\ALUResult[17]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8A88A888A888A888)) 
    \ALUResult[17]_INST_0_i_4 
       (.I0(\addressM[16]_0 ),
        .I1(\ALUResult[17]_INST_0_i_7_n_0 ),
        .I2(SrcB[17]),
        .I3(\addressM[16] ),
        .I4(rd10[17]),
        .I5(rd11),
        .O(\ALUResult[17]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[17]_INST_0_i_5 
       (.I0(\ALUResult[19]_INST_0_i_11_n_0 ),
        .I1(SrcB[1]),
        .I2(\ALUResult[17]_INST_0_i_8_n_0 ),
        .O(\ALUResult[17]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8F8800000000)) 
    \ALUResult[17]_INST_0_i_6 
       (.I0(\ALUResult[7]_INST_0_i_7_n_0 ),
        .I1(\ALUResult[18]_INST_0_i_9_n_0 ),
        .I2(\ALUResult[30]_INST_0_i_7_n_0 ),
        .I3(\ALUResult[17]_INST_0_i_9_n_0 ),
        .I4(\ALUResult[0]_INST_0_i_3_n_0 ),
        .I5(\addressM[0] ),
        .O(\ALUResult[17]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00F2000000220000)) 
    \ALUResult[17]_INST_0_i_7 
       (.I0(\ALUResult[18]_INST_0_i_10_n_0 ),
        .I1(\ALUResult[30]_INST_0_i_7_n_0 ),
        .I2(\ALUResult[17]_INST_0_i_10_n_0 ),
        .I3(ALUControl),
        .I4(ALUControl__0),
        .I5(\ALUResult[7]_INST_0_i_7_n_0 ),
        .O(\ALUResult[17]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00CAFFFF00CA0000)) 
    \ALUResult[17]_INST_0_i_8 
       (.I0(SrcA[21]),
        .I1(SrcA[29]),
        .I2(SrcB[3]),
        .I3(SrcB[4]),
        .I4(SrcB[2]),
        .I5(\ALUResult[15]_INST_0_i_9_n_0 ),
        .O(\ALUResult[17]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[17]_INST_0_i_9 
       (.I0(\ALUResult[19]_INST_0_i_14_n_0 ),
        .I1(\ALUResult[19]_INST_0_i_15_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[21]_INST_0_i_12_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[17]_INST_0_i_11_n_0 ),
        .O(\ALUResult[17]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0CCCCAAAACCCC)) 
    \ALUResult[18]_INST_0 
       (.I0(SrcB[18]),
        .I1(\ALUResult[18]_INST_0_i_2_n_0 ),
        .I2(\ALUResult[18]_INST_0_i_3_n_0 ),
        .I3(\ALUResult[18]_INST_0_i_4_n_0 ),
        .I4(\addressM[0]_0 ),
        .I5(\addressM[0] ),
        .O(ALUResult[13]));
  LUT6 #(
    .INIT(64'hF8F8F8F8F8080808)) 
    \ALUResult[18]_INST_0_i_1 
       (.I0(rd20[18]),
        .I1(rd21),
        .I2(\addressM[1] ),
        .I3(Instr[14]),
        .I4(\q_reg[19]_1 ),
        .I5(\q_reg[19]_0 ),
        .O(SrcB[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[18]_INST_0_i_10 
       (.I0(\ALUResult[18]_INST_0_i_12_n_0 ),
        .I1(\ALUResult[22]_INST_0_i_13_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[20]_INST_0_i_13_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[24]_INST_0_i_12_n_0 ),
        .O(\ALUResult[18]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFB8000000B80000)) 
    \ALUResult[18]_INST_0_i_11 
       (.I0(rd10[26]),
        .I1(SrcB[3]),
        .I2(rd10[18]),
        .I3(SrcB[4]),
        .I4(rd11),
        .I5(rd10[31]),
        .O(\ALUResult[18]_INST_0_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h0000C088)) 
    \ALUResult[18]_INST_0_i_12 
       (.I0(rd10[11]),
        .I1(rd11),
        .I2(rd10[3]),
        .I3(SrcB[3]),
        .I4(SrcB[4]),
        .O(\ALUResult[18]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \ALUResult[18]_INST_0_i_2 
       (.I0(\ALUResult[29]_INST_0_i_8_n_0 ),
        .I1(\ALUResult[19]_INST_0_i_7_n_0 ),
        .I2(\ALUResult[31]_INST_0_i_11_n_0 ),
        .I3(\ALUResult[18]_INST_0_i_5_n_0 ),
        .I4(\ALUResult[18]_INST_0_i_6_n_0 ),
        .O(\ALUResult[18]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000EAEAFF008080)) 
    \ALUResult[18]_INST_0_i_3 
       (.I0(SrcB[18]),
        .I1(rd11),
        .I2(rd10[18]),
        .I3(\addressM[29] [18]),
        .I4(\addressM[0]_1 ),
        .I5(\addressM[0]_2 ),
        .O(\ALUResult[18]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8A88A888A888A888)) 
    \ALUResult[18]_INST_0_i_4 
       (.I0(\addressM[16]_0 ),
        .I1(\ALUResult[18]_INST_0_i_7_n_0 ),
        .I2(SrcB[18]),
        .I3(\addressM[16] ),
        .I4(rd10[18]),
        .I5(rd11),
        .O(\ALUResult[18]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[18]_INST_0_i_5 
       (.I0(\ALUResult[20]_INST_0_i_8_n_0 ),
        .I1(SrcB[1]),
        .I2(\ALUResult[18]_INST_0_i_8_n_0 ),
        .O(\ALUResult[18]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8F8800000000)) 
    \ALUResult[18]_INST_0_i_6 
       (.I0(\ALUResult[7]_INST_0_i_7_n_0 ),
        .I1(\ALUResult[19]_INST_0_i_12_n_0 ),
        .I2(\ALUResult[30]_INST_0_i_7_n_0 ),
        .I3(\ALUResult[18]_INST_0_i_9_n_0 ),
        .I4(\ALUResult[0]_INST_0_i_3_n_0 ),
        .I5(\addressM[0] ),
        .O(\ALUResult[18]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00F2000000220000)) 
    \ALUResult[18]_INST_0_i_7 
       (.I0(\ALUResult[19]_INST_0_i_13_n_0 ),
        .I1(\ALUResult[30]_INST_0_i_7_n_0 ),
        .I2(\ALUResult[18]_INST_0_i_10_n_0 ),
        .I3(ALUControl),
        .I4(ALUControl__0),
        .I5(\ALUResult[7]_INST_0_i_7_n_0 ),
        .O(\ALUResult[18]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00CAFFFF00CA0000)) 
    \ALUResult[18]_INST_0_i_8 
       (.I0(SrcA[22]),
        .I1(SrcA[30]),
        .I2(SrcB[3]),
        .I3(SrcB[4]),
        .I4(SrcB[2]),
        .I5(\ALUResult[16]_INST_0_i_9_n_0 ),
        .O(\ALUResult[18]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[18]_INST_0_i_9 
       (.I0(\ALUResult[20]_INST_0_i_11_n_0 ),
        .I1(\ALUResult[20]_INST_0_i_12_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[22]_INST_0_i_12_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[18]_INST_0_i_11_n_0 ),
        .O(\ALUResult[18]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0CCCCAAAACCCC)) 
    \ALUResult[19]_INST_0 
       (.I0(SrcB[19]),
        .I1(\ALUResult[19]_INST_0_i_2_n_0 ),
        .I2(\ALUResult[19]_INST_0_i_3_n_0 ),
        .I3(\ALUResult[19]_INST_0_i_4_n_0 ),
        .I4(\addressM[0]_0 ),
        .I5(\addressM[0] ),
        .O(ALUResult[14]));
  LUT6 #(
    .INIT(64'hF8F8F8F8F8080808)) 
    \ALUResult[19]_INST_0_i_1 
       (.I0(rd20[19]),
        .I1(rd21),
        .I2(\addressM[1] ),
        .I3(Instr[15]),
        .I4(\q_reg[19]_1 ),
        .I5(\q_reg[19]_0 ),
        .O(SrcB[19]));
  LUT6 #(
    .INIT(64'h00CAFFFF00CA0000)) 
    \ALUResult[19]_INST_0_i_11 
       (.I0(SrcA[23]),
        .I1(SrcA[31]),
        .I2(SrcB[3]),
        .I3(SrcB[4]),
        .I4(SrcB[2]),
        .I5(\ALUResult[15]_INST_0_i_10_n_0 ),
        .O(\ALUResult[19]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[19]_INST_0_i_12 
       (.I0(\ALUResult[21]_INST_0_i_11_n_0 ),
        .I1(\ALUResult[21]_INST_0_i_12_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[19]_INST_0_i_14_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[19]_INST_0_i_15_n_0 ),
        .O(\ALUResult[19]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[19]_INST_0_i_13 
       (.I0(\ALUResult[19]_INST_0_i_16_n_0 ),
        .I1(\ALUResult[23]_INST_0_i_12_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[21]_INST_0_i_13_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[25]_INST_0_i_12_n_0 ),
        .O(\ALUResult[19]_INST_0_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hFE000200)) 
    \ALUResult[19]_INST_0_i_14 
       (.I0(rd10[23]),
        .I1(SrcB[4]),
        .I2(SrcB[3]),
        .I3(rd11),
        .I4(rd10[31]),
        .O(\ALUResult[19]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFB8000000B80000)) 
    \ALUResult[19]_INST_0_i_15 
       (.I0(rd10[27]),
        .I1(SrcB[3]),
        .I2(rd10[19]),
        .I3(SrcB[4]),
        .I4(rd11),
        .I5(rd10[31]),
        .O(\ALUResult[19]_INST_0_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h0000C088)) 
    \ALUResult[19]_INST_0_i_16 
       (.I0(rd10[12]),
        .I1(rd11),
        .I2(rd10[4]),
        .I3(SrcB[3]),
        .I4(SrcB[4]),
        .O(\ALUResult[19]_INST_0_i_16_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \ALUResult[19]_INST_0_i_2 
       (.I0(\ALUResult[29]_INST_0_i_8_n_0 ),
        .I1(\ALUResult[20]_INST_0_i_5_n_0 ),
        .I2(\ALUResult[31]_INST_0_i_11_n_0 ),
        .I3(\ALUResult[19]_INST_0_i_7_n_0 ),
        .I4(\ALUResult[19]_INST_0_i_8_n_0 ),
        .O(\ALUResult[19]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000EAEAFF008080)) 
    \ALUResult[19]_INST_0_i_3 
       (.I0(SrcB[19]),
        .I1(rd11),
        .I2(rd10[19]),
        .I3(\addressM[29] [19]),
        .I4(\addressM[0]_1 ),
        .I5(\addressM[0]_2 ),
        .O(\ALUResult[19]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8A88A888A888A888)) 
    \ALUResult[19]_INST_0_i_4 
       (.I0(\addressM[16]_0 ),
        .I1(\ALUResult[19]_INST_0_i_9_n_0 ),
        .I2(SrcB[19]),
        .I3(\addressM[16] ),
        .I4(rd10[19]),
        .I5(rd11),
        .O(\ALUResult[19]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[19]_INST_0_i_7 
       (.I0(\ALUResult[21]_INST_0_i_8_n_0 ),
        .I1(SrcB[1]),
        .I2(\ALUResult[19]_INST_0_i_11_n_0 ),
        .O(\ALUResult[19]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8F8800000000)) 
    \ALUResult[19]_INST_0_i_8 
       (.I0(\ALUResult[7]_INST_0_i_7_n_0 ),
        .I1(\ALUResult[20]_INST_0_i_9_n_0 ),
        .I2(\ALUResult[30]_INST_0_i_7_n_0 ),
        .I3(\ALUResult[19]_INST_0_i_12_n_0 ),
        .I4(\ALUResult[0]_INST_0_i_3_n_0 ),
        .I5(\addressM[0] ),
        .O(\ALUResult[19]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00F2000000220000)) 
    \ALUResult[19]_INST_0_i_9 
       (.I0(\ALUResult[20]_INST_0_i_10_n_0 ),
        .I1(\ALUResult[30]_INST_0_i_7_n_0 ),
        .I2(\ALUResult[19]_INST_0_i_13_n_0 ),
        .I3(ALUControl),
        .I4(ALUControl__0),
        .I5(\ALUResult[7]_INST_0_i_7_n_0 ),
        .O(\ALUResult[19]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hEEE4FFFFEEE40000)) 
    \ALUResult[1]_INST_0 
       (.I0(\addressM[0] ),
        .I1(SrcB[1]),
        .I2(\ALUResult[1]_INST_0_i_2_n_0 ),
        .I3(\ALUResult[1]_INST_0_i_3_n_0 ),
        .I4(\addressM[0]_0 ),
        .I5(\ALUResult[1]_INST_0_i_4_n_0 ),
        .O(\ALUResult[1]_INST_0_i_4_0 ));
  LUT4 #(
    .INIT(16'hF808)) 
    \ALUResult[1]_INST_0_i_1 
       (.I0(rd20[1]),
        .I1(rd21),
        .I2(\addressM[1] ),
        .I3(immext[1]),
        .O(SrcB[1]));
  LUT6 #(
    .INIT(64'hAAAAAAAA20808080)) 
    \ALUResult[1]_INST_0_i_2 
       (.I0(\addressM[16]_0 ),
        .I1(SrcB[1]),
        .I2(\addressM[16] ),
        .I3(rd10[1]),
        .I4(rd11),
        .I5(\ALUResult[1]_INST_0_i_6_n_0 ),
        .O(\ALUResult[1]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000EAEAFF008080)) 
    \ALUResult[1]_INST_0_i_3 
       (.I0(SrcB[1]),
        .I1(rd11),
        .I2(rd10[1]),
        .I3(\addressM[29] [1]),
        .I4(\addressM[0]_1 ),
        .I5(\addressM[0]_2 ),
        .O(\ALUResult[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF888FFFFF888F888)) 
    \ALUResult[1]_INST_0_i_4 
       (.I0(\ALUResult[29]_INST_0_i_8_n_0 ),
        .I1(\ALUResult[2]_INST_0_i_6_n_0 ),
        .I2(\addressM[0] ),
        .I3(\ALUResult[1]_INST_0_i_7_n_0 ),
        .I4(\ALUResult[30]_INST_0_i_7_n_0 ),
        .I5(\ALUResult[1]_INST_0_i_8_n_0 ),
        .O(\ALUResult[1]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF888000000000000)) 
    \ALUResult[1]_INST_0_i_6 
       (.I0(\ALUResult[7]_INST_0_i_12_n_0 ),
        .I1(SrcA[1]),
        .I2(\ALUResult[31]_INST_0_i_19_n_0 ),
        .I3(SrcA[0]),
        .I4(\ALUResult[31]_INST_0_i_10_n_0 ),
        .I5(\ALUResult[29]_INST_0_i_6_n_0 ),
        .O(\ALUResult[1]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \ALUResult[1]_INST_0_i_7 
       (.I0(\ALUResult[2]_INST_0_i_11_n_0 ),
        .I1(\ALUResult[7]_INST_0_i_7_n_0 ),
        .I2(\ALUResult[0]_INST_0_i_3_n_0 ),
        .O(\ALUResult[1]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \ALUResult[1]_INST_0_i_8 
       (.I0(\ALUResult[7]_INST_0_i_17_n_0 ),
        .I1(SrcB[2]),
        .I2(\ALUResult[3]_INST_0_i_12_n_0 ),
        .I3(\ALUResult[5]_INST_0_i_11_n_0 ),
        .I4(\ALUResult[1]_INST_0_i_9_n_0 ),
        .I5(SrcB[1]),
        .O(\ALUResult[1]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \ALUResult[1]_INST_0_i_9 
       (.I0(SrcA[1]),
        .I1(SrcA[17]),
        .I2(SrcB[3]),
        .I3(SrcA[25]),
        .I4(SrcB[4]),
        .I5(SrcA[9]),
        .O(\ALUResult[1]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0CCCCAAAACCCC)) 
    \ALUResult[20]_INST_0 
       (.I0(SrcB[20]),
        .I1(\ALUResult[20]_INST_0_i_2_n_0 ),
        .I2(\ALUResult[20]_INST_0_i_3_n_0 ),
        .I3(\ALUResult[20]_INST_0_i_4_n_0 ),
        .I4(\addressM[0]_0 ),
        .I5(\addressM[0] ),
        .O(ALUResult[15]));
  LUT6 #(
    .INIT(64'hF8F8F8F8F8080808)) 
    \ALUResult[20]_INST_0_i_1 
       (.I0(rd20[20]),
        .I1(rd21),
        .I2(\addressM[1] ),
        .I3(Instr[16]),
        .I4(\q_reg[31]_0 ),
        .I5(\addressM[20] ),
        .O(SrcB[20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[20]_INST_0_i_10 
       (.I0(\ALUResult[20]_INST_0_i_13_n_0 ),
        .I1(\ALUResult[24]_INST_0_i_12_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[22]_INST_0_i_13_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[26]_INST_0_i_11_n_0 ),
        .O(\ALUResult[20]_INST_0_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFE000200)) 
    \ALUResult[20]_INST_0_i_11 
       (.I0(rd10[24]),
        .I1(SrcB[4]),
        .I2(SrcB[3]),
        .I3(rd11),
        .I4(rd10[31]),
        .O(\ALUResult[20]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFB8000000B80000)) 
    \ALUResult[20]_INST_0_i_12 
       (.I0(rd10[28]),
        .I1(SrcB[3]),
        .I2(rd10[20]),
        .I3(SrcB[4]),
        .I4(rd11),
        .I5(rd10[31]),
        .O(\ALUResult[20]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h0000C088)) 
    \ALUResult[20]_INST_0_i_13 
       (.I0(rd10[13]),
        .I1(rd11),
        .I2(rd10[5]),
        .I3(SrcB[3]),
        .I4(SrcB[4]),
        .O(\ALUResult[20]_INST_0_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \ALUResult[20]_INST_0_i_2 
       (.I0(\ALUResult[29]_INST_0_i_8_n_0 ),
        .I1(\ALUResult[21]_INST_0_i_5_n_0 ),
        .I2(\ALUResult[31]_INST_0_i_11_n_0 ),
        .I3(\ALUResult[20]_INST_0_i_5_n_0 ),
        .I4(\ALUResult[20]_INST_0_i_6_n_0 ),
        .O(\ALUResult[20]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000EAEAFF008080)) 
    \ALUResult[20]_INST_0_i_3 
       (.I0(SrcB[20]),
        .I1(rd11),
        .I2(rd10[20]),
        .I3(\addressM[29] [20]),
        .I4(\addressM[0]_1 ),
        .I5(\addressM[0]_2 ),
        .O(\ALUResult[20]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8A88A888A888A888)) 
    \ALUResult[20]_INST_0_i_4 
       (.I0(\addressM[16]_0 ),
        .I1(\ALUResult[20]_INST_0_i_7_n_0 ),
        .I2(SrcB[20]),
        .I3(\addressM[16] ),
        .I4(rd10[20]),
        .I5(rd11),
        .O(\ALUResult[20]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[20]_INST_0_i_5 
       (.I0(\ALUResult[22]_INST_0_i_8_n_0 ),
        .I1(SrcB[1]),
        .I2(\ALUResult[20]_INST_0_i_8_n_0 ),
        .O(\ALUResult[20]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8F8800000000)) 
    \ALUResult[20]_INST_0_i_6 
       (.I0(\ALUResult[7]_INST_0_i_7_n_0 ),
        .I1(\ALUResult[21]_INST_0_i_9_n_0 ),
        .I2(\ALUResult[30]_INST_0_i_7_n_0 ),
        .I3(\ALUResult[20]_INST_0_i_9_n_0 ),
        .I4(\ALUResult[0]_INST_0_i_3_n_0 ),
        .I5(\addressM[0] ),
        .O(\ALUResult[20]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00F2000000220000)) 
    \ALUResult[20]_INST_0_i_7 
       (.I0(\ALUResult[21]_INST_0_i_10_n_0 ),
        .I1(\ALUResult[30]_INST_0_i_7_n_0 ),
        .I2(\ALUResult[20]_INST_0_i_10_n_0 ),
        .I3(ALUControl),
        .I4(ALUControl__0),
        .I5(\ALUResult[7]_INST_0_i_7_n_0 ),
        .O(\ALUResult[20]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h000000003300B8B8)) 
    \ALUResult[20]_INST_0_i_8 
       (.I0(SrcA[24]),
        .I1(SrcB[2]),
        .I2(SrcA[20]),
        .I3(SrcA[28]),
        .I4(SrcB[3]),
        .I5(SrcB[4]),
        .O(\ALUResult[20]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[20]_INST_0_i_9 
       (.I0(\ALUResult[22]_INST_0_i_11_n_0 ),
        .I1(\ALUResult[22]_INST_0_i_12_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[20]_INST_0_i_11_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[20]_INST_0_i_12_n_0 ),
        .O(\ALUResult[20]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0CCCCAAAACCCC)) 
    \ALUResult[21]_INST_0 
       (.I0(SrcB[21]),
        .I1(\ALUResult[21]_INST_0_i_2_n_0 ),
        .I2(\ALUResult[21]_INST_0_i_3_n_0 ),
        .I3(\ALUResult[21]_INST_0_i_4_n_0 ),
        .I4(\addressM[0]_0 ),
        .I5(\addressM[0] ),
        .O(ALUResult[16]));
  LUT6 #(
    .INIT(64'hF8F8F8F8F8080808)) 
    \ALUResult[21]_INST_0_i_1 
       (.I0(rd20[21]),
        .I1(rd21),
        .I2(\addressM[1] ),
        .I3(Instr[17]),
        .I4(\q_reg[31]_0 ),
        .I5(\addressM[20] ),
        .O(SrcB[21]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[21]_INST_0_i_10 
       (.I0(\ALUResult[21]_INST_0_i_13_n_0 ),
        .I1(\ALUResult[25]_INST_0_i_12_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[23]_INST_0_i_12_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[27]_INST_0_i_12_n_0 ),
        .O(\ALUResult[21]_INST_0_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFE000200)) 
    \ALUResult[21]_INST_0_i_11 
       (.I0(rd10[25]),
        .I1(SrcB[4]),
        .I2(SrcB[3]),
        .I3(rd11),
        .I4(rd10[31]),
        .O(\ALUResult[21]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFB8000000B80000)) 
    \ALUResult[21]_INST_0_i_12 
       (.I0(rd10[29]),
        .I1(SrcB[3]),
        .I2(rd10[21]),
        .I3(SrcB[4]),
        .I4(rd11),
        .I5(rd10[31]),
        .O(\ALUResult[21]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h0000C088)) 
    \ALUResult[21]_INST_0_i_13 
       (.I0(rd10[14]),
        .I1(rd11),
        .I2(rd10[6]),
        .I3(SrcB[3]),
        .I4(SrcB[4]),
        .O(\ALUResult[21]_INST_0_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \ALUResult[21]_INST_0_i_2 
       (.I0(\ALUResult[29]_INST_0_i_8_n_0 ),
        .I1(\ALUResult[22]_INST_0_i_5_n_0 ),
        .I2(\ALUResult[31]_INST_0_i_11_n_0 ),
        .I3(\ALUResult[21]_INST_0_i_5_n_0 ),
        .I4(\ALUResult[21]_INST_0_i_6_n_0 ),
        .O(\ALUResult[21]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000EAEAFF008080)) 
    \ALUResult[21]_INST_0_i_3 
       (.I0(SrcB[21]),
        .I1(rd11),
        .I2(rd10[21]),
        .I3(\addressM[29] [21]),
        .I4(\addressM[0]_1 ),
        .I5(\addressM[0]_2 ),
        .O(\ALUResult[21]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8A88A888A888A888)) 
    \ALUResult[21]_INST_0_i_4 
       (.I0(\addressM[16]_0 ),
        .I1(\ALUResult[21]_INST_0_i_7_n_0 ),
        .I2(SrcB[21]),
        .I3(\addressM[16] ),
        .I4(rd10[21]),
        .I5(rd11),
        .O(\ALUResult[21]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[21]_INST_0_i_5 
       (.I0(\ALUResult[23]_INST_0_i_8_n_0 ),
        .I1(SrcB[1]),
        .I2(\ALUResult[21]_INST_0_i_8_n_0 ),
        .O(\ALUResult[21]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8F8800000000)) 
    \ALUResult[21]_INST_0_i_6 
       (.I0(\ALUResult[7]_INST_0_i_7_n_0 ),
        .I1(\ALUResult[22]_INST_0_i_9_n_0 ),
        .I2(\ALUResult[30]_INST_0_i_7_n_0 ),
        .I3(\ALUResult[21]_INST_0_i_9_n_0 ),
        .I4(\ALUResult[0]_INST_0_i_3_n_0 ),
        .I5(\addressM[0] ),
        .O(\ALUResult[21]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00F2000000220000)) 
    \ALUResult[21]_INST_0_i_7 
       (.I0(\ALUResult[22]_INST_0_i_10_n_0 ),
        .I1(\ALUResult[30]_INST_0_i_7_n_0 ),
        .I2(\ALUResult[21]_INST_0_i_10_n_0 ),
        .I3(ALUControl),
        .I4(ALUControl__0),
        .I5(\ALUResult[7]_INST_0_i_7_n_0 ),
        .O(\ALUResult[21]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h000000003300B8B8)) 
    \ALUResult[21]_INST_0_i_8 
       (.I0(SrcA[25]),
        .I1(SrcB[2]),
        .I2(SrcA[21]),
        .I3(SrcA[29]),
        .I4(SrcB[3]),
        .I5(SrcB[4]),
        .O(\ALUResult[21]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ALUResult[21]_INST_0_i_9 
       (.I0(\ALUResult[23]_INST_0_i_11_n_0 ),
        .I1(SrcB[1]),
        .I2(\ALUResult[21]_INST_0_i_11_n_0 ),
        .I3(SrcB[2]),
        .I4(\ALUResult[21]_INST_0_i_12_n_0 ),
        .O(\ALUResult[21]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0CCCCAAAACCCC)) 
    \ALUResult[22]_INST_0 
       (.I0(SrcB[22]),
        .I1(\ALUResult[22]_INST_0_i_2_n_0 ),
        .I2(\ALUResult[22]_INST_0_i_3_n_0 ),
        .I3(\ALUResult[22]_INST_0_i_4_n_0 ),
        .I4(\addressM[0]_0 ),
        .I5(\addressM[0] ),
        .O(ALUResult[17]));
  LUT6 #(
    .INIT(64'hF8F8F8F8F8080808)) 
    \ALUResult[22]_INST_0_i_1 
       (.I0(rd20[22]),
        .I1(rd21),
        .I2(\addressM[1] ),
        .I3(Instr[18]),
        .I4(\q_reg[31]_0 ),
        .I5(\addressM[20] ),
        .O(SrcB[22]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[22]_INST_0_i_10 
       (.I0(\ALUResult[22]_INST_0_i_13_n_0 ),
        .I1(\ALUResult[26]_INST_0_i_11_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[24]_INST_0_i_12_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[28]_INST_0_i_12_n_0 ),
        .O(\ALUResult[22]_INST_0_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFE000200)) 
    \ALUResult[22]_INST_0_i_11 
       (.I0(rd10[26]),
        .I1(SrcB[4]),
        .I2(SrcB[3]),
        .I3(rd11),
        .I4(rd10[31]),
        .O(\ALUResult[22]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFB8000000B80000)) 
    \ALUResult[22]_INST_0_i_12 
       (.I0(rd10[30]),
        .I1(SrcB[3]),
        .I2(rd10[22]),
        .I3(SrcB[4]),
        .I4(rd11),
        .I5(rd10[31]),
        .O(\ALUResult[22]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h0000C088)) 
    \ALUResult[22]_INST_0_i_13 
       (.I0(rd10[15]),
        .I1(rd11),
        .I2(rd10[7]),
        .I3(SrcB[3]),
        .I4(SrcB[4]),
        .O(\ALUResult[22]_INST_0_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \ALUResult[22]_INST_0_i_2 
       (.I0(\ALUResult[29]_INST_0_i_8_n_0 ),
        .I1(\ALUResult[23]_INST_0_i_5_n_0 ),
        .I2(\ALUResult[31]_INST_0_i_11_n_0 ),
        .I3(\ALUResult[22]_INST_0_i_5_n_0 ),
        .I4(\ALUResult[22]_INST_0_i_6_n_0 ),
        .O(\ALUResult[22]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000EAEAFF008080)) 
    \ALUResult[22]_INST_0_i_3 
       (.I0(SrcB[22]),
        .I1(rd11),
        .I2(rd10[22]),
        .I3(\addressM[29] [22]),
        .I4(\addressM[0]_1 ),
        .I5(\addressM[0]_2 ),
        .O(\ALUResult[22]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8A88A888A888A888)) 
    \ALUResult[22]_INST_0_i_4 
       (.I0(\addressM[16]_0 ),
        .I1(\ALUResult[22]_INST_0_i_7_n_0 ),
        .I2(SrcB[22]),
        .I3(\addressM[16] ),
        .I4(rd10[22]),
        .I5(rd11),
        .O(\ALUResult[22]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    \ALUResult[22]_INST_0_i_5 
       (.I0(SrcA[28]),
        .I1(SrcB[2]),
        .I2(\ALUResult[31]_INST_0_i_10_n_0 ),
        .I3(SrcA[24]),
        .I4(SrcB[1]),
        .I5(\ALUResult[22]_INST_0_i_8_n_0 ),
        .O(\ALUResult[22]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8F8800000000)) 
    \ALUResult[22]_INST_0_i_6 
       (.I0(\ALUResult[7]_INST_0_i_7_n_0 ),
        .I1(\ALUResult[23]_INST_0_i_9_n_0 ),
        .I2(\ALUResult[30]_INST_0_i_7_n_0 ),
        .I3(\ALUResult[22]_INST_0_i_9_n_0 ),
        .I4(\ALUResult[0]_INST_0_i_3_n_0 ),
        .I5(\addressM[0] ),
        .O(\ALUResult[22]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00F2000000220000)) 
    \ALUResult[22]_INST_0_i_7 
       (.I0(\ALUResult[23]_INST_0_i_10_n_0 ),
        .I1(\ALUResult[30]_INST_0_i_7_n_0 ),
        .I2(\ALUResult[22]_INST_0_i_10_n_0 ),
        .I3(ALUControl),
        .I4(ALUControl__0),
        .I5(\ALUResult[7]_INST_0_i_7_n_0 ),
        .O(\ALUResult[22]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h000000003300B8B8)) 
    \ALUResult[22]_INST_0_i_8 
       (.I0(SrcA[26]),
        .I1(SrcB[2]),
        .I2(SrcA[22]),
        .I3(SrcA[30]),
        .I4(SrcB[3]),
        .I5(SrcB[4]),
        .O(\ALUResult[22]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ALUResult[22]_INST_0_i_9 
       (.I0(\ALUResult[24]_INST_0_i_11_n_0 ),
        .I1(SrcB[1]),
        .I2(\ALUResult[22]_INST_0_i_11_n_0 ),
        .I3(SrcB[2]),
        .I4(\ALUResult[22]_INST_0_i_12_n_0 ),
        .O(\ALUResult[22]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0CCCCAAAACCCC)) 
    \ALUResult[23]_INST_0 
       (.I0(SrcB[23]),
        .I1(\ALUResult[23]_INST_0_i_2_n_0 ),
        .I2(\ALUResult[23]_INST_0_i_3_n_0 ),
        .I3(\ALUResult[23]_INST_0_i_4_n_0 ),
        .I4(\addressM[0]_0 ),
        .I5(\addressM[0] ),
        .O(ALUResult[18]));
  LUT6 #(
    .INIT(64'hF8F8F8F8F8080808)) 
    \ALUResult[23]_INST_0_i_1 
       (.I0(rd20[23]),
        .I1(rd21),
        .I2(\addressM[1] ),
        .I3(Instr[19]),
        .I4(\q_reg[31]_0 ),
        .I5(\addressM[20] ),
        .O(SrcB[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[23]_INST_0_i_10 
       (.I0(\ALUResult[23]_INST_0_i_12_n_0 ),
        .I1(\ALUResult[27]_INST_0_i_12_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[25]_INST_0_i_12_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[29]_INST_0_i_20_n_0 ),
        .O(\ALUResult[23]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFB8000000B8)) 
    \ALUResult[23]_INST_0_i_11 
       (.I0(SrcA[27]),
        .I1(SrcB[2]),
        .I2(SrcA[23]),
        .I3(SrcB[4]),
        .I4(SrcB[3]),
        .I5(SrcA[31]),
        .O(\ALUResult[23]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000A0A0F000C0C0)) 
    \ALUResult[23]_INST_0_i_12 
       (.I0(rd10[0]),
        .I1(rd10[16]),
        .I2(rd11),
        .I3(rd10[8]),
        .I4(SrcB[3]),
        .I5(SrcB[4]),
        .O(\ALUResult[23]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \ALUResult[23]_INST_0_i_2 
       (.I0(\ALUResult[29]_INST_0_i_8_n_0 ),
        .I1(\ALUResult[24]_INST_0_i_5_n_0 ),
        .I2(\ALUResult[31]_INST_0_i_11_n_0 ),
        .I3(\ALUResult[23]_INST_0_i_5_n_0 ),
        .I4(\ALUResult[23]_INST_0_i_6_n_0 ),
        .O(\ALUResult[23]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000EAEAFF008080)) 
    \ALUResult[23]_INST_0_i_3 
       (.I0(SrcB[23]),
        .I1(rd11),
        .I2(rd10[23]),
        .I3(\addressM[29] [23]),
        .I4(\addressM[0]_1 ),
        .I5(\addressM[0]_2 ),
        .O(\ALUResult[23]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8A88A888A888A888)) 
    \ALUResult[23]_INST_0_i_4 
       (.I0(\addressM[16]_0 ),
        .I1(\ALUResult[23]_INST_0_i_7_n_0 ),
        .I2(SrcB[23]),
        .I3(\addressM[16] ),
        .I4(rd10[23]),
        .I5(rd11),
        .O(\ALUResult[23]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    \ALUResult[23]_INST_0_i_5 
       (.I0(SrcA[29]),
        .I1(SrcB[2]),
        .I2(\ALUResult[31]_INST_0_i_10_n_0 ),
        .I3(SrcA[25]),
        .I4(SrcB[1]),
        .I5(\ALUResult[23]_INST_0_i_8_n_0 ),
        .O(\ALUResult[23]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8F8800000000)) 
    \ALUResult[23]_INST_0_i_6 
       (.I0(\ALUResult[7]_INST_0_i_7_n_0 ),
        .I1(\ALUResult[24]_INST_0_i_9_n_0 ),
        .I2(\ALUResult[30]_INST_0_i_7_n_0 ),
        .I3(\ALUResult[23]_INST_0_i_9_n_0 ),
        .I4(\ALUResult[0]_INST_0_i_3_n_0 ),
        .I5(\addressM[0] ),
        .O(\ALUResult[23]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00F2000000220000)) 
    \ALUResult[23]_INST_0_i_7 
       (.I0(\ALUResult[24]_INST_0_i_10_n_0 ),
        .I1(\ALUResult[30]_INST_0_i_7_n_0 ),
        .I2(\ALUResult[23]_INST_0_i_10_n_0 ),
        .I3(ALUControl),
        .I4(ALUControl__0),
        .I5(\ALUResult[7]_INST_0_i_7_n_0 ),
        .O(\ALUResult[23]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h000000003300B8B8)) 
    \ALUResult[23]_INST_0_i_8 
       (.I0(SrcA[27]),
        .I1(SrcB[2]),
        .I2(SrcA[23]),
        .I3(SrcA[31]),
        .I4(SrcB[3]),
        .I5(SrcB[4]),
        .O(\ALUResult[23]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[23]_INST_0_i_9 
       (.I0(\ALUResult[25]_INST_0_i_11_n_0 ),
        .I1(SrcB[1]),
        .I2(\ALUResult[23]_INST_0_i_11_n_0 ),
        .O(\ALUResult[23]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0CCCCAAAACCCC)) 
    \ALUResult[24]_INST_0 
       (.I0(SrcB[24]),
        .I1(\ALUResult[24]_INST_0_i_2_n_0 ),
        .I2(\ALUResult[24]_INST_0_i_3_n_0 ),
        .I3(\ALUResult[24]_INST_0_i_4_n_0 ),
        .I4(\addressM[0]_0 ),
        .I5(\addressM[0] ),
        .O(ALUResult[19]));
  LUT6 #(
    .INIT(64'hF8F8F8F8F8080808)) 
    \ALUResult[24]_INST_0_i_1 
       (.I0(rd20[24]),
        .I1(rd21),
        .I2(\addressM[1] ),
        .I3(Instr[20]),
        .I4(\q_reg[31]_0 ),
        .I5(\addressM[20] ),
        .O(SrcB[24]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[24]_INST_0_i_10 
       (.I0(\ALUResult[24]_INST_0_i_12_n_0 ),
        .I1(\ALUResult[28]_INST_0_i_12_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[26]_INST_0_i_11_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[29]_INST_0_i_17_n_0 ),
        .O(\ALUResult[24]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFB8000000B8)) 
    \ALUResult[24]_INST_0_i_11 
       (.I0(SrcA[28]),
        .I1(SrcB[2]),
        .I2(SrcA[24]),
        .I3(SrcB[4]),
        .I4(SrcB[3]),
        .I5(SrcA[31]),
        .O(\ALUResult[24]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000A0A0F000C0C0)) 
    \ALUResult[24]_INST_0_i_12 
       (.I0(rd10[1]),
        .I1(rd10[17]),
        .I2(rd11),
        .I3(rd10[9]),
        .I4(SrcB[3]),
        .I5(SrcB[4]),
        .O(\ALUResult[24]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \ALUResult[24]_INST_0_i_2 
       (.I0(\ALUResult[29]_INST_0_i_8_n_0 ),
        .I1(\ALUResult[25]_INST_0_i_5_n_0 ),
        .I2(\ALUResult[31]_INST_0_i_11_n_0 ),
        .I3(\ALUResult[24]_INST_0_i_5_n_0 ),
        .I4(\ALUResult[24]_INST_0_i_6_n_0 ),
        .O(\ALUResult[24]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000EAEAFF008080)) 
    \ALUResult[24]_INST_0_i_3 
       (.I0(SrcB[24]),
        .I1(rd11),
        .I2(rd10[24]),
        .I3(\addressM[29] [24]),
        .I4(\addressM[0]_1 ),
        .I5(\addressM[0]_2 ),
        .O(\ALUResult[24]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8A88A888A888A888)) 
    \ALUResult[24]_INST_0_i_4 
       (.I0(\addressM[16]_0 ),
        .I1(\ALUResult[24]_INST_0_i_7_n_0 ),
        .I2(SrcB[24]),
        .I3(\addressM[16] ),
        .I4(rd10[24]),
        .I5(rd11),
        .O(\ALUResult[24]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    \ALUResult[24]_INST_0_i_5 
       (.I0(SrcA[30]),
        .I1(SrcB[2]),
        .I2(\ALUResult[31]_INST_0_i_10_n_0 ),
        .I3(SrcA[26]),
        .I4(SrcB[1]),
        .I5(\ALUResult[24]_INST_0_i_8_n_0 ),
        .O(\ALUResult[24]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8F8800000000)) 
    \ALUResult[24]_INST_0_i_6 
       (.I0(\ALUResult[7]_INST_0_i_7_n_0 ),
        .I1(\ALUResult[25]_INST_0_i_9_n_0 ),
        .I2(\ALUResult[30]_INST_0_i_7_n_0 ),
        .I3(\ALUResult[24]_INST_0_i_9_n_0 ),
        .I4(\ALUResult[0]_INST_0_i_3_n_0 ),
        .I5(\addressM[0] ),
        .O(\ALUResult[24]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00F2000000220000)) 
    \ALUResult[24]_INST_0_i_7 
       (.I0(\ALUResult[25]_INST_0_i_10_n_0 ),
        .I1(\ALUResult[30]_INST_0_i_7_n_0 ),
        .I2(\ALUResult[24]_INST_0_i_10_n_0 ),
        .I3(ALUControl),
        .I4(ALUControl__0),
        .I5(\ALUResult[7]_INST_0_i_7_n_0 ),
        .O(\ALUResult[24]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h000B000800000000)) 
    \ALUResult[24]_INST_0_i_8 
       (.I0(rd10[28]),
        .I1(SrcB[2]),
        .I2(SrcB[4]),
        .I3(SrcB[3]),
        .I4(rd10[24]),
        .I5(rd11),
        .O(\ALUResult[24]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[24]_INST_0_i_9 
       (.I0(\ALUResult[26]_INST_0_i_10_n_0 ),
        .I1(SrcB[1]),
        .I2(\ALUResult[24]_INST_0_i_11_n_0 ),
        .O(\ALUResult[24]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0CCCCAAAACCCC)) 
    \ALUResult[25]_INST_0 
       (.I0(SrcB[25]),
        .I1(\ALUResult[25]_INST_0_i_2_n_0 ),
        .I2(\ALUResult[25]_INST_0_i_3_n_0 ),
        .I3(\ALUResult[25]_INST_0_i_4_n_0 ),
        .I4(\addressM[0]_0 ),
        .I5(\addressM[0] ),
        .O(ALUResult[20]));
  LUT6 #(
    .INIT(64'hF8F8F8F8F8080808)) 
    \ALUResult[25]_INST_0_i_1 
       (.I0(rd20[25]),
        .I1(rd21),
        .I2(\addressM[1] ),
        .I3(Instr[21]),
        .I4(\q_reg[31]_0 ),
        .I5(\addressM[20] ),
        .O(SrcB[25]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[25]_INST_0_i_10 
       (.I0(\ALUResult[25]_INST_0_i_12_n_0 ),
        .I1(\ALUResult[29]_INST_0_i_20_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[27]_INST_0_i_12_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[31]_INST_0_i_26_n_0 ),
        .O(\ALUResult[25]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFB8000000B8)) 
    \ALUResult[25]_INST_0_i_11 
       (.I0(SrcA[29]),
        .I1(SrcB[2]),
        .I2(SrcA[25]),
        .I3(SrcB[4]),
        .I4(SrcB[3]),
        .I5(SrcA[31]),
        .O(\ALUResult[25]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000A0A0F000C0C0)) 
    \ALUResult[25]_INST_0_i_12 
       (.I0(rd10[2]),
        .I1(rd10[18]),
        .I2(rd11),
        .I3(rd10[10]),
        .I4(SrcB[3]),
        .I5(SrcB[4]),
        .O(\ALUResult[25]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \ALUResult[25]_INST_0_i_2 
       (.I0(\ALUResult[29]_INST_0_i_8_n_0 ),
        .I1(\ALUResult[26]_INST_0_i_5_n_0 ),
        .I2(\ALUResult[31]_INST_0_i_11_n_0 ),
        .I3(\ALUResult[25]_INST_0_i_5_n_0 ),
        .I4(\ALUResult[25]_INST_0_i_6_n_0 ),
        .O(\ALUResult[25]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000EAEAFF008080)) 
    \ALUResult[25]_INST_0_i_3 
       (.I0(SrcB[25]),
        .I1(rd11),
        .I2(rd10[25]),
        .I3(\addressM[29] [25]),
        .I4(\addressM[0]_1 ),
        .I5(\addressM[0]_2 ),
        .O(\ALUResult[25]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8A88A888A888A888)) 
    \ALUResult[25]_INST_0_i_4 
       (.I0(\addressM[16]_0 ),
        .I1(\ALUResult[25]_INST_0_i_7_n_0 ),
        .I2(SrcB[25]),
        .I3(\addressM[16] ),
        .I4(rd10[25]),
        .I5(rd11),
        .O(\ALUResult[25]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    \ALUResult[25]_INST_0_i_5 
       (.I0(SrcA[31]),
        .I1(SrcB[2]),
        .I2(\ALUResult[31]_INST_0_i_10_n_0 ),
        .I3(SrcA[27]),
        .I4(SrcB[1]),
        .I5(\ALUResult[25]_INST_0_i_8_n_0 ),
        .O(\ALUResult[25]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8F8800000000)) 
    \ALUResult[25]_INST_0_i_6 
       (.I0(\ALUResult[7]_INST_0_i_7_n_0 ),
        .I1(\ALUResult[26]_INST_0_i_8_n_0 ),
        .I2(\ALUResult[30]_INST_0_i_7_n_0 ),
        .I3(\ALUResult[25]_INST_0_i_9_n_0 ),
        .I4(\ALUResult[0]_INST_0_i_3_n_0 ),
        .I5(\addressM[0] ),
        .O(\ALUResult[25]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00F2000000220000)) 
    \ALUResult[25]_INST_0_i_7 
       (.I0(\ALUResult[26]_INST_0_i_9_n_0 ),
        .I1(\ALUResult[30]_INST_0_i_7_n_0 ),
        .I2(\ALUResult[25]_INST_0_i_10_n_0 ),
        .I3(ALUControl),
        .I4(ALUControl__0),
        .I5(\ALUResult[7]_INST_0_i_7_n_0 ),
        .O(\ALUResult[25]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h000B000800000000)) 
    \ALUResult[25]_INST_0_i_8 
       (.I0(rd10[29]),
        .I1(SrcB[2]),
        .I2(SrcB[4]),
        .I3(SrcB[3]),
        .I4(rd10[25]),
        .I5(rd11),
        .O(\ALUResult[25]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[25]_INST_0_i_9 
       (.I0(\ALUResult[27]_INST_0_i_11_n_0 ),
        .I1(SrcB[1]),
        .I2(\ALUResult[25]_INST_0_i_11_n_0 ),
        .O(\ALUResult[25]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0CCCCAAAACCCC)) 
    \ALUResult[26]_INST_0 
       (.I0(SrcB[26]),
        .I1(\ALUResult[26]_INST_0_i_2_n_0 ),
        .I2(\ALUResult[26]_INST_0_i_3_n_0 ),
        .I3(\ALUResult[26]_INST_0_i_4_n_0 ),
        .I4(\addressM[0]_0 ),
        .I5(\addressM[0] ),
        .O(ALUResult[21]));
  LUT6 #(
    .INIT(64'hF8F8F8F8F8080808)) 
    \ALUResult[26]_INST_0_i_1 
       (.I0(rd20[26]),
        .I1(rd21),
        .I2(\addressM[1] ),
        .I3(Instr[22]),
        .I4(\q_reg[31]_0 ),
        .I5(\addressM[20] ),
        .O(SrcB[26]));
  LUT6 #(
    .INIT(64'hFFFFFFB8000000B8)) 
    \ALUResult[26]_INST_0_i_10 
       (.I0(SrcA[30]),
        .I1(SrcB[2]),
        .I2(SrcA[26]),
        .I3(SrcB[4]),
        .I4(SrcB[3]),
        .I5(SrcA[31]),
        .O(\ALUResult[26]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000A0A0F000C0C0)) 
    \ALUResult[26]_INST_0_i_11 
       (.I0(rd10[3]),
        .I1(rd10[19]),
        .I2(rd11),
        .I3(rd10[11]),
        .I4(SrcB[3]),
        .I5(SrcB[4]),
        .O(\ALUResult[26]_INST_0_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \ALUResult[26]_INST_0_i_2 
       (.I0(\ALUResult[29]_INST_0_i_8_n_0 ),
        .I1(\ALUResult[27]_INST_0_i_5_n_0 ),
        .I2(\ALUResult[31]_INST_0_i_11_n_0 ),
        .I3(\ALUResult[26]_INST_0_i_5_n_0 ),
        .I4(\ALUResult[26]_INST_0_i_6_n_0 ),
        .O(\ALUResult[26]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000EAEAFF008080)) 
    \ALUResult[26]_INST_0_i_3 
       (.I0(SrcB[26]),
        .I1(rd11),
        .I2(rd10[26]),
        .I3(\addressM[29] [26]),
        .I4(\addressM[0]_1 ),
        .I5(\addressM[0]_2 ),
        .O(\ALUResult[26]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8A88A888A888A888)) 
    \ALUResult[26]_INST_0_i_4 
       (.I0(\addressM[16]_0 ),
        .I1(\ALUResult[26]_INST_0_i_7_n_0 ),
        .I2(SrcB[26]),
        .I3(\addressM[16] ),
        .I4(rd10[26]),
        .I5(rd11),
        .O(\ALUResult[26]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000A0A0F000C0C0)) 
    \ALUResult[26]_INST_0_i_5 
       (.I0(SrcA[30]),
        .I1(SrcA[26]),
        .I2(\ALUResult[31]_INST_0_i_10_n_0 ),
        .I3(SrcA[28]),
        .I4(SrcB[1]),
        .I5(SrcB[2]),
        .O(\ALUResult[26]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8F8800000000)) 
    \ALUResult[26]_INST_0_i_6 
       (.I0(\ALUResult[7]_INST_0_i_7_n_0 ),
        .I1(\ALUResult[27]_INST_0_i_8_n_0 ),
        .I2(\ALUResult[30]_INST_0_i_7_n_0 ),
        .I3(\ALUResult[26]_INST_0_i_8_n_0 ),
        .I4(\ALUResult[0]_INST_0_i_3_n_0 ),
        .I5(\addressM[0] ),
        .O(\ALUResult[26]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00F2000000220000)) 
    \ALUResult[26]_INST_0_i_7 
       (.I0(\ALUResult[27]_INST_0_i_9_n_0 ),
        .I1(\ALUResult[30]_INST_0_i_7_n_0 ),
        .I2(\ALUResult[26]_INST_0_i_9_n_0 ),
        .I3(ALUControl),
        .I4(ALUControl__0),
        .I5(\ALUResult[7]_INST_0_i_7_n_0 ),
        .O(\ALUResult[26]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[26]_INST_0_i_8 
       (.I0(\ALUResult[28]_INST_0_i_11_n_0 ),
        .I1(SrcB[1]),
        .I2(\ALUResult[26]_INST_0_i_10_n_0 ),
        .O(\ALUResult[26]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[26]_INST_0_i_9 
       (.I0(\ALUResult[26]_INST_0_i_11_n_0 ),
        .I1(\ALUResult[29]_INST_0_i_17_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[28]_INST_0_i_12_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[29]_INST_0_i_18_n_0 ),
        .O(\ALUResult[26]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0CCCCAAAACCCC)) 
    \ALUResult[27]_INST_0 
       (.I0(SrcB[27]),
        .I1(\ALUResult[27]_INST_0_i_2_n_0 ),
        .I2(\ALUResult[27]_INST_0_i_3_n_0 ),
        .I3(\ALUResult[27]_INST_0_i_4_n_0 ),
        .I4(\addressM[0]_0 ),
        .I5(\addressM[0] ),
        .O(ALUResult[22]));
  LUT6 #(
    .INIT(64'hF8F8F8F8F8080808)) 
    \ALUResult[27]_INST_0_i_1 
       (.I0(rd20[27]),
        .I1(rd21),
        .I2(\addressM[1] ),
        .I3(Instr[23]),
        .I4(\q_reg[31]_0 ),
        .I5(\addressM[20] ),
        .O(SrcB[27]));
  LUT6 #(
    .INIT(64'hFFFE000000020000)) 
    \ALUResult[27]_INST_0_i_10 
       (.I0(rd10[29]),
        .I1(SrcB[4]),
        .I2(SrcB[3]),
        .I3(SrcB[2]),
        .I4(rd11),
        .I5(rd10[31]),
        .O(\ALUResult[27]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFE000000020000)) 
    \ALUResult[27]_INST_0_i_11 
       (.I0(rd10[27]),
        .I1(SrcB[4]),
        .I2(SrcB[3]),
        .I3(SrcB[2]),
        .I4(rd11),
        .I5(rd10[31]),
        .O(\ALUResult[27]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000A0A0F000C0C0)) 
    \ALUResult[27]_INST_0_i_12 
       (.I0(rd10[4]),
        .I1(rd10[20]),
        .I2(rd11),
        .I3(rd10[12]),
        .I4(SrcB[3]),
        .I5(SrcB[4]),
        .O(\ALUResult[27]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \ALUResult[27]_INST_0_i_2 
       (.I0(\ALUResult[29]_INST_0_i_8_n_0 ),
        .I1(\ALUResult[28]_INST_0_i_5_n_0 ),
        .I2(\ALUResult[31]_INST_0_i_11_n_0 ),
        .I3(\ALUResult[27]_INST_0_i_5_n_0 ),
        .I4(\ALUResult[27]_INST_0_i_6_n_0 ),
        .O(\ALUResult[27]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000EAEAFF008080)) 
    \ALUResult[27]_INST_0_i_3 
       (.I0(SrcB[27]),
        .I1(rd11),
        .I2(rd10[27]),
        .I3(\addressM[29] [27]),
        .I4(\addressM[0]_1 ),
        .I5(\addressM[0]_2 ),
        .O(\ALUResult[27]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8A88A888A888A888)) 
    \ALUResult[27]_INST_0_i_4 
       (.I0(\addressM[16]_0 ),
        .I1(\ALUResult[27]_INST_0_i_7_n_0 ),
        .I2(SrcB[27]),
        .I3(\addressM[16] ),
        .I4(rd10[27]),
        .I5(rd11),
        .O(\ALUResult[27]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000A0A0F000C0C0)) 
    \ALUResult[27]_INST_0_i_5 
       (.I0(SrcA[31]),
        .I1(SrcA[27]),
        .I2(\ALUResult[31]_INST_0_i_10_n_0 ),
        .I3(SrcA[29]),
        .I4(SrcB[1]),
        .I5(SrcB[2]),
        .O(\ALUResult[27]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8F8800000000)) 
    \ALUResult[27]_INST_0_i_6 
       (.I0(\ALUResult[7]_INST_0_i_7_n_0 ),
        .I1(\ALUResult[28]_INST_0_i_8_n_0 ),
        .I2(\ALUResult[30]_INST_0_i_7_n_0 ),
        .I3(\ALUResult[27]_INST_0_i_8_n_0 ),
        .I4(\ALUResult[0]_INST_0_i_3_n_0 ),
        .I5(\addressM[0] ),
        .O(\ALUResult[27]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00F2000000220000)) 
    \ALUResult[27]_INST_0_i_7 
       (.I0(\ALUResult[28]_INST_0_i_9_n_0 ),
        .I1(\ALUResult[30]_INST_0_i_7_n_0 ),
        .I2(\ALUResult[27]_INST_0_i_9_n_0 ),
        .I3(ALUControl),
        .I4(ALUControl__0),
        .I5(\ALUResult[7]_INST_0_i_7_n_0 ),
        .O(\ALUResult[27]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[27]_INST_0_i_8 
       (.I0(\ALUResult[27]_INST_0_i_10_n_0 ),
        .I1(SrcB[1]),
        .I2(\ALUResult[27]_INST_0_i_11_n_0 ),
        .O(\ALUResult[27]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[27]_INST_0_i_9 
       (.I0(\ALUResult[27]_INST_0_i_12_n_0 ),
        .I1(\ALUResult[31]_INST_0_i_26_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[29]_INST_0_i_20_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[31]_INST_0_i_28_n_0 ),
        .O(\ALUResult[27]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0CCCCAAAACCCC)) 
    \ALUResult[28]_INST_0 
       (.I0(SrcB[28]),
        .I1(\ALUResult[28]_INST_0_i_2_n_0 ),
        .I2(\ALUResult[28]_INST_0_i_3_n_0 ),
        .I3(\ALUResult[28]_INST_0_i_4_n_0 ),
        .I4(\addressM[0]_0 ),
        .I5(\addressM[0] ),
        .O(ALUResult[23]));
  LUT6 #(
    .INIT(64'hF8F8F8F8F8080808)) 
    \ALUResult[28]_INST_0_i_1 
       (.I0(rd20[28]),
        .I1(rd21),
        .I2(\addressM[1] ),
        .I3(Instr[24]),
        .I4(\q_reg[31]_0 ),
        .I5(\addressM[20] ),
        .O(SrcB[28]));
  LUT6 #(
    .INIT(64'hFFFE000000020000)) 
    \ALUResult[28]_INST_0_i_10 
       (.I0(rd10[30]),
        .I1(SrcB[4]),
        .I2(SrcB[3]),
        .I3(SrcB[2]),
        .I4(rd11),
        .I5(rd10[31]),
        .O(\ALUResult[28]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFE000000020000)) 
    \ALUResult[28]_INST_0_i_11 
       (.I0(rd10[28]),
        .I1(SrcB[4]),
        .I2(SrcB[3]),
        .I3(SrcB[2]),
        .I4(rd11),
        .I5(rd10[31]),
        .O(\ALUResult[28]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000A0A0F000C0C0)) 
    \ALUResult[28]_INST_0_i_12 
       (.I0(rd10[5]),
        .I1(rd10[21]),
        .I2(rd11),
        .I3(rd10[13]),
        .I4(SrcB[3]),
        .I5(SrcB[4]),
        .O(\ALUResult[28]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \ALUResult[28]_INST_0_i_2 
       (.I0(\ALUResult[29]_INST_0_i_8_n_0 ),
        .I1(\ALUResult[29]_INST_0_i_5_n_0 ),
        .I2(\ALUResult[31]_INST_0_i_11_n_0 ),
        .I3(\ALUResult[28]_INST_0_i_5_n_0 ),
        .I4(\ALUResult[28]_INST_0_i_6_n_0 ),
        .O(\ALUResult[28]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000EAEAFF008080)) 
    \ALUResult[28]_INST_0_i_3 
       (.I0(SrcB[28]),
        .I1(rd11),
        .I2(rd10[28]),
        .I3(\addressM[29] [28]),
        .I4(\addressM[0]_1 ),
        .I5(\addressM[0]_2 ),
        .O(\ALUResult[28]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8A88A888A888A888)) 
    \ALUResult[28]_INST_0_i_4 
       (.I0(\addressM[16]_0 ),
        .I1(\ALUResult[28]_INST_0_i_7_n_0 ),
        .I2(SrcB[28]),
        .I3(\addressM[16] ),
        .I4(rd10[28]),
        .I5(rd11),
        .O(\ALUResult[28]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000C0008800)) 
    \ALUResult[28]_INST_0_i_5 
       (.I0(rd10[28]),
        .I1(\ALUResult[31]_INST_0_i_10_n_0 ),
        .I2(rd10[30]),
        .I3(rd11),
        .I4(SrcB[1]),
        .I5(SrcB[2]),
        .O(\ALUResult[28]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8F8800000000)) 
    \ALUResult[28]_INST_0_i_6 
       (.I0(\ALUResult[7]_INST_0_i_7_n_0 ),
        .I1(\ALUResult[29]_INST_0_i_14_n_0 ),
        .I2(\ALUResult[30]_INST_0_i_7_n_0 ),
        .I3(\ALUResult[28]_INST_0_i_8_n_0 ),
        .I4(\ALUResult[0]_INST_0_i_3_n_0 ),
        .I5(\addressM[0] ),
        .O(\ALUResult[28]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00F2000000220000)) 
    \ALUResult[28]_INST_0_i_7 
       (.I0(\ALUResult[29]_INST_0_i_16_n_0 ),
        .I1(\ALUResult[30]_INST_0_i_7_n_0 ),
        .I2(\ALUResult[28]_INST_0_i_9_n_0 ),
        .I3(ALUControl),
        .I4(ALUControl__0),
        .I5(\ALUResult[7]_INST_0_i_7_n_0 ),
        .O(\ALUResult[28]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[28]_INST_0_i_8 
       (.I0(\ALUResult[28]_INST_0_i_10_n_0 ),
        .I1(SrcB[1]),
        .I2(\ALUResult[28]_INST_0_i_11_n_0 ),
        .O(\ALUResult[28]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[28]_INST_0_i_9 
       (.I0(\ALUResult[28]_INST_0_i_12_n_0 ),
        .I1(\ALUResult[29]_INST_0_i_18_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[29]_INST_0_i_17_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[31]_INST_0_i_32_n_0 ),
        .O(\ALUResult[28]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0CCCCAAAACCCC)) 
    \ALUResult[29]_INST_0 
       (.I0(SrcB[29]),
        .I1(\ALUResult[29]_INST_0_i_2_n_0 ),
        .I2(\ALUResult[29]_INST_0_i_3_n_0 ),
        .I3(\ALUResult[29]_INST_0_i_4_n_0 ),
        .I4(\addressM[0]_0 ),
        .I5(\addressM[0] ),
        .O(ALUResult[24]));
  LUT6 #(
    .INIT(64'hF8F8F8F8F8080808)) 
    \ALUResult[29]_INST_0_i_1 
       (.I0(rd20[29]),
        .I1(rd21),
        .I2(\addressM[1] ),
        .I3(Instr[25]),
        .I4(\q_reg[31]_0 ),
        .I5(\addressM[20] ),
        .O(SrcB[29]));
  LUT6 #(
    .INIT(64'h00F2000000220000)) 
    \ALUResult[29]_INST_0_i_12 
       (.I0(\ALUResult[29]_INST_0_i_15_n_0 ),
        .I1(\ALUResult[30]_INST_0_i_7_n_0 ),
        .I2(\ALUResult[29]_INST_0_i_16_n_0 ),
        .I3(ALUControl),
        .I4(ALUControl__0),
        .I5(\ALUResult[7]_INST_0_i_7_n_0 ),
        .O(\ALUResult[29]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000004)) 
    \ALUResult[29]_INST_0_i_14 
       (.I0(SrcB[1]),
        .I1(SrcA[29]),
        .I2(SrcB[4]),
        .I3(SrcB[3]),
        .I4(SrcB[2]),
        .I5(SrcA[31]),
        .O(\ALUResult[29]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[29]_INST_0_i_15 
       (.I0(\ALUResult[29]_INST_0_i_17_n_0 ),
        .I1(\ALUResult[31]_INST_0_i_32_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[29]_INST_0_i_18_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[29]_INST_0_i_19_n_0 ),
        .O(\ALUResult[29]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[29]_INST_0_i_16 
       (.I0(\ALUResult[29]_INST_0_i_20_n_0 ),
        .I1(\ALUResult[31]_INST_0_i_28_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[31]_INST_0_i_26_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[31]_INST_0_i_27_n_0 ),
        .O(\ALUResult[29]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0000A0A0F000C0C0)) 
    \ALUResult[29]_INST_0_i_17 
       (.I0(rd10[7]),
        .I1(rd10[23]),
        .I2(rd11),
        .I3(rd10[15]),
        .I4(SrcB[3]),
        .I5(SrcB[4]),
        .O(\ALUResult[29]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \ALUResult[29]_INST_0_i_18 
       (.I0(SrcA[25]),
        .I1(SrcA[9]),
        .I2(SrcB[3]),
        .I3(SrcA[1]),
        .I4(SrcB[4]),
        .I5(SrcA[17]),
        .O(\ALUResult[29]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \ALUResult[29]_INST_0_i_19 
       (.I0(SrcA[29]),
        .I1(SrcA[13]),
        .I2(SrcB[3]),
        .I3(SrcA[5]),
        .I4(SrcB[4]),
        .I5(SrcA[21]),
        .O(\ALUResult[29]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8888888)) 
    \ALUResult[29]_INST_0_i_2 
       (.I0(\ALUResult[31]_INST_0_i_11_n_0 ),
        .I1(\ALUResult[29]_INST_0_i_5_n_0 ),
        .I2(\ALUResult[29]_INST_0_i_6_n_0 ),
        .I3(\ALUResult[29]_INST_0_i_7_n_0 ),
        .I4(\ALUResult[29]_INST_0_i_8_n_0 ),
        .I5(\ALUResult[29]_INST_0_i_9_n_0 ),
        .O(\ALUResult[29]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000A0A0F000C0C0)) 
    \ALUResult[29]_INST_0_i_20 
       (.I0(rd10[6]),
        .I1(rd10[22]),
        .I2(rd11),
        .I3(rd10[14]),
        .I4(SrcB[3]),
        .I5(SrcB[4]),
        .O(\ALUResult[29]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h0000EAEAFF008080)) 
    \ALUResult[29]_INST_0_i_3 
       (.I0(SrcB[29]),
        .I1(rd11),
        .I2(rd10[29]),
        .I3(\addressM[29] [29]),
        .I4(\addressM[0]_1 ),
        .I5(\addressM[0]_2 ),
        .O(\ALUResult[29]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8A88A888A888A888)) 
    \ALUResult[29]_INST_0_i_4 
       (.I0(\addressM[16]_0 ),
        .I1(\ALUResult[29]_INST_0_i_12_n_0 ),
        .I2(SrcB[29]),
        .I3(\addressM[16] ),
        .I4(rd10[29]),
        .I5(rd11),
        .O(\ALUResult[29]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000C0008800)) 
    \ALUResult[29]_INST_0_i_5 
       (.I0(rd10[29]),
        .I1(\ALUResult[31]_INST_0_i_10_n_0 ),
        .I2(rd10[31]),
        .I3(rd11),
        .I4(SrcB[1]),
        .I5(SrcB[2]),
        .O(\ALUResult[29]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \ALUResult[29]_INST_0_i_6 
       (.I0(SrcB[1]),
        .I1(SrcB[2]),
        .O(\ALUResult[29]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \ALUResult[29]_INST_0_i_7 
       (.I0(SrcB[4]),
        .I1(SrcB[3]),
        .I2(rd10[30]),
        .I3(rd11),
        .O(\ALUResult[29]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ALUResult[29]_INST_0_i_8 
       (.I0(\ALUResult[7]_INST_0_i_7_n_0 ),
        .I1(\addressM[0] ),
        .O(\ALUResult[29]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8F8800000000)) 
    \ALUResult[29]_INST_0_i_9 
       (.I0(\ALUResult[7]_INST_0_i_7_n_0 ),
        .I1(\ALUResult[30]_INST_0_i_8_n_0 ),
        .I2(\ALUResult[30]_INST_0_i_7_n_0 ),
        .I3(\ALUResult[29]_INST_0_i_14_n_0 ),
        .I4(\ALUResult[0]_INST_0_i_3_n_0 ),
        .I5(\addressM[0] ),
        .O(\ALUResult[29]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0CCCCAAAACCCC)) 
    \ALUResult[2]_INST_0 
       (.I0(SrcB[2]),
        .I1(\ALUResult[2]_INST_0_i_2_n_0 ),
        .I2(\ALUResult[2]_INST_0_i_3_n_0 ),
        .I3(\ALUResult[2]_INST_0_i_4_n_0 ),
        .I4(\addressM[0]_0 ),
        .I5(\addressM[0] ),
        .O(ALUResult[0]));
  LUT4 #(
    .INIT(16'hF808)) 
    \ALUResult[2]_INST_0_i_1 
       (.I0(rd20[2]),
        .I1(rd21),
        .I2(\addressM[1] ),
        .I3(immext[2]),
        .O(SrcB[2]));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \ALUResult[2]_INST_0_i_10 
       (.I0(SrcA[2]),
        .I1(SrcA[18]),
        .I2(SrcB[3]),
        .I3(SrcA[26]),
        .I4(SrcB[4]),
        .I5(SrcA[10]),
        .O(\ALUResult[2]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[2]_INST_0_i_11 
       (.I0(\ALUResult[7]_INST_0_i_21_n_0 ),
        .I1(\ALUResult[4]_INST_0_i_12_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[6]_INST_0_i_11_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[2]_INST_0_i_10_n_0 ),
        .O(\ALUResult[2]_INST_0_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \ALUResult[2]_INST_0_i_2 
       (.I0(\ALUResult[29]_INST_0_i_8_n_0 ),
        .I1(\ALUResult[3]_INST_0_i_7_n_0 ),
        .I2(\ALUResult[31]_INST_0_i_11_n_0 ),
        .I3(\ALUResult[2]_INST_0_i_6_n_0 ),
        .I4(\ALUResult[2]_INST_0_i_7_n_0 ),
        .O(\ALUResult[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000EAEAFF008080)) 
    \ALUResult[2]_INST_0_i_3 
       (.I0(SrcB[2]),
        .I1(rd11),
        .I2(rd10[2]),
        .I3(\addressM[29] [2]),
        .I4(\addressM[0]_1 ),
        .I5(\addressM[0]_2 ),
        .O(\ALUResult[2]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAA2080)) 
    \ALUResult[2]_INST_0_i_4 
       (.I0(\addressM[16]_0 ),
        .I1(SrcB[2]),
        .I2(\addressM[16] ),
        .I3(SrcA[2]),
        .I4(\ALUResult[2]_INST_0_i_8_n_0 ),
        .I5(\ALUResult[2]_INST_0_i_9_n_0 ),
        .O(\ALUResult[2]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[2]_INST_0_i_6 
       (.I0(\ALUResult[8]_INST_0_i_11_n_0 ),
        .I1(\ALUResult[4]_INST_0_i_12_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[6]_INST_0_i_11_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[2]_INST_0_i_10_n_0 ),
        .O(\ALUResult[2]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8F8800000000)) 
    \ALUResult[2]_INST_0_i_7 
       (.I0(\ALUResult[7]_INST_0_i_7_n_0 ),
        .I1(\ALUResult[3]_INST_0_i_6_n_0 ),
        .I2(\ALUResult[30]_INST_0_i_7_n_0 ),
        .I3(\ALUResult[2]_INST_0_i_11_n_0 ),
        .I4(\ALUResult[0]_INST_0_i_3_n_0 ),
        .I5(\addressM[0] ),
        .O(\ALUResult[2]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h2202000020000000)) 
    \ALUResult[2]_INST_0_i_8 
       (.I0(\ALUResult[7]_INST_0_i_12_n_0 ),
        .I1(SrcB[2]),
        .I2(SrcB[1]),
        .I3(SrcA[0]),
        .I4(\ALUResult[31]_INST_0_i_10_n_0 ),
        .I5(SrcA[2]),
        .O(\ALUResult[2]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \ALUResult[2]_INST_0_i_9 
       (.I0(SrcB[1]),
        .I1(SrcB[2]),
        .I2(\ALUResult[31]_INST_0_i_10_n_0 ),
        .I3(rd10[1]),
        .I4(rd11),
        .I5(\ALUResult[31]_INST_0_i_19_n_0 ),
        .O(\ALUResult[2]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hF8F8F8F8F8080808)) 
    \ALUResult[30]_INST_0_i_1 
       (.I0(rd20[30]),
        .I1(rd21),
        .I2(\addressM[1] ),
        .I3(Instr[26]),
        .I4(\q_reg[31]_0 ),
        .I5(\addressM[20] ),
        .O(clk_0[0]));
  LUT6 #(
    .INIT(64'hF8FFF8F8FFF8F8F8)) 
    \ALUResult[30]_INST_0_i_10 
       (.I0(\ALUResult[7]_INST_0_i_12_n_0 ),
        .I1(\ALUResult[31]_INST_0_i_20_n_0 ),
        .I2(\ALUResult[30]_INST_0_i_11_n_0 ),
        .I3(SrcA[30]),
        .I4(\addressM[16] ),
        .I5(clk_0[0]),
        .O(\ALUResult[30]_INST_0_i_1_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ALUResult[30]_INST_0_i_11 
       (.I0(\ALUResult[31]_INST_0_i_19_n_0 ),
        .I1(\ALUResult[29]_INST_0_i_15_n_0 ),
        .O(\ALUResult[30]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFCF0AC00A)) 
    \ALUResult[30]_INST_0_i_2 
       (.I0(\ALUResult[30]_INST_0_i_6_n_0 ),
        .I1(SrcA[31]),
        .I2(\ALUResult[30]_INST_0_i_7_n_0 ),
        .I3(\addressM[0] ),
        .I4(\ALUResult[30]_INST_0_i_8_n_0 ),
        .I5(\ALUResult[30]_INST_0_i_9_n_0 ),
        .O(\ALUResult[30]_INST_0_i_9_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \ALUResult[30]_INST_0_i_6 
       (.I0(rd11),
        .I1(rd10[30]),
        .I2(SrcB[3]),
        .I3(SrcB[4]),
        .I4(SrcB[2]),
        .I5(SrcB[1]),
        .O(\ALUResult[30]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFFFFFFFFFF)) 
    \ALUResult[30]_INST_0_i_7 
       (.I0(SrcB[0]),
        .I1(\ALUResult[0]_INST_0_i_8_n_0 ),
        .I2(\ALUResult[0]_INST_0_i_9_n_0 ),
        .I3(\ALUResult[0]_INST_0_i_10_n_0 ),
        .I4(\ALUResult[0]_INST_0_i_11_n_0 ),
        .I5(\ALUResult[0]_INST_0_i_12_n_0 ),
        .O(\ALUResult[30]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000004)) 
    \ALUResult[30]_INST_0_i_8 
       (.I0(SrcB[1]),
        .I1(SrcA[30]),
        .I2(SrcB[4]),
        .I3(SrcB[3]),
        .I4(SrcB[2]),
        .I5(SrcA[31]),
        .O(\ALUResult[30]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \ALUResult[30]_INST_0_i_9 
       (.I0(SrcB[1]),
        .I1(SrcB[2]),
        .I2(\ALUResult[31]_INST_0_i_10_n_0 ),
        .I3(rd10[31]),
        .I4(rd11),
        .I5(\ALUResult[29]_INST_0_i_8_n_0 ),
        .O(\ALUResult[30]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hEFFCECFCEFCCECCC)) 
    \ALUResult[31]_INST_0 
       (.I0(\ALUResult[31]_INST_0_i_1_n_0 ),
        .I1(\ALUResult[31]_INST_0_i_2_n_0 ),
        .I2(\addressM[0] ),
        .I3(\addressM[0]_0 ),
        .I4(clk_0[1]),
        .I5(SrcA[31]),
        .O(\ALUResult[31]_INST_0_i_6_0 ));
  LUT6 #(
    .INIT(64'hFF00FCFCAAAAC0C0)) 
    \ALUResult[31]_INST_0_i_1 
       (.I0(O),
        .I1(SrcA[31]),
        .I2(clk_0[1]),
        .I3(\ALUResult[31]_INST_0_i_7_n_0 ),
        .I4(\addressM[0]_1 ),
        .I5(\addressM[0]_2 ),
        .O(\ALUResult[31]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h050005FF053305FF)) 
    \ALUResult[31]_INST_0_i_10 
       (.I0(immext[3]),
        .I1(rd20[3]),
        .I2(immext[4]),
        .I3(\addressM[1] ),
        .I4(rd21),
        .I5(rd20[4]),
        .O(\ALUResult[31]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \ALUResult[31]_INST_0_i_11 
       (.I0(\ALUResult[30]_INST_0_i_7_n_0 ),
        .I1(\addressM[0] ),
        .O(\ALUResult[31]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \ALUResult[31]_INST_0_i_19 
       (.I0(\ALUResult[30]_INST_0_i_10_0 ),
        .I1(SrcB[0]),
        .I2(\ALUResult[7]_INST_0_i_26_n_0 ),
        .I3(\ALUResult[0]_INST_0_i_10_n_0 ),
        .I4(\ALUResult[0]_INST_0_i_9_n_0 ),
        .I5(\ALUResult[0]_INST_0_i_8_n_0 ),
        .O(\ALUResult[31]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \ALUResult[31]_INST_0_i_2 
       (.I0(\ALUResult[31]_INST_0_i_10_n_0 ),
        .I1(SrcA[31]),
        .I2(SrcB[2]),
        .I3(SrcB[1]),
        .I4(\addressM[0]_0 ),
        .I5(\ALUResult[31]_INST_0_i_11_n_0 ),
        .O(\ALUResult[31]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \ALUResult[31]_INST_0_i_20 
       (.I0(\ALUResult[31]_INST_0_i_26_n_0 ),
        .I1(SrcB[2]),
        .I2(\ALUResult[31]_INST_0_i_27_n_0 ),
        .I3(\ALUResult[31]_INST_0_i_28_n_0 ),
        .I4(\ALUResult[31]_INST_0_i_29_n_0 ),
        .I5(SrcB[1]),
        .O(\ALUResult[31]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h8A8A80808A808A80)) 
    \ALUResult[31]_INST_0_i_21 
       (.I0(\ALUResult[7]_INST_0_i_12_n_0 ),
        .I1(\ALUResult[31]_INST_0_i_30_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[31]_INST_0_i_31_n_0 ),
        .I4(\ALUResult[31]_INST_0_i_32_n_0 ),
        .I5(SrcB[2]),
        .O(\ALUResult[31]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \ALUResult[31]_INST_0_i_26 
       (.I0(SrcA[24]),
        .I1(SrcA[8]),
        .I2(SrcB[3]),
        .I3(SrcA[0]),
        .I4(SrcB[4]),
        .I5(SrcA[16]),
        .O(\ALUResult[31]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \ALUResult[31]_INST_0_i_27 
       (.I0(SrcA[28]),
        .I1(SrcA[12]),
        .I2(SrcB[3]),
        .I3(SrcA[4]),
        .I4(SrcB[4]),
        .I5(SrcA[20]),
        .O(\ALUResult[31]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \ALUResult[31]_INST_0_i_28 
       (.I0(SrcA[26]),
        .I1(SrcA[10]),
        .I2(SrcB[3]),
        .I3(SrcA[2]),
        .I4(SrcB[4]),
        .I5(SrcA[18]),
        .O(\ALUResult[31]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \ALUResult[31]_INST_0_i_29 
       (.I0(SrcA[30]),
        .I1(SrcA[14]),
        .I2(SrcB[3]),
        .I3(SrcA[6]),
        .I4(SrcB[4]),
        .I5(SrcA[22]),
        .O(\ALUResult[31]_INST_0_i_29_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[31]_INST_0_i_30 
       (.I0(\ALUResult[29]_INST_0_i_18_n_0 ),
        .I1(SrcB[2]),
        .I2(\ALUResult[29]_INST_0_i_19_n_0 ),
        .O(\ALUResult[31]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \ALUResult[31]_INST_0_i_31 
       (.I0(SrcA[31]),
        .I1(SrcA[15]),
        .I2(SrcB[3]),
        .I3(SrcA[7]),
        .I4(SrcB[4]),
        .I5(SrcA[23]),
        .O(\ALUResult[31]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \ALUResult[31]_INST_0_i_32 
       (.I0(SrcA[27]),
        .I1(SrcA[11]),
        .I2(SrcB[3]),
        .I3(SrcA[3]),
        .I4(SrcB[4]),
        .I5(SrcA[19]),
        .O(\ALUResult[31]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h08F8F8F808080808)) 
    \ALUResult[31]_INST_0_i_5 
       (.I0(rd20[31]),
        .I1(rd21),
        .I2(\addressM[1] ),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .I5(Instr[27]),
        .O(clk_0[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \ALUResult[31]_INST_0_i_6 
       (.I0(Instr[13]),
        .I1(Instr[15]),
        .I2(Instr[12]),
        .I3(Instr[11]),
        .I4(Instr[14]),
        .I5(rd10[31]),
        .O(SrcA[31]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF484848)) 
    \ALUResult[31]_INST_0_i_7 
       (.I0(SrcA[31]),
        .I1(\addressM[16] ),
        .I2(clk_0[1]),
        .I3(\ALUResult[31]_INST_0_i_19_n_0 ),
        .I4(\ALUResult[31]_INST_0_i_20_n_0 ),
        .I5(\ALUResult[31]_INST_0_i_21_n_0 ),
        .O(\ALUResult[31]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FCFCAAAAF0F0)) 
    \ALUResult[3]_INST_0 
       (.I0(SrcB[3]),
        .I1(data8[3]),
        .I2(\ALUResult[3]_INST_0_i_3_n_0 ),
        .I3(\ALUResult[3]_INST_0_i_4_n_0 ),
        .I4(\addressM[0]_0 ),
        .I5(\addressM[0] ),
        .O(ALUResult[1]));
  LUT4 #(
    .INIT(16'hF808)) 
    \ALUResult[3]_INST_0_i_1 
       (.I0(rd20[3]),
        .I1(rd21),
        .I2(\addressM[1] ),
        .I3(immext[3]),
        .O(SrcB[3]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \ALUResult[3]_INST_0_i_10 
       (.I0(\ALUResult[7]_INST_0_i_25_n_0 ),
        .I1(\ALUResult[0]_INST_0_i_10_n_0 ),
        .I2(\ALUResult[7]_INST_0_i_26_n_0 ),
        .I3(SrcB[0]),
        .I4(\ALUResult[30]_INST_0_i_10_0 ),
        .I5(\ALUResult[3]_INST_0_i_13_n_0 ),
        .O(\ALUResult[3]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00000000C0008800)) 
    \ALUResult[3]_INST_0_i_11 
       (.I0(rd10[3]),
        .I1(\ALUResult[31]_INST_0_i_10_n_0 ),
        .I2(rd10[1]),
        .I3(rd11),
        .I4(SrcB[1]),
        .I5(SrcB[2]),
        .O(\ALUResult[3]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \ALUResult[3]_INST_0_i_12 
       (.I0(SrcA[3]),
        .I1(SrcA[19]),
        .I2(SrcB[3]),
        .I3(SrcA[27]),
        .I4(SrcB[4]),
        .I5(SrcA[11]),
        .O(\ALUResult[3]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h00000000C0008800)) 
    \ALUResult[3]_INST_0_i_13 
       (.I0(rd10[2]),
        .I1(\ALUResult[31]_INST_0_i_10_n_0 ),
        .I2(rd10[0]),
        .I3(rd11),
        .I4(SrcB[1]),
        .I5(SrcB[2]),
        .O(\ALUResult[3]_INST_0_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hFFAEAEAE)) 
    \ALUResult[3]_INST_0_i_2 
       (.I0(\ALUResult[0]_INST_0_i_3_n_0 ),
        .I1(\ALUResult[3]_INST_0_i_6_n_0 ),
        .I2(\ALUResult[30]_INST_0_i_7_n_0 ),
        .I3(\ALUResult[4]_INST_0_i_6_n_0 ),
        .I4(\ALUResult[7]_INST_0_i_7_n_0 ),
        .O(data8[3]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h0000F222)) 
    \ALUResult[3]_INST_0_i_3 
       (.I0(\ALUResult[3]_INST_0_i_7_n_0 ),
        .I1(\ALUResult[30]_INST_0_i_7_n_0 ),
        .I2(\ALUResult[4]_INST_0_i_7_n_0 ),
        .I3(\ALUResult[7]_INST_0_i_7_n_0 ),
        .I4(\addressM[0] ),
        .O(\ALUResult[3]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFEFEAAAAAAAA)) 
    \ALUResult[3]_INST_0_i_4 
       (.I0(\ALUResult[3]_INST_0_i_8_n_0 ),
        .I1(\ALUResult[3]_INST_0_i_9_n_0 ),
        .I2(\ALUResult[3]_INST_0_i_10_n_0 ),
        .I3(\ALUResult[7]_INST_0_i_12_n_0 ),
        .I4(\ALUResult[3]_INST_0_i_11_n_0 ),
        .I5(\addressM[16]_0 ),
        .O(\ALUResult[3]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[3]_INST_0_i_6 
       (.I0(\ALUResult[7]_INST_0_i_15_n_0 ),
        .I1(\ALUResult[5]_INST_0_i_11_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[7]_INST_0_i_17_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[3]_INST_0_i_12_n_0 ),
        .O(\ALUResult[3]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[3]_INST_0_i_7 
       (.I0(\ALUResult[7]_INST_0_i_23_n_0 ),
        .I1(\ALUResult[5]_INST_0_i_11_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[7]_INST_0_i_17_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[3]_INST_0_i_12_n_0 ),
        .O(\ALUResult[3]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000EAEAFF008080)) 
    \ALUResult[3]_INST_0_i_8 
       (.I0(SrcB[3]),
        .I1(rd11),
        .I2(rd10[3]),
        .I3(\addressM[29] [3]),
        .I4(\addressM[0]_1 ),
        .I5(\addressM[0]_2 ),
        .O(\ALUResult[3]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h4888)) 
    \ALUResult[3]_INST_0_i_9 
       (.I0(SrcB[3]),
        .I1(\addressM[16] ),
        .I2(rd10[3]),
        .I3(rd11),
        .O(\ALUResult[3]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FCFCAAAAF0F0)) 
    \ALUResult[4]_INST_0 
       (.I0(SrcB[4]),
        .I1(data8[4]),
        .I2(\ALUResult[4]_INST_0_i_3_n_0 ),
        .I3(\ALUResult[4]_INST_0_i_4_n_0 ),
        .I4(\addressM[0]_0 ),
        .I5(\addressM[0] ),
        .O(ALUResult[2]));
  LUT4 #(
    .INIT(16'hF808)) 
    \ALUResult[4]_INST_0_i_1 
       (.I0(rd20[4]),
        .I1(rd21),
        .I2(\addressM[1] ),
        .I3(immext[4]),
        .O(SrcB[4]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \ALUResult[4]_INST_0_i_10 
       (.I0(\ALUResult[7]_INST_0_i_25_n_0 ),
        .I1(\ALUResult[0]_INST_0_i_10_n_0 ),
        .I2(\ALUResult[7]_INST_0_i_26_n_0 ),
        .I3(SrcB[0]),
        .I4(\ALUResult[30]_INST_0_i_10_0 ),
        .I5(\ALUResult[3]_INST_0_i_11_n_0 ),
        .O(\ALUResult[4]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000A0A0F000C0C0)) 
    \ALUResult[4]_INST_0_i_11 
       (.I0(SrcA[0]),
        .I1(SrcA[4]),
        .I2(\ALUResult[31]_INST_0_i_10_n_0 ),
        .I3(SrcA[2]),
        .I4(SrcB[1]),
        .I5(SrcB[2]),
        .O(\ALUResult[4]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \ALUResult[4]_INST_0_i_12 
       (.I0(SrcA[4]),
        .I1(SrcA[20]),
        .I2(SrcB[3]),
        .I3(SrcA[28]),
        .I4(SrcB[4]),
        .I5(SrcA[12]),
        .O(\ALUResult[4]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hFFAEAEAE)) 
    \ALUResult[4]_INST_0_i_2 
       (.I0(\ALUResult[0]_INST_0_i_3_n_0 ),
        .I1(\ALUResult[4]_INST_0_i_6_n_0 ),
        .I2(\ALUResult[30]_INST_0_i_7_n_0 ),
        .I3(\ALUResult[5]_INST_0_i_5_n_0 ),
        .I4(\ALUResult[7]_INST_0_i_7_n_0 ),
        .O(data8[4]));
  LUT5 #(
    .INIT(32'h0000F222)) 
    \ALUResult[4]_INST_0_i_3 
       (.I0(\ALUResult[4]_INST_0_i_7_n_0 ),
        .I1(\ALUResult[30]_INST_0_i_7_n_0 ),
        .I2(\ALUResult[5]_INST_0_i_6_n_0 ),
        .I3(\ALUResult[7]_INST_0_i_7_n_0 ),
        .I4(\addressM[0] ),
        .O(\ALUResult[4]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFEFEAAAAAAAA)) 
    \ALUResult[4]_INST_0_i_4 
       (.I0(\ALUResult[4]_INST_0_i_8_n_0 ),
        .I1(\ALUResult[4]_INST_0_i_9_n_0 ),
        .I2(\ALUResult[4]_INST_0_i_10_n_0 ),
        .I3(\ALUResult[7]_INST_0_i_12_n_0 ),
        .I4(\ALUResult[4]_INST_0_i_11_n_0 ),
        .I5(\addressM[16]_0 ),
        .O(\ALUResult[4]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[4]_INST_0_i_6 
       (.I0(\ALUResult[7]_INST_0_i_19_n_0 ),
        .I1(\ALUResult[6]_INST_0_i_11_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[7]_INST_0_i_21_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[4]_INST_0_i_12_n_0 ),
        .O(\ALUResult[4]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[4]_INST_0_i_7 
       (.I0(\ALUResult[8]_INST_0_i_9_n_0 ),
        .I1(\ALUResult[6]_INST_0_i_11_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[8]_INST_0_i_11_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[4]_INST_0_i_12_n_0 ),
        .O(\ALUResult[4]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000EAEAFF008080)) 
    \ALUResult[4]_INST_0_i_8 
       (.I0(SrcB[4]),
        .I1(rd11),
        .I2(rd10[4]),
        .I3(\addressM[29] [4]),
        .I4(\addressM[0]_1 ),
        .I5(\addressM[0]_2 ),
        .O(\ALUResult[4]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h4888)) 
    \ALUResult[4]_INST_0_i_9 
       (.I0(SrcB[4]),
        .I1(\addressM[16] ),
        .I2(rd10[4]),
        .I3(rd11),
        .O(\ALUResult[4]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FCFCAAAAF0F0)) 
    \ALUResult[5]_INST_0 
       (.I0(SrcB[5]),
        .I1(data8[5]),
        .I2(\ALUResult[5]_INST_0_i_3_n_0 ),
        .I3(\ALUResult[5]_INST_0_i_4_n_0 ),
        .I4(\addressM[0]_0 ),
        .I5(\addressM[0] ),
        .O(ALUResult[3]));
  LUT5 #(
    .INIT(32'h0808F808)) 
    \ALUResult[5]_INST_0_i_1 
       (.I0(rd20[5]),
        .I1(rd21),
        .I2(\addressM[1] ),
        .I3(Instr[21]),
        .I4(sel0[2]),
        .O(SrcB[5]));
  LUT6 #(
    .INIT(64'h0000A0A0F000C0C0)) 
    \ALUResult[5]_INST_0_i_10 
       (.I0(SrcA[1]),
        .I1(SrcA[5]),
        .I2(\ALUResult[31]_INST_0_i_10_n_0 ),
        .I3(SrcA[3]),
        .I4(SrcB[1]),
        .I5(SrcB[2]),
        .O(\ALUResult[5]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \ALUResult[5]_INST_0_i_11 
       (.I0(SrcA[5]),
        .I1(SrcA[21]),
        .I2(SrcB[3]),
        .I3(SrcA[29]),
        .I4(SrcB[4]),
        .I5(SrcA[13]),
        .O(\ALUResult[5]_INST_0_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hFFAEAEAE)) 
    \ALUResult[5]_INST_0_i_2 
       (.I0(\ALUResult[0]_INST_0_i_3_n_0 ),
        .I1(\ALUResult[5]_INST_0_i_5_n_0 ),
        .I2(\ALUResult[30]_INST_0_i_7_n_0 ),
        .I3(\ALUResult[6]_INST_0_i_5_n_0 ),
        .I4(\ALUResult[7]_INST_0_i_7_n_0 ),
        .O(data8[5]));
  LUT5 #(
    .INIT(32'h0000F222)) 
    \ALUResult[5]_INST_0_i_3 
       (.I0(\ALUResult[5]_INST_0_i_6_n_0 ),
        .I1(\ALUResult[30]_INST_0_i_7_n_0 ),
        .I2(\ALUResult[6]_INST_0_i_6_n_0 ),
        .I3(\ALUResult[7]_INST_0_i_7_n_0 ),
        .I4(\addressM[0] ),
        .O(\ALUResult[5]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFEFEAAAAAAAA)) 
    \ALUResult[5]_INST_0_i_4 
       (.I0(\ALUResult[5]_INST_0_i_7_n_0 ),
        .I1(\ALUResult[5]_INST_0_i_8_n_0 ),
        .I2(\ALUResult[5]_INST_0_i_9_n_0 ),
        .I3(\ALUResult[7]_INST_0_i_12_n_0 ),
        .I4(\ALUResult[5]_INST_0_i_10_n_0 ),
        .I5(\addressM[16]_0 ),
        .O(\ALUResult[5]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[5]_INST_0_i_5 
       (.I0(\ALUResult[7]_INST_0_i_16_n_0 ),
        .I1(\ALUResult[7]_INST_0_i_17_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[7]_INST_0_i_15_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[5]_INST_0_i_11_n_0 ),
        .O(\ALUResult[5]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[5]_INST_0_i_6 
       (.I0(\ALUResult[7]_INST_0_i_24_n_0 ),
        .I1(\ALUResult[7]_INST_0_i_17_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[7]_INST_0_i_23_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[5]_INST_0_i_11_n_0 ),
        .O(\ALUResult[5]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000EAEAFF008080)) 
    \ALUResult[5]_INST_0_i_7 
       (.I0(SrcB[5]),
        .I1(rd11),
        .I2(rd10[5]),
        .I3(\addressM[29] [5]),
        .I4(\addressM[0]_1 ),
        .I5(\addressM[0]_2 ),
        .O(\ALUResult[5]_INST_0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h4888)) 
    \ALUResult[5]_INST_0_i_8 
       (.I0(SrcB[5]),
        .I1(\addressM[16] ),
        .I2(rd10[5]),
        .I3(rd11),
        .O(\ALUResult[5]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \ALUResult[5]_INST_0_i_9 
       (.I0(\ALUResult[7]_INST_0_i_25_n_0 ),
        .I1(\ALUResult[0]_INST_0_i_10_n_0 ),
        .I2(\ALUResult[7]_INST_0_i_26_n_0 ),
        .I3(SrcB[0]),
        .I4(\ALUResult[30]_INST_0_i_10_0 ),
        .I5(\ALUResult[4]_INST_0_i_11_n_0 ),
        .O(\ALUResult[5]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FCFCAAAAF0F0)) 
    \ALUResult[6]_INST_0 
       (.I0(SrcB[6]),
        .I1(data8[6]),
        .I2(\ALUResult[6]_INST_0_i_3_n_0 ),
        .I3(\ALUResult[6]_INST_0_i_4_n_0 ),
        .I4(\addressM[0]_0 ),
        .I5(\addressM[0] ),
        .O(ALUResult[4]));
  LUT5 #(
    .INIT(32'h0808F808)) 
    \ALUResult[6]_INST_0_i_1 
       (.I0(rd20[6]),
        .I1(rd21),
        .I2(\addressM[1] ),
        .I3(Instr[22]),
        .I4(sel0[2]),
        .O(SrcB[6]));
  LUT4 #(
    .INIT(16'h4888)) 
    \ALUResult[6]_INST_0_i_10 
       (.I0(SrcB[6]),
        .I1(\addressM[16] ),
        .I2(rd10[6]),
        .I3(rd11),
        .O(\ALUResult[6]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \ALUResult[6]_INST_0_i_11 
       (.I0(SrcA[6]),
        .I1(SrcA[22]),
        .I2(SrcB[3]),
        .I3(SrcA[30]),
        .I4(SrcB[4]),
        .I5(SrcA[14]),
        .O(\ALUResult[6]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0011001500000000)) 
    \ALUResult[6]_INST_0_i_12 
       (.I0(\ALUResult[6]_INST_0_i_16_n_0 ),
        .I1(\addressM[1] ),
        .I2(immext[4]),
        .I3(\ALUResult[6]_INST_0_i_17_n_0 ),
        .I4(immext[3]),
        .I5(SrcA[0]),
        .O(\ALUResult[6]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0011001500000000)) 
    \ALUResult[6]_INST_0_i_13 
       (.I0(\ALUResult[6]_INST_0_i_16_n_0 ),
        .I1(\addressM[1] ),
        .I2(immext[4]),
        .I3(\ALUResult[6]_INST_0_i_17_n_0 ),
        .I4(immext[3]),
        .I5(SrcA[4]),
        .O(\ALUResult[6]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0011001500000000)) 
    \ALUResult[6]_INST_0_i_14 
       (.I0(\ALUResult[6]_INST_0_i_16_n_0 ),
        .I1(\addressM[1] ),
        .I2(immext[4]),
        .I3(\ALUResult[6]_INST_0_i_17_n_0 ),
        .I4(immext[3]),
        .I5(SrcA[2]),
        .O(\ALUResult[6]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0011001500000000)) 
    \ALUResult[6]_INST_0_i_15 
       (.I0(\ALUResult[6]_INST_0_i_16_n_0 ),
        .I1(\addressM[1] ),
        .I2(immext[4]),
        .I3(\ALUResult[6]_INST_0_i_17_n_0 ),
        .I4(immext[3]),
        .I5(SrcA[6]),
        .O(\ALUResult[6]_INST_0_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \ALUResult[6]_INST_0_i_16 
       (.I0(\addressM[1] ),
        .I1(rd21),
        .I2(rd20[4]),
        .O(\ALUResult[6]_INST_0_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \ALUResult[6]_INST_0_i_17 
       (.I0(\addressM[1] ),
        .I1(rd21),
        .I2(rd20[3]),
        .O(\ALUResult[6]_INST_0_i_17_n_0 ));
  LUT5 #(
    .INIT(32'hFFAEAEAE)) 
    \ALUResult[6]_INST_0_i_2 
       (.I0(\ALUResult[0]_INST_0_i_3_n_0 ),
        .I1(\ALUResult[6]_INST_0_i_5_n_0 ),
        .I2(\ALUResult[30]_INST_0_i_7_n_0 ),
        .I3(\ALUResult[7]_INST_0_i_5_n_0 ),
        .I4(\ALUResult[7]_INST_0_i_7_n_0 ),
        .O(data8[6]));
  LUT5 #(
    .INIT(32'h0000F222)) 
    \ALUResult[6]_INST_0_i_3 
       (.I0(\ALUResult[6]_INST_0_i_6_n_0 ),
        .I1(\ALUResult[30]_INST_0_i_7_n_0 ),
        .I2(\ALUResult[7]_INST_0_i_8_n_0 ),
        .I3(\ALUResult[7]_INST_0_i_7_n_0 ),
        .I4(\addressM[0] ),
        .O(\ALUResult[6]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAAAAAAAAA)) 
    \ALUResult[6]_INST_0_i_4 
       (.I0(\ALUResult[6]_INST_0_i_7_n_0 ),
        .I1(\ALUResult[7]_INST_0_i_12_n_0 ),
        .I2(\ALUResult[6]_INST_0_i_8_n_0 ),
        .I3(\ALUResult[6]_INST_0_i_9_n_0 ),
        .I4(\ALUResult[6]_INST_0_i_10_n_0 ),
        .I5(\addressM[16]_0 ),
        .O(\ALUResult[6]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[6]_INST_0_i_5 
       (.I0(\ALUResult[7]_INST_0_i_20_n_0 ),
        .I1(\ALUResult[7]_INST_0_i_21_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[7]_INST_0_i_19_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[6]_INST_0_i_11_n_0 ),
        .O(\ALUResult[6]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[6]_INST_0_i_6 
       (.I0(\ALUResult[8]_INST_0_i_10_n_0 ),
        .I1(\ALUResult[8]_INST_0_i_11_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[8]_INST_0_i_9_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[6]_INST_0_i_11_n_0 ),
        .O(\ALUResult[6]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000EAEAFF008080)) 
    \ALUResult[6]_INST_0_i_7 
       (.I0(SrcB[6]),
        .I1(rd11),
        .I2(rd10[6]),
        .I3(\addressM[29] [6]),
        .I4(\addressM[0]_1 ),
        .I5(\addressM[0]_2 ),
        .O(\ALUResult[6]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[6]_INST_0_i_8 
       (.I0(\ALUResult[6]_INST_0_i_12_n_0 ),
        .I1(\ALUResult[6]_INST_0_i_13_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[6]_INST_0_i_14_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[6]_INST_0_i_15_n_0 ),
        .O(\ALUResult[6]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \ALUResult[6]_INST_0_i_9 
       (.I0(\ALUResult[7]_INST_0_i_25_n_0 ),
        .I1(\ALUResult[0]_INST_0_i_10_n_0 ),
        .I2(\ALUResult[7]_INST_0_i_26_n_0 ),
        .I3(SrcB[0]),
        .I4(\ALUResult[30]_INST_0_i_10_0 ),
        .I5(\ALUResult[5]_INST_0_i_10_n_0 ),
        .O(\ALUResult[6]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FCFCAAAAF0F0)) 
    \ALUResult[7]_INST_0 
       (.I0(SrcB[7]),
        .I1(data8[7]),
        .I2(\ALUResult[7]_INST_0_i_3_n_0 ),
        .I3(\ALUResult[7]_INST_0_i_4_n_0 ),
        .I4(\addressM[0]_0 ),
        .I5(\addressM[0] ),
        .O(ALUResult[5]));
  LUT5 #(
    .INIT(32'h0808F808)) 
    \ALUResult[7]_INST_0_i_1 
       (.I0(rd20[7]),
        .I1(rd21),
        .I2(\addressM[1] ),
        .I3(Instr[23]),
        .I4(sel0[2]),
        .O(SrcB[7]));
  LUT4 #(
    .INIT(16'h4888)) 
    \ALUResult[7]_INST_0_i_10 
       (.I0(SrcB[7]),
        .I1(\addressM[16] ),
        .I2(rd10[7]),
        .I3(rd11),
        .O(\ALUResult[7]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \ALUResult[7]_INST_0_i_11 
       (.I0(\ALUResult[7]_INST_0_i_25_n_0 ),
        .I1(\ALUResult[0]_INST_0_i_10_n_0 ),
        .I2(\ALUResult[7]_INST_0_i_26_n_0 ),
        .I3(SrcB[0]),
        .I4(\ALUResult[30]_INST_0_i_10_0 ),
        .I5(\ALUResult[6]_INST_0_i_8_n_0 ),
        .O(\ALUResult[7]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \ALUResult[7]_INST_0_i_12 
       (.I0(\ALUResult[30]_INST_0_i_10_0 ),
        .I1(\ALUResult[7]_INST_0_i_26_n_0 ),
        .I2(\ALUResult[0]_INST_0_i_10_n_0 ),
        .I3(\ALUResult[0]_INST_0_i_9_n_0 ),
        .I4(\ALUResult[0]_INST_0_i_8_n_0 ),
        .I5(SrcB[0]),
        .O(\ALUResult[7]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    \ALUResult[7]_INST_0_i_13 
       (.I0(SrcA[1]),
        .I1(SrcB[2]),
        .I2(\ALUResult[31]_INST_0_i_10_n_0 ),
        .I3(SrcA[5]),
        .I4(SrcB[1]),
        .I5(\ALUResult[7]_INST_0_i_28_n_0 ),
        .O(\ALUResult[7]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \ALUResult[7]_INST_0_i_14 
       (.I0(SrcA[21]),
        .I1(SrcA[31]),
        .I2(SrcB[3]),
        .I3(SrcA[29]),
        .I4(SrcB[4]),
        .I5(SrcA[13]),
        .O(\ALUResult[7]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \ALUResult[7]_INST_0_i_15 
       (.I0(SrcA[17]),
        .I1(SrcA[31]),
        .I2(SrcB[3]),
        .I3(SrcA[25]),
        .I4(SrcB[4]),
        .I5(SrcA[9]),
        .O(\ALUResult[7]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \ALUResult[7]_INST_0_i_16 
       (.I0(SrcA[19]),
        .I1(SrcA[31]),
        .I2(SrcB[3]),
        .I3(SrcA[27]),
        .I4(SrcB[4]),
        .I5(SrcA[11]),
        .O(\ALUResult[7]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFCFCFA0A0C0CFA0A)) 
    \ALUResult[7]_INST_0_i_17 
       (.I0(SrcA[7]),
        .I1(SrcA[23]),
        .I2(SrcB[3]),
        .I3(SrcA[15]),
        .I4(SrcB[4]),
        .I5(SrcA[31]),
        .O(\ALUResult[7]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \ALUResult[7]_INST_0_i_18 
       (.I0(SrcA[22]),
        .I1(SrcA[31]),
        .I2(SrcB[3]),
        .I3(SrcA[30]),
        .I4(SrcB[4]),
        .I5(SrcA[14]),
        .O(\ALUResult[7]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \ALUResult[7]_INST_0_i_19 
       (.I0(SrcA[18]),
        .I1(SrcA[31]),
        .I2(SrcB[3]),
        .I3(SrcA[26]),
        .I4(SrcB[4]),
        .I5(SrcA[10]),
        .O(\ALUResult[7]_INST_0_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hFFAEAEAE)) 
    \ALUResult[7]_INST_0_i_2 
       (.I0(\ALUResult[0]_INST_0_i_3_n_0 ),
        .I1(\ALUResult[7]_INST_0_i_5_n_0 ),
        .I2(\ALUResult[30]_INST_0_i_7_n_0 ),
        .I3(\ALUResult[7]_INST_0_i_6_n_0 ),
        .I4(\ALUResult[7]_INST_0_i_7_n_0 ),
        .O(data8[7]));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \ALUResult[7]_INST_0_i_20 
       (.I0(SrcA[20]),
        .I1(SrcA[31]),
        .I2(SrcB[3]),
        .I3(SrcA[28]),
        .I4(SrcB[4]),
        .I5(SrcA[12]),
        .O(\ALUResult[7]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \ALUResult[7]_INST_0_i_21 
       (.I0(SrcA[16]),
        .I1(SrcA[31]),
        .I2(SrcB[3]),
        .I3(SrcA[24]),
        .I4(SrcB[4]),
        .I5(SrcA[8]),
        .O(\ALUResult[7]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h0000A0A0F000C0C0)) 
    \ALUResult[7]_INST_0_i_22 
       (.I0(rd10[29]),
        .I1(rd10[13]),
        .I2(rd11),
        .I3(rd10[21]),
        .I4(SrcB[3]),
        .I5(SrcB[4]),
        .O(\ALUResult[7]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h0000A0A0F000C0C0)) 
    \ALUResult[7]_INST_0_i_23 
       (.I0(rd10[25]),
        .I1(rd10[9]),
        .I2(rd11),
        .I3(rd10[17]),
        .I4(SrcB[3]),
        .I5(SrcB[4]),
        .O(\ALUResult[7]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h0000A0A0F000C0C0)) 
    \ALUResult[7]_INST_0_i_24 
       (.I0(rd10[27]),
        .I1(rd10[11]),
        .I2(rd11),
        .I3(rd10[19]),
        .I4(SrcB[3]),
        .I5(SrcB[4]),
        .O(\ALUResult[7]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \ALUResult[7]_INST_0_i_25 
       (.I0(\ALUResult[7]_INST_0_i_29_n_0 ),
        .I1(\ALUResult[0]_INST_0_i_16_n_0 ),
        .I2(\ALUResult[7]_INST_0_i_30_n_0 ),
        .I3(SrcB[16]),
        .I4(\ALUResult[7]_INST_0_i_31_n_0 ),
        .I5(\ALUResult[7]_INST_0_i_32_n_0 ),
        .O(\ALUResult[7]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \ALUResult[7]_INST_0_i_26 
       (.I0(\ALUResult[7]_INST_0_i_33_n_0 ),
        .I1(SrcB[15]),
        .I2(SrcB[17]),
        .I3(\ALUResult[0]_INST_0_i_17_n_0 ),
        .I4(\ALUResult[7]_INST_0_i_34_n_0 ),
        .I5(SrcB[11]),
        .O(\ALUResult[7]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h000B000800000000)) 
    \ALUResult[7]_INST_0_i_28 
       (.I0(rd10[3]),
        .I1(SrcB[2]),
        .I2(SrcB[4]),
        .I3(SrcB[3]),
        .I4(rd10[7]),
        .I5(rd11),
        .O(\ALUResult[7]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h050005FF053305FF)) 
    \ALUResult[7]_INST_0_i_29 
       (.I0(immext[27]),
        .I1(rd20[27]),
        .I2(immext[28]),
        .I3(\addressM[1] ),
        .I4(rd21),
        .I5(rd20[28]),
        .O(\ALUResult[7]_INST_0_i_29_n_0 ));
  LUT5 #(
    .INIT(32'h0000F222)) 
    \ALUResult[7]_INST_0_i_3 
       (.I0(\ALUResult[7]_INST_0_i_8_n_0 ),
        .I1(\ALUResult[30]_INST_0_i_7_n_0 ),
        .I2(\ALUResult[8]_INST_0_i_5_n_0 ),
        .I3(\ALUResult[7]_INST_0_i_7_n_0 ),
        .I4(\addressM[0] ),
        .O(\ALUResult[7]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \ALUResult[7]_INST_0_i_30 
       (.I0(\ALUResult[7]_INST_0_i_35_n_0 ),
        .I1(\ALUResult[7]_INST_0_i_25_0 ),
        .I2(\ALUResult[7]_INST_0_i_37_n_0 ),
        .I3(\ALUResult[7]_INST_0_i_25_1 ),
        .I4(\ALUResult[7]_INST_0_i_25_2 ),
        .I5(\ALUResult[7]_INST_0_i_40_n_0 ),
        .O(\ALUResult[7]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h050005FF053305FF)) 
    \ALUResult[7]_INST_0_i_31 
       (.I0(immext[21]),
        .I1(rd20[21]),
        .I2(immext[22]),
        .I3(\addressM[1] ),
        .I4(rd21),
        .I5(rd20[22]),
        .O(\ALUResult[7]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h050005FF053305FF)) 
    \ALUResult[7]_INST_0_i_32 
       (.I0(immext[23]),
        .I1(rd20[23]),
        .I2(immext[24]),
        .I3(\addressM[1] ),
        .I4(rd21),
        .I5(rd20[24]),
        .O(\ALUResult[7]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h050005FF053305FF)) 
    \ALUResult[7]_INST_0_i_33 
       (.I0(immext[18]),
        .I1(rd20[18]),
        .I2(immext[19]),
        .I3(\addressM[1] ),
        .I4(rd21),
        .I5(rd20[19]),
        .O(\ALUResult[7]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h0100011101110111)) 
    \ALUResult[7]_INST_0_i_34 
       (.I0(SrcB[10]),
        .I1(SrcB[9]),
        .I2(immext[20]),
        .I3(\addressM[1] ),
        .I4(rd21),
        .I5(rd20[20]),
        .O(\ALUResult[7]_INST_0_i_34_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \ALUResult[7]_INST_0_i_35 
       (.I0(\addressM[1] ),
        .I1(rd21),
        .I2(rd20[30]),
        .O(\ALUResult[7]_INST_0_i_35_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \ALUResult[7]_INST_0_i_37 
       (.I0(\addressM[1] ),
        .I1(rd21),
        .I2(rd20[29]),
        .O(\ALUResult[7]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFEFEAAAAAAAA)) 
    \ALUResult[7]_INST_0_i_4 
       (.I0(\ALUResult[7]_INST_0_i_9_n_0 ),
        .I1(\ALUResult[7]_INST_0_i_10_n_0 ),
        .I2(\ALUResult[7]_INST_0_i_11_n_0 ),
        .I3(\ALUResult[7]_INST_0_i_12_n_0 ),
        .I4(\ALUResult[7]_INST_0_i_13_n_0 ),
        .I5(\addressM[16]_0 ),
        .O(\ALUResult[7]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \ALUResult[7]_INST_0_i_40 
       (.I0(\addressM[1] ),
        .I1(rd21),
        .I2(rd20[31]),
        .O(\ALUResult[7]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[7]_INST_0_i_5 
       (.I0(\ALUResult[7]_INST_0_i_14_n_0 ),
        .I1(\ALUResult[7]_INST_0_i_15_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[7]_INST_0_i_16_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[7]_INST_0_i_17_n_0 ),
        .O(\ALUResult[7]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[7]_INST_0_i_6 
       (.I0(\ALUResult[7]_INST_0_i_18_n_0 ),
        .I1(\ALUResult[7]_INST_0_i_19_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[7]_INST_0_i_20_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[7]_INST_0_i_21_n_0 ),
        .O(\ALUResult[7]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \ALUResult[7]_INST_0_i_7 
       (.I0(\ALUResult[0]_INST_0_i_8_n_0 ),
        .I1(\ALUResult[0]_INST_0_i_9_n_0 ),
        .I2(\ALUResult[0]_INST_0_i_10_n_0 ),
        .I3(\ALUResult[0]_INST_0_i_11_n_0 ),
        .I4(\ALUResult[0]_INST_0_i_12_n_0 ),
        .I5(SrcB[0]),
        .O(\ALUResult[7]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[7]_INST_0_i_8 
       (.I0(\ALUResult[7]_INST_0_i_22_n_0 ),
        .I1(\ALUResult[7]_INST_0_i_23_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[7]_INST_0_i_24_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[7]_INST_0_i_17_n_0 ),
        .O(\ALUResult[7]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000EAEAFF008080)) 
    \ALUResult[7]_INST_0_i_9 
       (.I0(SrcB[7]),
        .I1(rd11),
        .I2(rd10[7]),
        .I3(\addressM[29] [7]),
        .I4(\addressM[0]_1 ),
        .I5(\addressM[0]_2 ),
        .O(\ALUResult[7]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0CCCCAAAACCCC)) 
    \ALUResult[8]_INST_0 
       (.I0(SrcB[8]),
        .I1(\ALUResult[8]_INST_0_i_2_n_0 ),
        .I2(\ALUResult[8]_INST_0_i_3_n_0 ),
        .I3(\ALUResult[8]_INST_0_i_4_n_0 ),
        .I4(\addressM[0]_0 ),
        .I5(\addressM[0] ),
        .O(\ALUResult[31]_INST_0_i_3 ));
  LUT5 #(
    .INIT(32'h0808F808)) 
    \ALUResult[8]_INST_0_i_1 
       (.I0(rd20[8]),
        .I1(rd21),
        .I2(\addressM[1] ),
        .I3(Instr[24]),
        .I4(sel0[2]),
        .O(SrcB[8]));
  LUT6 #(
    .INIT(64'h0000A0A0F000C0C0)) 
    \ALUResult[8]_INST_0_i_10 
       (.I0(rd10[28]),
        .I1(rd10[12]),
        .I2(rd11),
        .I3(rd10[20]),
        .I4(SrcB[3]),
        .I5(SrcB[4]),
        .O(\ALUResult[8]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000A0A0F000C0C0)) 
    \ALUResult[8]_INST_0_i_11 
       (.I0(rd10[24]),
        .I1(rd10[8]),
        .I2(rd11),
        .I3(rd10[16]),
        .I4(SrcB[3]),
        .I5(SrcB[4]),
        .O(\ALUResult[8]_INST_0_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \ALUResult[8]_INST_0_i_2 
       (.I0(\ALUResult[29]_INST_0_i_8_n_0 ),
        .I1(\ALUResult[9]_INST_0_i_5_n_0 ),
        .I2(\ALUResult[31]_INST_0_i_11_n_0 ),
        .I3(\ALUResult[8]_INST_0_i_5_n_0 ),
        .I4(\ALUResult[8]_INST_0_i_6_n_0 ),
        .O(\ALUResult[8]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000EAEAFF008080)) 
    \ALUResult[8]_INST_0_i_3 
       (.I0(SrcB[8]),
        .I1(rd11),
        .I2(rd10[8]),
        .I3(\addressM[29] [8]),
        .I4(\addressM[0]_1 ),
        .I5(\addressM[0]_2 ),
        .O(\ALUResult[8]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8A88A888A888A888)) 
    \ALUResult[8]_INST_0_i_4 
       (.I0(\addressM[16]_0 ),
        .I1(\ALUResult[8]_INST_0_i_7_n_0 ),
        .I2(SrcB[8]),
        .I3(\addressM[16] ),
        .I4(rd10[8]),
        .I5(rd11),
        .O(\ALUResult[8]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[8]_INST_0_i_5 
       (.I0(\ALUResult[8]_INST_0_i_8_n_0 ),
        .I1(\ALUResult[8]_INST_0_i_9_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[8]_INST_0_i_10_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[8]_INST_0_i_11_n_0 ),
        .O(\ALUResult[8]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8F8800000000)) 
    \ALUResult[8]_INST_0_i_6 
       (.I0(\ALUResult[7]_INST_0_i_7_n_0 ),
        .I1(\ALUResult[9]_INST_0_i_9_n_0 ),
        .I2(\ALUResult[30]_INST_0_i_7_n_0 ),
        .I3(\ALUResult[7]_INST_0_i_6_n_0 ),
        .I4(\ALUResult[0]_INST_0_i_3_n_0 ),
        .I5(\addressM[0] ),
        .O(\ALUResult[8]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00F2000000220000)) 
    \ALUResult[8]_INST_0_i_7 
       (.I0(\ALUResult[9]_INST_0_i_10_n_0 ),
        .I1(\ALUResult[30]_INST_0_i_7_n_0 ),
        .I2(\ALUResult[7]_INST_0_i_13_n_0 ),
        .I3(ALUControl),
        .I4(ALUControl__0),
        .I5(\ALUResult[7]_INST_0_i_7_n_0 ),
        .O(\ALUResult[8]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000A0A0F000C0C0)) 
    \ALUResult[8]_INST_0_i_8 
       (.I0(rd10[30]),
        .I1(rd10[14]),
        .I2(rd11),
        .I3(rd10[22]),
        .I4(SrcB[3]),
        .I5(SrcB[4]),
        .O(\ALUResult[8]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000A0A0F000C0C0)) 
    \ALUResult[8]_INST_0_i_9 
       (.I0(rd10[26]),
        .I1(rd10[10]),
        .I2(rd11),
        .I3(rd10[18]),
        .I4(SrcB[3]),
        .I5(SrcB[4]),
        .O(\ALUResult[8]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0CCCCAAAACCCC)) 
    \ALUResult[9]_INST_0 
       (.I0(SrcB[9]),
        .I1(\ALUResult[9]_INST_0_i_2_n_0 ),
        .I2(\ALUResult[9]_INST_0_i_3_n_0 ),
        .I3(\ALUResult[9]_INST_0_i_4_n_0 ),
        .I4(\addressM[0]_0 ),
        .I5(\addressM[0] ),
        .O(ALUResult[6]));
  LUT5 #(
    .INIT(32'h0808F808)) 
    \ALUResult[9]_INST_0_i_1 
       (.I0(rd20[9]),
        .I1(rd21),
        .I2(\addressM[1] ),
        .I3(Instr[25]),
        .I4(sel0[2]),
        .O(SrcB[9]));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    \ALUResult[9]_INST_0_i_10 
       (.I0(SrcA[2]),
        .I1(SrcB[2]),
        .I2(\ALUResult[31]_INST_0_i_10_n_0 ),
        .I3(SrcA[6]),
        .I4(SrcB[1]),
        .I5(\ALUResult[11]_INST_0_i_14_n_0 ),
        .O(\ALUResult[9]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hB080)) 
    \ALUResult[9]_INST_0_i_11 
       (.I0(rd10[29]),
        .I1(SrcB[4]),
        .I2(rd11),
        .I3(rd10[13]),
        .O(\ALUResult[9]_INST_0_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \ALUResult[9]_INST_0_i_2 
       (.I0(\ALUResult[29]_INST_0_i_8_n_0 ),
        .I1(\ALUResult[10]_INST_0_i_5_n_0 ),
        .I2(\ALUResult[31]_INST_0_i_11_n_0 ),
        .I3(\ALUResult[9]_INST_0_i_5_n_0 ),
        .I4(\ALUResult[9]_INST_0_i_6_n_0 ),
        .O(\ALUResult[9]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000EAEAFF008080)) 
    \ALUResult[9]_INST_0_i_3 
       (.I0(SrcB[9]),
        .I1(rd11),
        .I2(rd10[9]),
        .I3(\addressM[29] [9]),
        .I4(\addressM[0]_1 ),
        .I5(\addressM[0]_2 ),
        .O(\ALUResult[9]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8A88A888A888A888)) 
    \ALUResult[9]_INST_0_i_4 
       (.I0(\addressM[16]_0 ),
        .I1(\ALUResult[9]_INST_0_i_7_n_0 ),
        .I2(SrcB[9]),
        .I3(\addressM[16] ),
        .I4(rd10[9]),
        .I5(rd11),
        .O(\ALUResult[9]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[9]_INST_0_i_5 
       (.I0(\ALUResult[11]_INST_0_i_10_n_0 ),
        .I1(SrcB[1]),
        .I2(\ALUResult[9]_INST_0_i_8_n_0 ),
        .O(\ALUResult[9]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8F8800000000)) 
    \ALUResult[9]_INST_0_i_6 
       (.I0(\ALUResult[7]_INST_0_i_7_n_0 ),
        .I1(\ALUResult[10]_INST_0_i_9_n_0 ),
        .I2(\ALUResult[30]_INST_0_i_7_n_0 ),
        .I3(\ALUResult[9]_INST_0_i_9_n_0 ),
        .I4(\ALUResult[0]_INST_0_i_3_n_0 ),
        .I5(\addressM[0] ),
        .O(\ALUResult[9]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00F2000000220000)) 
    \ALUResult[9]_INST_0_i_7 
       (.I0(\ALUResult[10]_INST_0_i_10_n_0 ),
        .I1(\ALUResult[30]_INST_0_i_7_n_0 ),
        .I2(\ALUResult[9]_INST_0_i_10_n_0 ),
        .I3(ALUControl),
        .I4(ALUControl__0),
        .I5(\ALUResult[7]_INST_0_i_7_n_0 ),
        .O(\ALUResult[9]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h7250FFFF72500000)) 
    \ALUResult[9]_INST_0_i_8 
       (.I0(SrcB[3]),
        .I1(SrcB[4]),
        .I2(\ALUResult[9]_INST_0_i_11_n_0 ),
        .I3(SrcA[21]),
        .I4(SrcB[2]),
        .I5(\ALUResult[7]_INST_0_i_23_n_0 ),
        .O(\ALUResult[9]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[9]_INST_0_i_9 
       (.I0(\ALUResult[15]_INST_0_i_14_n_0 ),
        .I1(\ALUResult[7]_INST_0_i_16_n_0 ),
        .I2(SrcB[1]),
        .I3(\ALUResult[7]_INST_0_i_14_n_0 ),
        .I4(SrcB[2]),
        .I5(\ALUResult[7]_INST_0_i_15_n_0 ),
        .O(\ALUResult[9]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[0]_INST_0 
       (.I0(Instr[18]),
        .I1(Instr[20]),
        .I2(Instr[17]),
        .I3(Instr[16]),
        .I4(Instr[19]),
        .I5(rd20[0]),
        .O(WriteData[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[10]_INST_0 
       (.I0(Instr[18]),
        .I1(Instr[20]),
        .I2(Instr[17]),
        .I3(Instr[16]),
        .I4(Instr[19]),
        .I5(rd20[10]),
        .O(WriteData[10]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[11]_INST_0 
       (.I0(Instr[18]),
        .I1(Instr[20]),
        .I2(Instr[17]),
        .I3(Instr[16]),
        .I4(Instr[19]),
        .I5(rd20[11]),
        .O(WriteData[11]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[12]_INST_0 
       (.I0(Instr[18]),
        .I1(Instr[20]),
        .I2(Instr[17]),
        .I3(Instr[16]),
        .I4(Instr[19]),
        .I5(rd20[12]),
        .O(WriteData[12]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[13]_INST_0 
       (.I0(Instr[18]),
        .I1(Instr[20]),
        .I2(Instr[17]),
        .I3(Instr[16]),
        .I4(Instr[19]),
        .I5(rd20[13]),
        .O(WriteData[13]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[14]_INST_0 
       (.I0(Instr[18]),
        .I1(Instr[20]),
        .I2(Instr[17]),
        .I3(Instr[16]),
        .I4(Instr[19]),
        .I5(rd20[14]),
        .O(WriteData[14]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[15]_INST_0 
       (.I0(Instr[18]),
        .I1(Instr[20]),
        .I2(Instr[17]),
        .I3(Instr[16]),
        .I4(Instr[19]),
        .I5(rd20[15]),
        .O(WriteData[15]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[16]_INST_0 
       (.I0(Instr[18]),
        .I1(Instr[20]),
        .I2(Instr[17]),
        .I3(Instr[16]),
        .I4(Instr[19]),
        .I5(rd20[16]),
        .O(WriteData[16]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[17]_INST_0 
       (.I0(Instr[18]),
        .I1(Instr[20]),
        .I2(Instr[17]),
        .I3(Instr[16]),
        .I4(Instr[19]),
        .I5(rd20[17]),
        .O(WriteData[17]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[18]_INST_0 
       (.I0(Instr[18]),
        .I1(Instr[20]),
        .I2(Instr[17]),
        .I3(Instr[16]),
        .I4(Instr[19]),
        .I5(rd20[18]),
        .O(WriteData[18]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[19]_INST_0 
       (.I0(Instr[18]),
        .I1(Instr[20]),
        .I2(Instr[17]),
        .I3(Instr[16]),
        .I4(Instr[19]),
        .I5(rd20[19]),
        .O(WriteData[19]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[1]_INST_0 
       (.I0(Instr[18]),
        .I1(Instr[20]),
        .I2(Instr[17]),
        .I3(Instr[16]),
        .I4(Instr[19]),
        .I5(rd20[1]),
        .O(WriteData[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[20]_INST_0 
       (.I0(Instr[18]),
        .I1(Instr[20]),
        .I2(Instr[17]),
        .I3(Instr[16]),
        .I4(Instr[19]),
        .I5(rd20[20]),
        .O(WriteData[20]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[21]_INST_0 
       (.I0(Instr[18]),
        .I1(Instr[20]),
        .I2(Instr[17]),
        .I3(Instr[16]),
        .I4(Instr[19]),
        .I5(rd20[21]),
        .O(WriteData[21]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[22]_INST_0 
       (.I0(Instr[18]),
        .I1(Instr[20]),
        .I2(Instr[17]),
        .I3(Instr[16]),
        .I4(Instr[19]),
        .I5(rd20[22]),
        .O(WriteData[22]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[23]_INST_0 
       (.I0(Instr[18]),
        .I1(Instr[20]),
        .I2(Instr[17]),
        .I3(Instr[16]),
        .I4(Instr[19]),
        .I5(rd20[23]),
        .O(WriteData[23]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[24]_INST_0 
       (.I0(Instr[18]),
        .I1(Instr[20]),
        .I2(Instr[17]),
        .I3(Instr[16]),
        .I4(Instr[19]),
        .I5(rd20[24]),
        .O(WriteData[24]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[25]_INST_0 
       (.I0(Instr[18]),
        .I1(Instr[20]),
        .I2(Instr[17]),
        .I3(Instr[16]),
        .I4(Instr[19]),
        .I5(rd20[25]),
        .O(WriteData[25]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[26]_INST_0 
       (.I0(Instr[18]),
        .I1(Instr[20]),
        .I2(Instr[17]),
        .I3(Instr[16]),
        .I4(Instr[19]),
        .I5(rd20[26]),
        .O(WriteData[26]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[27]_INST_0 
       (.I0(Instr[18]),
        .I1(Instr[20]),
        .I2(Instr[17]),
        .I3(Instr[16]),
        .I4(Instr[19]),
        .I5(rd20[27]),
        .O(WriteData[27]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[28]_INST_0 
       (.I0(Instr[18]),
        .I1(Instr[20]),
        .I2(Instr[17]),
        .I3(Instr[16]),
        .I4(Instr[19]),
        .I5(rd20[28]),
        .O(WriteData[28]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[29]_INST_0 
       (.I0(Instr[18]),
        .I1(Instr[20]),
        .I2(Instr[17]),
        .I3(Instr[16]),
        .I4(Instr[19]),
        .I5(rd20[29]),
        .O(WriteData[29]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[2]_INST_0 
       (.I0(Instr[18]),
        .I1(Instr[20]),
        .I2(Instr[17]),
        .I3(Instr[16]),
        .I4(Instr[19]),
        .I5(rd20[2]),
        .O(WriteData[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[30]_INST_0 
       (.I0(Instr[18]),
        .I1(Instr[20]),
        .I2(Instr[17]),
        .I3(Instr[16]),
        .I4(Instr[19]),
        .I5(rd20[30]),
        .O(WriteData[30]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[31]_INST_0 
       (.I0(Instr[18]),
        .I1(Instr[20]),
        .I2(Instr[17]),
        .I3(Instr[16]),
        .I4(Instr[19]),
        .I5(rd20[31]),
        .O(WriteData[31]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[3]_INST_0 
       (.I0(Instr[18]),
        .I1(Instr[20]),
        .I2(Instr[17]),
        .I3(Instr[16]),
        .I4(Instr[19]),
        .I5(rd20[3]),
        .O(WriteData[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[4]_INST_0 
       (.I0(Instr[18]),
        .I1(Instr[20]),
        .I2(Instr[17]),
        .I3(Instr[16]),
        .I4(Instr[19]),
        .I5(rd20[4]),
        .O(WriteData[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[5]_INST_0 
       (.I0(Instr[18]),
        .I1(Instr[20]),
        .I2(Instr[17]),
        .I3(Instr[16]),
        .I4(Instr[19]),
        .I5(rd20[5]),
        .O(WriteData[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[6]_INST_0 
       (.I0(Instr[18]),
        .I1(Instr[20]),
        .I2(Instr[17]),
        .I3(Instr[16]),
        .I4(Instr[19]),
        .I5(rd20[6]),
        .O(WriteData[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[7]_INST_0 
       (.I0(Instr[18]),
        .I1(Instr[20]),
        .I2(Instr[17]),
        .I3(Instr[16]),
        .I4(Instr[19]),
        .I5(rd20[7]),
        .O(WriteData[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[8]_INST_0 
       (.I0(Instr[18]),
        .I1(Instr[20]),
        .I2(Instr[17]),
        .I3(Instr[16]),
        .I4(Instr[19]),
        .I5(rd20[8]),
        .O(WriteData[8]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \WriteData[9]_INST_0 
       (.I0(Instr[18]),
        .I1(Instr[20]),
        .I2(Instr[17]),
        .I3(Instr[16]),
        .I4(Instr[19]),
        .I5(rd20[9]),
        .O(WriteData[9]));
  LUT2 #(
    .INIT(4'h8)) 
    \q[11]_i_2 
       (.I0(immext[11]),
        .I1(PCSrc),
        .O(\q[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7737000000000000)) 
    \q[11]_i_3 
       (.I0(Instr[0]),
        .I1(Instr[1]),
        .I2(Instr[8]),
        .I3(Instr[9]),
        .I4(Instr[26]),
        .I5(PCSrc),
        .O(\q[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7737000000000000)) 
    \q[11]_i_4 
       (.I0(Instr[0]),
        .I1(Instr[1]),
        .I2(Instr[8]),
        .I3(Instr[9]),
        .I4(Instr[25]),
        .I5(PCSrc),
        .O(\q[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7737000000000000)) 
    \q[11]_i_5 
       (.I0(Instr[0]),
        .I1(Instr[1]),
        .I2(Instr[8]),
        .I3(Instr[9]),
        .I4(Instr[24]),
        .I5(PCSrc),
        .O(\q[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6F6F6F6060606F60)) 
    \q[11]_i_6 
       (.I0(immext[11]),
        .I1(\q_reg[11]_0 [3]),
        .I2(PCSrc),
        .I3(d2[10]),
        .I4(\q_reg[3]_0 ),
        .I5(\ALUResult[31]_INST_0_i_3_0 ),
        .O(\q[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6F6F6F6060606F60)) 
    \q[11]_i_7 
       (.I0(immext[10]),
        .I1(\q_reg[11]_0 [2]),
        .I2(PCSrc),
        .I3(d2[9]),
        .I4(\q_reg[3]_0 ),
        .I5(\ALUResult[31]_INST_0_i_3_1 ),
        .O(\q[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6F6F6F6060606F60)) 
    \q[11]_i_8 
       (.I0(immext[9]),
        .I1(\q_reg[11]_0 [1]),
        .I2(PCSrc),
        .I3(d2[8]),
        .I4(\q_reg[3]_0 ),
        .I5(ALUResult[6]),
        .O(\q[11]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6F6F6F6060606F60)) 
    \q[11]_i_9 
       (.I0(immext[8]),
        .I1(\q_reg[11]_0 [0]),
        .I2(PCSrc),
        .I3(d2[7]),
        .I4(\q_reg[3]_0 ),
        .I5(\ALUResult[31]_INST_0_i_3 ),
        .O(\q[11]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hEA00)) 
    \q[15]_i_2 
       (.I0(\q_reg[19]_0 ),
        .I1(\q_reg[19]_1 ),
        .I2(Instr[11]),
        .I3(PCSrc),
        .O(\q[15]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hEA00)) 
    \q[15]_i_3 
       (.I0(\q_reg[19]_0 ),
        .I1(\q_reg[19]_1 ),
        .I2(Instr[10]),
        .I3(PCSrc),
        .O(\q[15]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hEA00)) 
    \q[15]_i_4 
       (.I0(\q_reg[19]_0 ),
        .I1(\q_reg[19]_1 ),
        .I2(Instr[9]),
        .I3(PCSrc),
        .O(\q[15]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hEA00)) 
    \q[15]_i_5 
       (.I0(\q_reg[19]_0 ),
        .I1(\q_reg[19]_1 ),
        .I2(Instr[8]),
        .I3(PCSrc),
        .O(\q[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6F6F6F6060606F60)) 
    \q[15]_i_6 
       (.I0(immext[15]),
        .I1(\q_reg[15]_0 [3]),
        .I2(PCSrc),
        .I3(d2[14]),
        .I4(\q_reg[3]_0 ),
        .I5(ALUResult[10]),
        .O(\q[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6F6F6F6060606F60)) 
    \q[15]_i_7 
       (.I0(immext[14]),
        .I1(\q_reg[15]_0 [2]),
        .I2(PCSrc),
        .I3(d2[13]),
        .I4(\q_reg[3]_0 ),
        .I5(ALUResult[9]),
        .O(\q[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6F6F6F6060606F60)) 
    \q[15]_i_8 
       (.I0(immext[13]),
        .I1(\q_reg[15]_0 [1]),
        .I2(PCSrc),
        .I3(d2[12]),
        .I4(\q_reg[3]_0 ),
        .I5(ALUResult[8]),
        .O(\q[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6F6F6F6060606F60)) 
    \q[15]_i_9 
       (.I0(immext[12]),
        .I1(\q_reg[15]_0 [0]),
        .I2(PCSrc),
        .I3(d2[11]),
        .I4(\q_reg[3]_0 ),
        .I5(ALUResult[7]),
        .O(\q[15]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hEA00)) 
    \q[19]_i_2 
       (.I0(\q_reg[19]_0 ),
        .I1(\q_reg[19]_1 ),
        .I2(Instr[15]),
        .I3(PCSrc),
        .O(\q[19]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hEA00)) 
    \q[19]_i_3 
       (.I0(\q_reg[19]_0 ),
        .I1(\q_reg[19]_1 ),
        .I2(Instr[14]),
        .I3(PCSrc),
        .O(\q[19]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hEA00)) 
    \q[19]_i_4 
       (.I0(\q_reg[19]_0 ),
        .I1(\q_reg[19]_1 ),
        .I2(Instr[13]),
        .I3(PCSrc),
        .O(\q[19]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hEA00)) 
    \q[19]_i_5 
       (.I0(\q_reg[19]_0 ),
        .I1(\q_reg[19]_1 ),
        .I2(Instr[12]),
        .I3(PCSrc),
        .O(\q[19]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6F6F6F6060606F60)) 
    \q[19]_i_6 
       (.I0(immext[19]),
        .I1(\q_reg[19]_2 [3]),
        .I2(PCSrc),
        .I3(d2[18]),
        .I4(\q_reg[3]_0 ),
        .I5(ALUResult[14]),
        .O(\q[19]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6F6F6F6060606F60)) 
    \q[19]_i_7 
       (.I0(immext[18]),
        .I1(\q_reg[19]_2 [2]),
        .I2(PCSrc),
        .I3(d2[17]),
        .I4(\q_reg[3]_0 ),
        .I5(ALUResult[13]),
        .O(\q[19]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6F6F6F6060606F60)) 
    \q[19]_i_8 
       (.I0(immext[17]),
        .I1(\q_reg[19]_2 [1]),
        .I2(PCSrc),
        .I3(d2[16]),
        .I4(\q_reg[3]_0 ),
        .I5(ALUResult[12]),
        .O(\q[19]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6F6F6F6060606F60)) 
    \q[19]_i_9 
       (.I0(immext[16]),
        .I1(\q_reg[19]_2 [0]),
        .I2(PCSrc),
        .I3(d2[15]),
        .I4(\q_reg[3]_0 ),
        .I5(ALUResult[11]),
        .O(\q[19]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hF2220000)) 
    \q[23]_i_2 
       (.I0(Instr[27]),
        .I1(sel0[2]),
        .I2(\q_reg[31]_0 ),
        .I3(Instr[19]),
        .I4(PCSrc),
        .O(\q[23]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF2220000)) 
    \q[23]_i_3 
       (.I0(Instr[27]),
        .I1(sel0[2]),
        .I2(\q_reg[31]_0 ),
        .I3(Instr[18]),
        .I4(PCSrc),
        .O(\q[23]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF2220000)) 
    \q[23]_i_4 
       (.I0(Instr[27]),
        .I1(sel0[2]),
        .I2(\q_reg[31]_0 ),
        .I3(Instr[17]),
        .I4(PCSrc),
        .O(\q[23]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hF2220000)) 
    \q[23]_i_5 
       (.I0(Instr[27]),
        .I1(sel0[2]),
        .I2(\q_reg[31]_0 ),
        .I3(Instr[16]),
        .I4(PCSrc),
        .O(\q[23]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6F6F6F6060606F60)) 
    \q[23]_i_6 
       (.I0(immext[23]),
        .I1(\q_reg[23]_0 [3]),
        .I2(PCSrc),
        .I3(d2[22]),
        .I4(\q_reg[3]_0 ),
        .I5(ALUResult[18]),
        .O(\q[23]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6F6F6F6060606F60)) 
    \q[23]_i_7 
       (.I0(immext[22]),
        .I1(\q_reg[23]_0 [2]),
        .I2(PCSrc),
        .I3(d2[21]),
        .I4(\q_reg[3]_0 ),
        .I5(ALUResult[17]),
        .O(\q[23]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6F6F6F6060606F60)) 
    \q[23]_i_8 
       (.I0(immext[21]),
        .I1(\q_reg[23]_0 [1]),
        .I2(PCSrc),
        .I3(d2[20]),
        .I4(\q_reg[3]_0 ),
        .I5(ALUResult[16]),
        .O(\q[23]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6F6F6F6060606F60)) 
    \q[23]_i_9 
       (.I0(immext[20]),
        .I1(\q_reg[23]_0 [0]),
        .I2(PCSrc),
        .I3(d2[19]),
        .I4(\q_reg[3]_0 ),
        .I5(ALUResult[15]),
        .O(\q[23]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hF2220000)) 
    \q[27]_i_2 
       (.I0(Instr[27]),
        .I1(sel0[2]),
        .I2(\q_reg[31]_0 ),
        .I3(Instr[23]),
        .I4(PCSrc),
        .O(\q[27]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF2220000)) 
    \q[27]_i_3 
       (.I0(Instr[27]),
        .I1(sel0[2]),
        .I2(\q_reg[31]_0 ),
        .I3(Instr[22]),
        .I4(PCSrc),
        .O(\q[27]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF2220000)) 
    \q[27]_i_4 
       (.I0(Instr[27]),
        .I1(sel0[2]),
        .I2(\q_reg[31]_0 ),
        .I3(Instr[21]),
        .I4(PCSrc),
        .O(\q[27]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hF2220000)) 
    \q[27]_i_5 
       (.I0(Instr[27]),
        .I1(sel0[2]),
        .I2(\q_reg[31]_0 ),
        .I3(Instr[20]),
        .I4(PCSrc),
        .O(\q[27]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6F6F6F6060606F60)) 
    \q[27]_i_6 
       (.I0(immext[27]),
        .I1(\q_reg[27]_0 [3]),
        .I2(PCSrc),
        .I3(d2[26]),
        .I4(\q_reg[3]_0 ),
        .I5(ALUResult[22]),
        .O(\q[27]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6F6F6F6060606F60)) 
    \q[27]_i_7 
       (.I0(immext[26]),
        .I1(\q_reg[27]_0 [2]),
        .I2(PCSrc),
        .I3(d2[25]),
        .I4(\q_reg[3]_0 ),
        .I5(ALUResult[21]),
        .O(\q[27]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6F6F6F6060606F60)) 
    \q[27]_i_8 
       (.I0(immext[25]),
        .I1(\q_reg[27]_0 [1]),
        .I2(PCSrc),
        .I3(d2[24]),
        .I4(\q_reg[3]_0 ),
        .I5(ALUResult[20]),
        .O(\q[27]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6F6F6F6060606F60)) 
    \q[27]_i_9 
       (.I0(immext[24]),
        .I1(\q_reg[27]_0 [0]),
        .I2(PCSrc),
        .I3(d2[23]),
        .I4(\q_reg[3]_0 ),
        .I5(ALUResult[19]),
        .O(\q[27]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \q[31]_i_16 
       (.I0(\q[31]_i_19_n_0 ),
        .I1(\q[31]_i_9_0 ),
        .I2(\q[31]_i_20_n_0 ),
        .I3(\ALUResult[31]_INST_0_i_6_0 ),
        .I4(\q[31]_i_21_n_0 ),
        .I5(\q[31]_i_22_n_0 ),
        .O(\q[31]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'hA53C0000)) 
    \q[31]_i_17 
       (.I0(CO),
        .I1(LT),
        .I2(Instr[8]),
        .I3(Instr[9]),
        .I4(Instr[10]),
        .O(\q[31]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \q[31]_i_19 
       (.I0(ALUResult[17]),
        .I1(ALUResult[18]),
        .I2(\q[31]_i_23_n_0 ),
        .I3(ALUResult[15]),
        .I4(ALUResult[16]),
        .I5(\q[31]_i_24_n_0 ),
        .O(\q[31]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hF2220000)) 
    \q[31]_i_2 
       (.I0(Instr[27]),
        .I1(sel0[2]),
        .I2(\q_reg[31]_0 ),
        .I3(Instr[26]),
        .I4(PCSrc),
        .O(\q[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \q[31]_i_20 
       (.I0(ALUResult[19]),
        .I1(ALUResult[20]),
        .I2(ALUResult[11]),
        .I3(ALUResult[12]),
        .I4(ALUResult[14]),
        .I5(ALUResult[13]),
        .O(\q[31]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \q[31]_i_21 
       (.I0(ALUResult[6]),
        .I1(ALUResult[7]),
        .I2(ALUResult[8]),
        .I3(ALUResult[9]),
        .I4(\ALUResult[1]_INST_0_i_4_0 ),
        .O(\q[31]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \q[31]_i_22 
       (.I0(\q[31]_i_25_n_0 ),
        .I1(\ALUResult[31]_INST_0_i_3 ),
        .I2(\ALUResult[31]_INST_0_i_3_0 ),
        .I3(\ALUResult[31]_INST_0_i_3_1 ),
        .I4(\ALUResult[0]_INST_0_i_3_0 ),
        .I5(\q[31]_i_26_n_0 ),
        .O(\q[31]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000030103)) 
    \q[31]_i_23 
       (.I0(\q[31]_i_27_n_0 ),
        .I1(\q[31]_i_28_n_0 ),
        .I2(\q[31]_i_29_n_0 ),
        .I3(\q[31]_i_25_0 ),
        .I4(\q[31]_i_31_n_0 ),
        .I5(\q[31]_i_32_n_0 ),
        .O(\q[31]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000030103)) 
    \q[31]_i_24 
       (.I0(\q[31]_i_33_n_0 ),
        .I1(\q[31]_i_34_n_0 ),
        .I2(\q[31]_i_35_n_0 ),
        .I3(\q[31]_i_25_0 ),
        .I4(\q[31]_i_36_n_0 ),
        .I5(\q[31]_i_37_n_0 ),
        .O(\q[31]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \q[31]_i_25 
       (.I0(ALUResult[2]),
        .I1(ALUResult[1]),
        .I2(\q[31]_i_38_n_0 ),
        .I3(\q[31]_i_39_n_0 ),
        .I4(\q[31]_i_40_n_0 ),
        .I5(\q[31]_i_41_n_0 ),
        .O(\q[31]_i_25_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \q[31]_i_26 
       (.I0(ALUResult[5]),
        .I1(ALUResult[4]),
        .I2(ALUResult[3]),
        .O(\q[31]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBAEAAAAAAAAA)) 
    \q[31]_i_27 
       (.I0(\ALUResult[28]_INST_0_i_3_n_0 ),
        .I1(SrcA[28]),
        .I2(\addressM[16] ),
        .I3(SrcB[28]),
        .I4(\ALUResult[28]_INST_0_i_7_n_0 ),
        .I5(\addressM[16]_0 ),
        .O(\q[31]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFEAEAEA)) 
    \q[31]_i_28 
       (.I0(\ALUResult[28]_INST_0_i_6_n_0 ),
        .I1(\ALUResult[28]_INST_0_i_5_n_0 ),
        .I2(\ALUResult[31]_INST_0_i_11_n_0 ),
        .I3(\ALUResult[29]_INST_0_i_5_n_0 ),
        .I4(\ALUResult[29]_INST_0_i_8_n_0 ),
        .I5(\addressM[0]_0 ),
        .O(\q[31]_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \q[31]_i_29 
       (.I0(\addressM[0]_0 ),
        .I1(\addressM[0] ),
        .I2(SrcB[28]),
        .O(\q[31]_i_29_n_0 ));
  LUT5 #(
    .INIT(32'hF2220000)) 
    \q[31]_i_3 
       (.I0(Instr[27]),
        .I1(sel0[2]),
        .I2(\q_reg[31]_0 ),
        .I3(Instr[25]),
        .I4(PCSrc),
        .O(\q[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBAEAAAAAAAAA)) 
    \q[31]_i_31 
       (.I0(\ALUResult[29]_INST_0_i_3_n_0 ),
        .I1(SrcA[29]),
        .I2(\addressM[16] ),
        .I3(SrcB[29]),
        .I4(\ALUResult[29]_INST_0_i_12_n_0 ),
        .I5(\addressM[16]_0 ),
        .O(\q[31]_i_31_n_0 ));
  LUT5 #(
    .INIT(32'h00EEF0AA)) 
    \q[31]_i_32 
       (.I0(\q[31]_i_42_n_0 ),
        .I1(data8[29]),
        .I2(SrcB[29]),
        .I3(\addressM[0]_0 ),
        .I4(\addressM[0] ),
        .O(\q[31]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBAEAAAAAAAAA)) 
    \q[31]_i_33 
       (.I0(\ALUResult[26]_INST_0_i_3_n_0 ),
        .I1(SrcA[26]),
        .I2(\addressM[16] ),
        .I3(SrcB[26]),
        .I4(\ALUResult[26]_INST_0_i_7_n_0 ),
        .I5(\addressM[16]_0 ),
        .O(\q[31]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFEAEAEA)) 
    \q[31]_i_34 
       (.I0(\ALUResult[26]_INST_0_i_6_n_0 ),
        .I1(\ALUResult[26]_INST_0_i_5_n_0 ),
        .I2(\ALUResult[31]_INST_0_i_11_n_0 ),
        .I3(\ALUResult[27]_INST_0_i_5_n_0 ),
        .I4(\ALUResult[29]_INST_0_i_8_n_0 ),
        .I5(\addressM[0]_0 ),
        .O(\q[31]_i_34_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \q[31]_i_35 
       (.I0(\addressM[0]_0 ),
        .I1(\addressM[0] ),
        .I2(SrcB[26]),
        .O(\q[31]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBAEAAAAAAAAA)) 
    \q[31]_i_36 
       (.I0(\ALUResult[27]_INST_0_i_3_n_0 ),
        .I1(SrcA[27]),
        .I2(\addressM[16] ),
        .I3(SrcB[27]),
        .I4(\ALUResult[27]_INST_0_i_7_n_0 ),
        .I5(\addressM[16]_0 ),
        .O(\q[31]_i_36_n_0 ));
  LUT5 #(
    .INIT(32'h00EEF0AA)) 
    \q[31]_i_37 
       (.I0(\q[31]_i_44_n_0 ),
        .I1(data8[27]),
        .I2(SrcB[27]),
        .I3(\addressM[0]_0 ),
        .I4(\addressM[0] ),
        .O(\q[31]_i_37_n_0 ));
  LUT5 #(
    .INIT(32'h00EEF0AA)) 
    \q[31]_i_38 
       (.I0(\q[31]_i_46_n_0 ),
        .I1(data8[2]),
        .I2(SrcB[2]),
        .I3(\addressM[0]_0 ),
        .I4(\addressM[0] ),
        .O(\q[31]_i_38_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA8880)) 
    \q[31]_i_39 
       (.I0(\q[31]_i_25_0 ),
        .I1(\addressM[16]_0 ),
        .I2(\q[31]_i_48_n_0 ),
        .I3(\q[31]_i_49_n_0 ),
        .I4(\ALUResult[2]_INST_0_i_3_n_0 ),
        .O(\q[31]_i_39_n_0 ));
  LUT5 #(
    .INIT(32'hF2220000)) 
    \q[31]_i_4 
       (.I0(Instr[27]),
        .I1(sel0[2]),
        .I2(\q_reg[31]_0 ),
        .I3(Instr[24]),
        .I4(PCSrc),
        .O(\q[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00EEF0AA)) 
    \q[31]_i_40 
       (.I0(\q[31]_i_50_n_0 ),
        .I1(data8[15]),
        .I2(SrcB[15]),
        .I3(\addressM[0]_0 ),
        .I4(\addressM[0] ),
        .O(\q[31]_i_40_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA8880)) 
    \q[31]_i_41 
       (.I0(\q[31]_i_25_0 ),
        .I1(\addressM[16]_0 ),
        .I2(\ALUResult[15]_INST_0_i_7_n_0 ),
        .I3(\q[31]_i_52_n_0 ),
        .I4(\ALUResult[15]_INST_0_i_3_n_0 ),
        .O(\q[31]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h000000008080FF80)) 
    \q[31]_i_42 
       (.I0(\ALUResult[7]_INST_0_i_7_n_0 ),
        .I1(\ALUResult[29]_INST_0_i_7_n_0 ),
        .I2(\ALUResult[29]_INST_0_i_6_n_0 ),
        .I3(\ALUResult[29]_INST_0_i_5_n_0 ),
        .I4(\ALUResult[30]_INST_0_i_7_n_0 ),
        .I5(\addressM[0] ),
        .O(\q[31]_i_42_n_0 ));
  LUT5 #(
    .INIT(32'hFFAEAEAE)) 
    \q[31]_i_43 
       (.I0(\ALUResult[0]_INST_0_i_3_n_0 ),
        .I1(\ALUResult[29]_INST_0_i_14_n_0 ),
        .I2(\ALUResult[30]_INST_0_i_7_n_0 ),
        .I3(\ALUResult[30]_INST_0_i_8_n_0 ),
        .I4(\ALUResult[7]_INST_0_i_7_n_0 ),
        .O(data8[29]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h0000F222)) 
    \q[31]_i_44 
       (.I0(\ALUResult[27]_INST_0_i_5_n_0 ),
        .I1(\ALUResult[30]_INST_0_i_7_n_0 ),
        .I2(\ALUResult[28]_INST_0_i_5_n_0 ),
        .I3(\ALUResult[7]_INST_0_i_7_n_0 ),
        .I4(\addressM[0] ),
        .O(\q[31]_i_44_n_0 ));
  LUT5 #(
    .INIT(32'hFFAEAEAE)) 
    \q[31]_i_45 
       (.I0(\ALUResult[0]_INST_0_i_3_n_0 ),
        .I1(\ALUResult[27]_INST_0_i_8_n_0 ),
        .I2(\ALUResult[30]_INST_0_i_7_n_0 ),
        .I3(\ALUResult[28]_INST_0_i_8_n_0 ),
        .I4(\ALUResult[7]_INST_0_i_7_n_0 ),
        .O(data8[27]));
  LUT5 #(
    .INIT(32'h0000F222)) 
    \q[31]_i_46 
       (.I0(\ALUResult[2]_INST_0_i_6_n_0 ),
        .I1(\ALUResult[30]_INST_0_i_7_n_0 ),
        .I2(\ALUResult[3]_INST_0_i_7_n_0 ),
        .I3(\ALUResult[7]_INST_0_i_7_n_0 ),
        .I4(\addressM[0] ),
        .O(\q[31]_i_46_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hFFAEAEAE)) 
    \q[31]_i_47 
       (.I0(\ALUResult[0]_INST_0_i_3_n_0 ),
        .I1(\ALUResult[2]_INST_0_i_11_n_0 ),
        .I2(\ALUResult[30]_INST_0_i_7_n_0 ),
        .I3(\ALUResult[3]_INST_0_i_6_n_0 ),
        .I4(\ALUResult[7]_INST_0_i_7_n_0 ),
        .O(data8[2]));
  LUT6 #(
    .INIT(64'hFFFF088808880888)) 
    \q[31]_i_48 
       (.I0(SrcB[2]),
        .I1(\addressM[16] ),
        .I2(rd10[2]),
        .I3(rd11),
        .I4(\ALUResult[3]_INST_0_i_13_n_0 ),
        .I5(\ALUResult[7]_INST_0_i_12_n_0 ),
        .O(\q[31]_i_48_n_0 ));
  LUT6 #(
    .INIT(64'h000088880000F888)) 
    \q[31]_i_49 
       (.I0(\addressM[16] ),
        .I1(SrcA[2]),
        .I2(\ALUResult[31]_INST_0_i_19_n_0 ),
        .I3(\q[31]_i_53_n_0 ),
        .I4(SrcB[2]),
        .I5(SrcB[1]),
        .O(\q[31]_i_49_n_0 ));
  LUT5 #(
    .INIT(32'h0000F222)) 
    \q[31]_i_50 
       (.I0(\ALUResult[15]_INST_0_i_5_n_0 ),
        .I1(\ALUResult[30]_INST_0_i_7_n_0 ),
        .I2(\ALUResult[16]_INST_0_i_5_n_0 ),
        .I3(\ALUResult[7]_INST_0_i_7_n_0 ),
        .I4(\addressM[0] ),
        .O(\q[31]_i_50_n_0 ));
  LUT5 #(
    .INIT(32'hFFAEAEAE)) 
    \q[31]_i_51 
       (.I0(\ALUResult[0]_INST_0_i_3_n_0 ),
        .I1(\ALUResult[15]_INST_0_i_12_n_0 ),
        .I2(\ALUResult[30]_INST_0_i_7_n_0 ),
        .I3(\ALUResult[16]_INST_0_i_12_n_0 ),
        .I4(\ALUResult[7]_INST_0_i_7_n_0 ),
        .O(data8[15]));
  LUT4 #(
    .INIT(16'h4888)) 
    \q[31]_i_52 
       (.I0(SrcB[15]),
        .I1(\addressM[16] ),
        .I2(rd10[15]),
        .I3(rd11),
        .O(\q[31]_i_52_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \q[31]_i_53 
       (.I0(SrcB[4]),
        .I1(SrcB[3]),
        .I2(rd10[1]),
        .I3(rd11),
        .O(\q[31]_i_53_n_0 ));
  LUT6 #(
    .INIT(64'h6F6F6F6060606F60)) 
    \q[31]_i_8 
       (.I0(immext[28]),
        .I1(\q_reg[31]_1 ),
        .I2(PCSrc),
        .I3(d2[27]),
        .I4(\q_reg[3]_0 ),
        .I5(ALUResult[23]),
        .O(\q[31]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFABAEAAAAAAAA)) 
    \q[31]_i_9 
       (.I0(\q[31]_i_5 ),
        .I1(Instr[8]),
        .I2(Instr[10]),
        .I3(\q[31]_i_16_n_0 ),
        .I4(\q[31]_i_17_n_0 ),
        .I5(\q[31]_i_5_0 ),
        .O(PCSrc));
  LUT6 #(
    .INIT(64'hDD14C90000000000)) 
    \q[3]_i_2 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(Instr[19]),
        .I4(Instr[6]),
        .I5(PCSrc),
        .O(\q[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hDD14C90000000000)) 
    \q[3]_i_3 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(Instr[18]),
        .I4(Instr[5]),
        .I5(PCSrc),
        .O(\q[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hDD14C90000000000)) 
    \q[3]_i_4 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(Instr[17]),
        .I4(Instr[4]),
        .I5(PCSrc),
        .O(\q[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h80B2809000000000)) 
    \q[3]_i_5 
       (.I0(sel0[0]),
        .I1(sel0[2]),
        .I2(Instr[16]),
        .I3(sel0[1]),
        .I4(Instr[3]),
        .I5(PCSrc),
        .O(\q[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6F6F6F6060606F60)) 
    \q[3]_i_6 
       (.I0(immext[3]),
        .I1(DI[3]),
        .I2(PCSrc),
        .I3(d2[2]),
        .I4(\q_reg[3]_0 ),
        .I5(ALUResult[1]),
        .O(\q[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6F6F6F6060606F60)) 
    \q[3]_i_7 
       (.I0(immext[2]),
        .I1(DI[2]),
        .I2(PCSrc),
        .I3(d2[1]),
        .I4(\q_reg[3]_0 ),
        .I5(ALUResult[0]),
        .O(\q[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6F6F6F6060606F60)) 
    \q[3]_i_8 
       (.I0(immext[1]),
        .I1(DI[1]),
        .I2(PCSrc),
        .I3(d2[0]),
        .I4(\q_reg[3]_0 ),
        .I5(\ALUResult[1]_INST_0_i_4_0 ),
        .O(\q[3]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h55CFAAC0)) 
    \q[3]_i_9 
       (.I0(immext[0]),
        .I1(\ALUResult[0]_INST_0_i_3_0 ),
        .I2(\q_reg[3]_0 ),
        .I3(PCSrc),
        .I4(DI[0]),
        .O(\q[3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h7737000000000000)) 
    \q[7]_i_2 
       (.I0(Instr[0]),
        .I1(Instr[1]),
        .I2(Instr[8]),
        .I3(Instr[9]),
        .I4(Instr[23]),
        .I5(PCSrc),
        .O(\q[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7737000000000000)) 
    \q[7]_i_3 
       (.I0(Instr[0]),
        .I1(Instr[1]),
        .I2(Instr[8]),
        .I3(Instr[9]),
        .I4(Instr[22]),
        .I5(PCSrc),
        .O(\q[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7737000000000000)) 
    \q[7]_i_4 
       (.I0(Instr[0]),
        .I1(Instr[1]),
        .I2(Instr[8]),
        .I3(Instr[9]),
        .I4(Instr[21]),
        .I5(PCSrc),
        .O(\q[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hDD14C90000000000)) 
    \q[7]_i_5 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(Instr[20]),
        .I4(Instr[7]),
        .I5(PCSrc),
        .O(\q[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6F6F6F6060606F60)) 
    \q[7]_i_6 
       (.I0(immext[7]),
        .I1(\q_reg[7]_0 [3]),
        .I2(PCSrc),
        .I3(d2[6]),
        .I4(\q_reg[3]_0 ),
        .I5(ALUResult[5]),
        .O(\q[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6F6F6F6060606F60)) 
    \q[7]_i_7 
       (.I0(immext[6]),
        .I1(\q_reg[7]_0 [2]),
        .I2(PCSrc),
        .I3(d2[5]),
        .I4(\q_reg[3]_0 ),
        .I5(ALUResult[4]),
        .O(\q[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6F6F6F6060606F60)) 
    \q[7]_i_8 
       (.I0(immext[5]),
        .I1(\q_reg[7]_0 [1]),
        .I2(PCSrc),
        .I3(d2[4]),
        .I4(\q_reg[3]_0 ),
        .I5(ALUResult[3]),
        .O(\q[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6F6F6F6060606F60)) 
    \q[7]_i_9 
       (.I0(immext[4]),
        .I1(\q_reg[7]_0 [0]),
        .I2(PCSrc),
        .I3(d2[3]),
        .I4(\q_reg[3]_0 ),
        .I5(ALUResult[2]),
        .O(\q[7]_i_9_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \q_reg[11]_i_1 
       (.CI(\q_reg[7]_i_1_n_0 ),
        .CO({\q_reg[11]_i_1_n_0 ,\q_reg[11]_i_1_n_1 ,\q_reg[11]_i_1_n_2 ,\q_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\q[11]_i_2_n_0 ,\q[11]_i_3_n_0 ,\q[11]_i_4_n_0 ,\q[11]_i_5_n_0 }),
        .O(\q_reg[11] ),
        .S({\q[11]_i_6_n_0 ,\q[11]_i_7_n_0 ,\q[11]_i_8_n_0 ,\q[11]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \q_reg[15]_i_1 
       (.CI(\q_reg[11]_i_1_n_0 ),
        .CO({\q_reg[15]_i_1_n_0 ,\q_reg[15]_i_1_n_1 ,\q_reg[15]_i_1_n_2 ,\q_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\q[15]_i_2_n_0 ,\q[15]_i_3_n_0 ,\q[15]_i_4_n_0 ,\q[15]_i_5_n_0 }),
        .O(\q_reg[15] ),
        .S({\q[15]_i_6_n_0 ,\q[15]_i_7_n_0 ,\q[15]_i_8_n_0 ,\q[15]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \q_reg[19]_i_1 
       (.CI(\q_reg[15]_i_1_n_0 ),
        .CO({\q_reg[19]_i_1_n_0 ,\q_reg[19]_i_1_n_1 ,\q_reg[19]_i_1_n_2 ,\q_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\q[19]_i_2_n_0 ,\q[19]_i_3_n_0 ,\q[19]_i_4_n_0 ,\q[19]_i_5_n_0 }),
        .O(\q_reg[19] ),
        .S({\q[19]_i_6_n_0 ,\q[19]_i_7_n_0 ,\q[19]_i_8_n_0 ,\q[19]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \q_reg[23]_i_1 
       (.CI(\q_reg[19]_i_1_n_0 ),
        .CO({\q_reg[23]_i_1_n_0 ,\q_reg[23]_i_1_n_1 ,\q_reg[23]_i_1_n_2 ,\q_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\q[23]_i_2_n_0 ,\q[23]_i_3_n_0 ,\q[23]_i_4_n_0 ,\q[23]_i_5_n_0 }),
        .O(\q_reg[23] ),
        .S({\q[23]_i_6_n_0 ,\q[23]_i_7_n_0 ,\q[23]_i_8_n_0 ,\q[23]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \q_reg[27]_i_1 
       (.CI(\q_reg[23]_i_1_n_0 ),
        .CO({\q_reg[27]_i_1_n_0 ,\q_reg[27]_i_1_n_1 ,\q_reg[27]_i_1_n_2 ,\q_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\q[27]_i_2_n_0 ,\q[27]_i_3_n_0 ,\q[27]_i_4_n_0 ,\q[27]_i_5_n_0 }),
        .O(\q_reg[27] ),
        .S({\q[27]_i_6_n_0 ,\q[27]_i_7_n_0 ,\q[27]_i_8_n_0 ,\q[27]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \q_reg[31]_i_1 
       (.CI(\q_reg[27]_i_1_n_0 ),
        .CO({\NLW_q_reg[31]_i_1_CO_UNCONNECTED [3],\q_reg[31]_i_1_n_1 ,\q_reg[31]_i_1_n_2 ,\q_reg[31]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\q[31]_i_2_n_0 ,\q[31]_i_3_n_0 ,\q[31]_i_4_n_0 }),
        .O(\q_reg[31] ),
        .S({S,\q[31]_i_8_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \q_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\q_reg[3]_i_1_n_0 ,\q_reg[3]_i_1_n_1 ,\q_reg[3]_i_1_n_2 ,\q_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\q[3]_i_2_n_0 ,\q[3]_i_3_n_0 ,\q[3]_i_4_n_0 ,\q[3]_i_5_n_0 }),
        .O(\q_reg[3] ),
        .S({\q[3]_i_6_n_0 ,\q[3]_i_7_n_0 ,\q[3]_i_8_n_0 ,\q[3]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \q_reg[7]_i_1 
       (.CI(\q_reg[3]_i_1_n_0 ),
        .CO({\q_reg[7]_i_1_n_0 ,\q_reg[7]_i_1_n_1 ,\q_reg[7]_i_1_n_2 ,\q_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\q[7]_i_2_n_0 ,\q[7]_i_3_n_0 ,\q[7]_i_4_n_0 ,\q[7]_i_5_n_0 }),
        .O(\q_reg[7] ),
        .S({\q[7]_i_6_n_0 ,\q[7]_i_7_n_0 ,\q[7]_i_8_n_0 ,\q[7]_i_9_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r1_0_31_0_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M rf_reg_r1_0_31_0_5
       (.ADDRA(Instr[15:11]),
        .ADDRB(Instr[15:11]),
        .ADDRC(Instr[15:11]),
        .ADDRD(Instr[7:3]),
        .DIA(\writeDataM[31] [1:0]),
        .DIB(\writeDataM[31] [3:2]),
        .DIC(\writeDataM[31] [5:4]),
        .DID({1'b0,1'b0}),
        .DOA(rd10[1:0]),
        .DOB(rd10[3:2]),
        .DOC(rd10[5:4]),
        .DOD(NLW_rf_reg_r1_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(we3));
  LUT3 #(
    .INIT(8'hEF)) 
    rf_reg_r1_0_31_0_5_i_1
       (.I0(Instr[0]),
        .I1(Instr[1]),
        .I2(Instr[2]),
        .O(we3));
  LUT5 #(
    .INIT(32'hF0CCAACC)) 
    rf_reg_r1_0_31_0_5_i_10
       (.I0(\loadext/aligned_data__39 [3]),
        .I1(ALUResult[1]),
        .I2(ReadData[3]),
        .I3(s[0]),
        .I4(Instr[9]),
        .O(\readDataM[3] ));
  LUT5 #(
    .INIT(32'hF0CCAACC)) 
    rf_reg_r1_0_31_0_5_i_11
       (.I0(\loadext/aligned_data__39 [2]),
        .I1(ALUResult[0]),
        .I2(ReadData[2]),
        .I3(s[0]),
        .I4(Instr[9]),
        .O(\readDataM[2] ));
  LUT5 #(
    .INIT(32'hF0CCAACC)) 
    rf_reg_r1_0_31_0_5_i_12
       (.I0(\loadext/aligned_data__39 [5]),
        .I1(ALUResult[3]),
        .I2(ReadData[5]),
        .I3(s[0]),
        .I4(Instr[9]),
        .O(\readDataM[5] ));
  LUT5 #(
    .INIT(32'hF0CCAACC)) 
    rf_reg_r1_0_31_0_5_i_13
       (.I0(\loadext/aligned_data__39 [4]),
        .I1(ALUResult[2]),
        .I2(ReadData[4]),
        .I3(s[0]),
        .I4(Instr[9]),
        .O(\readDataM[4] ));
  LUT6 #(
    .INIT(64'hFF00CCCCF0F0AAAA)) 
    rf_reg_r1_0_31_0_5_i_14
       (.I0(ReadData[9]),
        .I1(ReadData[25]),
        .I2(ReadData[1]),
        .I3(ReadData[17]),
        .I4(rf_reg_r1_0_31_0_5_i_20_n_0),
        .I5(\ALUResult[1]_INST_0_i_4_0 ),
        .O(\loadext/aligned_data__39 [1]));
  LUT6 #(
    .INIT(64'hFF00CCCCF0F0AAAA)) 
    rf_reg_r1_0_31_0_5_i_15
       (.I0(ReadData[8]),
        .I1(ReadData[24]),
        .I2(ReadData[0]),
        .I3(ReadData[16]),
        .I4(rf_reg_r1_0_31_0_5_i_20_n_0),
        .I5(\ALUResult[1]_INST_0_i_4_0 ),
        .O(\loadext/aligned_data__39 [0]));
  LUT6 #(
    .INIT(64'hFF00CCCCF0F0AAAA)) 
    rf_reg_r1_0_31_0_5_i_16
       (.I0(ReadData[11]),
        .I1(ReadData[27]),
        .I2(ReadData[3]),
        .I3(ReadData[19]),
        .I4(rf_reg_r1_0_31_0_5_i_20_n_0),
        .I5(\ALUResult[1]_INST_0_i_4_0 ),
        .O(\loadext/aligned_data__39 [3]));
  LUT6 #(
    .INIT(64'hFF00CCCCF0F0AAAA)) 
    rf_reg_r1_0_31_0_5_i_17
       (.I0(ReadData[10]),
        .I1(ReadData[26]),
        .I2(ReadData[2]),
        .I3(ReadData[18]),
        .I4(rf_reg_r1_0_31_0_5_i_20_n_0),
        .I5(\ALUResult[1]_INST_0_i_4_0 ),
        .O(\loadext/aligned_data__39 [2]));
  LUT6 #(
    .INIT(64'hFF00CCCCF0F0AAAA)) 
    rf_reg_r1_0_31_0_5_i_18
       (.I0(ReadData[13]),
        .I1(ReadData[29]),
        .I2(ReadData[5]),
        .I3(ReadData[21]),
        .I4(rf_reg_r1_0_31_0_5_i_20_n_0),
        .I5(\ALUResult[1]_INST_0_i_4_0 ),
        .O(\loadext/aligned_data__39 [5]));
  LUT6 #(
    .INIT(64'hFF00CCCCF0F0AAAA)) 
    rf_reg_r1_0_31_0_5_i_19
       (.I0(ReadData[12]),
        .I1(ReadData[28]),
        .I2(ReadData[4]),
        .I3(ReadData[20]),
        .I4(rf_reg_r1_0_31_0_5_i_20_n_0),
        .I5(\ALUResult[1]_INST_0_i_4_0 ),
        .O(\loadext/aligned_data__39 [4]));
  LUT2 #(
    .INIT(4'hB)) 
    rf_reg_r1_0_31_0_5_i_20
       (.I0(Instr[8]),
        .I1(\ALUResult[0]_INST_0_i_3_0 ),
        .O(rf_reg_r1_0_31_0_5_i_20_n_0));
  LUT5 #(
    .INIT(32'hE4FFE400)) 
    rf_reg_r1_0_31_0_5_i_8
       (.I0(Instr[9]),
        .I1(\loadext/aligned_data__39 [1]),
        .I2(ReadData[1]),
        .I3(s[0]),
        .I4(\ALUResult[1]_INST_0_i_4_0 ),
        .O(\readDataM[1] ));
  LUT5 #(
    .INIT(32'hF0CCAACC)) 
    rf_reg_r1_0_31_0_5_i_9
       (.I0(\loadext/aligned_data__39 [0]),
        .I1(\ALUResult[0]_INST_0_i_3_0 ),
        .I2(ReadData[0]),
        .I3(s[0]),
        .I4(Instr[9]),
        .O(\readDataM[0] ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r1_0_31_12_17" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "17" *) 
  RAM32M rf_reg_r1_0_31_12_17
       (.ADDRA(Instr[15:11]),
        .ADDRB(Instr[15:11]),
        .ADDRC(Instr[15:11]),
        .ADDRD(Instr[7:3]),
        .DIA(wd3[13:12]),
        .DIB(wd3[15:14]),
        .DIC(wd3[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(rd10[13:12]),
        .DOB(rd10[15:14]),
        .DOC(rd10[17:16]),
        .DOD(NLW_rf_reg_r1_0_31_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(we3));
  LUT6 #(
    .INIT(64'hFFAC0FACF0AC00AC)) 
    rf_reg_r1_0_31_12_17_i_1
       (.I0(\loadext/ExtendedReadData__56 [13]),
        .I1(ALUResult[8]),
        .I2(s[0]),
        .I3(s[1]),
        .I4(rf_reg_r2_0_31_12_17_0[5]),
        .I5(d2[12]),
        .O(wd3[13]));
  LUT6 #(
    .INIT(64'hFFFFDC100000DC10)) 
    rf_reg_r1_0_31_12_17_i_10
       (.I0(Instr[10]),
        .I1(Instr[8]),
        .I2(\loadext/aligned_data__39 [7]),
        .I3(rf_reg_r1_0_31_12_17_i_19_n_0),
        .I4(Instr[9]),
        .I5(ReadData[14]),
        .O(\loadext/ExtendedReadData__56 [14]));
  LUT6 #(
    .INIT(64'h0404040000000400)) 
    rf_reg_r1_0_31_12_17_i_12
       (.I0(Instr[10]),
        .I1(s[0]),
        .I2(Instr[9]),
        .I3(\loadext/aligned_data__39 [7]),
        .I4(Instr[8]),
        .I5(rf_reg_r1_0_31_12_17_i_18_n_0),
        .O(\readDataM[15] ));
  LUT5 #(
    .INIT(32'h00A20000)) 
    rf_reg_r1_0_31_12_17_i_13
       (.I0(Instr[9]),
        .I1(Instr[1]),
        .I2(Instr[0]),
        .I3(Instr[2]),
        .I4(ReadData[17]),
        .O(rf_reg_r1_0_31_12_17_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h00A20000)) 
    rf_reg_r1_0_31_12_17_i_15
       (.I0(Instr[9]),
        .I1(Instr[1]),
        .I2(Instr[0]),
        .I3(Instr[2]),
        .I4(ReadData[16]),
        .O(rf_reg_r1_0_31_12_17_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_12_17_i_16
       (.I0(ReadData[29]),
        .I1(\ALUResult[1]_INST_0_i_4_0 ),
        .I2(ReadData[13]),
        .O(rf_reg_r1_0_31_12_17_i_16_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_12_17_i_17
       (.I0(ReadData[28]),
        .I1(\ALUResult[1]_INST_0_i_4_0 ),
        .I2(ReadData[12]),
        .O(rf_reg_r1_0_31_12_17_i_17_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_12_17_i_18
       (.I0(ReadData[31]),
        .I1(\ALUResult[1]_INST_0_i_4_0 ),
        .I2(ReadData[15]),
        .O(rf_reg_r1_0_31_12_17_i_18_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_12_17_i_19
       (.I0(ReadData[30]),
        .I1(\ALUResult[1]_INST_0_i_4_0 ),
        .I2(ReadData[14]),
        .O(rf_reg_r1_0_31_12_17_i_19_n_0));
  LUT6 #(
    .INIT(64'hFFAC0FACF0AC00AC)) 
    rf_reg_r1_0_31_12_17_i_2
       (.I0(\loadext/ExtendedReadData__56 [12]),
        .I1(ALUResult[7]),
        .I2(s[0]),
        .I3(s[1]),
        .I4(rf_reg_r2_0_31_12_17_0[4]),
        .I5(d2[11]),
        .O(wd3[12]));
  LUT6 #(
    .INIT(64'hFFAC0FACF0AC00AC)) 
    rf_reg_r1_0_31_12_17_i_3
       (.I0(\loadext/ExtendedReadData__56 [15]),
        .I1(ALUResult[10]),
        .I2(s[0]),
        .I3(s[1]),
        .I4(rf_reg_r2_0_31_12_17_0[7]),
        .I5(d2[14]),
        .O(wd3[15]));
  LUT6 #(
    .INIT(64'hFFAC0FACF0AC00AC)) 
    rf_reg_r1_0_31_12_17_i_4
       (.I0(\loadext/ExtendedReadData__56 [14]),
        .I1(ALUResult[9]),
        .I2(s[0]),
        .I3(s[1]),
        .I4(rf_reg_r2_0_31_12_17_0[6]),
        .I5(d2[13]),
        .O(wd3[14]));
  LUT6 #(
    .INIT(64'hBBBABBBBBBBABBBA)) 
    rf_reg_r1_0_31_12_17_i_5
       (.I0(rf_reg_r2_0_31_12_17_2),
        .I1(s[1]),
        .I2(\readDataM[15] ),
        .I3(rf_reg_r1_0_31_12_17_i_13_n_0),
        .I4(s[0]),
        .I5(ALUResult[12]),
        .O(wd3[17]));
  LUT6 #(
    .INIT(64'hBBBABBBBBBBABBBA)) 
    rf_reg_r1_0_31_12_17_i_6
       (.I0(rf_reg_r2_0_31_12_17_1),
        .I1(s[1]),
        .I2(\readDataM[15] ),
        .I3(rf_reg_r1_0_31_12_17_i_15_n_0),
        .I4(s[0]),
        .I5(ALUResult[11]),
        .O(wd3[16]));
  LUT6 #(
    .INIT(64'hFFFFDC100000DC10)) 
    rf_reg_r1_0_31_12_17_i_7
       (.I0(Instr[10]),
        .I1(Instr[8]),
        .I2(\loadext/aligned_data__39 [7]),
        .I3(rf_reg_r1_0_31_12_17_i_16_n_0),
        .I4(Instr[9]),
        .I5(ReadData[13]),
        .O(\loadext/ExtendedReadData__56 [13]));
  LUT6 #(
    .INIT(64'hFFFFDC100000DC10)) 
    rf_reg_r1_0_31_12_17_i_8
       (.I0(Instr[10]),
        .I1(Instr[8]),
        .I2(\loadext/aligned_data__39 [7]),
        .I3(rf_reg_r1_0_31_12_17_i_17_n_0),
        .I4(Instr[9]),
        .I5(ReadData[12]),
        .O(\loadext/ExtendedReadData__56 [12]));
  LUT6 #(
    .INIT(64'hCCF0CC00CCF0CCAA)) 
    rf_reg_r1_0_31_12_17_i_9
       (.I0(\loadext/aligned_data__39 [7]),
        .I1(ReadData[15]),
        .I2(rf_reg_r1_0_31_12_17_i_18_n_0),
        .I3(Instr[9]),
        .I4(Instr[8]),
        .I5(Instr[10]),
        .O(\loadext/ExtendedReadData__56 [15]));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r1_0_31_18_23" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "23" *) 
  RAM32M rf_reg_r1_0_31_18_23
       (.ADDRA(Instr[15:11]),
        .ADDRB(Instr[15:11]),
        .ADDRC(Instr[15:11]),
        .ADDRD(Instr[7:3]),
        .DIA(wd3[19:18]),
        .DIB(wd3[21:20]),
        .DIC(wd3[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(rd10[19:18]),
        .DOB(rd10[21:20]),
        .DOC(rd10[23:22]),
        .DOD(NLW_rf_reg_r1_0_31_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(we3));
  LUT6 #(
    .INIT(64'hBBBABBBBBBBABBBA)) 
    rf_reg_r1_0_31_18_23_i_1
       (.I0(rf_reg_r2_0_31_18_23_1),
        .I1(s[1]),
        .I2(\readDataM[15] ),
        .I3(rf_reg_r1_0_31_18_23_i_8_n_0),
        .I4(s[0]),
        .I5(ALUResult[14]),
        .O(wd3[19]));
  LUT5 #(
    .INIT(32'h00A20000)) 
    rf_reg_r1_0_31_18_23_i_10
       (.I0(Instr[9]),
        .I1(Instr[1]),
        .I2(Instr[0]),
        .I3(Instr[2]),
        .I4(ReadData[18]),
        .O(rf_reg_r1_0_31_18_23_i_10_n_0));
  LUT5 #(
    .INIT(32'h00A20000)) 
    rf_reg_r1_0_31_18_23_i_12
       (.I0(Instr[9]),
        .I1(Instr[1]),
        .I2(Instr[0]),
        .I3(Instr[2]),
        .I4(ReadData[21]),
        .O(rf_reg_r1_0_31_18_23_i_12_n_0));
  LUT5 #(
    .INIT(32'h00A20000)) 
    rf_reg_r1_0_31_18_23_i_14
       (.I0(Instr[9]),
        .I1(Instr[1]),
        .I2(Instr[0]),
        .I3(Instr[2]),
        .I4(ReadData[20]),
        .O(rf_reg_r1_0_31_18_23_i_14_n_0));
  LUT5 #(
    .INIT(32'h00A20000)) 
    rf_reg_r1_0_31_18_23_i_16
       (.I0(Instr[9]),
        .I1(Instr[1]),
        .I2(Instr[0]),
        .I3(Instr[2]),
        .I4(ReadData[23]),
        .O(rf_reg_r1_0_31_18_23_i_16_n_0));
  LUT5 #(
    .INIT(32'h00A20000)) 
    rf_reg_r1_0_31_18_23_i_18
       (.I0(Instr[9]),
        .I1(Instr[1]),
        .I2(Instr[0]),
        .I3(Instr[2]),
        .I4(ReadData[22]),
        .O(rf_reg_r1_0_31_18_23_i_18_n_0));
  LUT6 #(
    .INIT(64'hBBBABBBBBBBABBBA)) 
    rf_reg_r1_0_31_18_23_i_2
       (.I0(rf_reg_r2_0_31_18_23_0),
        .I1(s[1]),
        .I2(\readDataM[15] ),
        .I3(rf_reg_r1_0_31_18_23_i_10_n_0),
        .I4(s[0]),
        .I5(ALUResult[13]),
        .O(wd3[18]));
  LUT6 #(
    .INIT(64'hBBBABBBBBBBABBBA)) 
    rf_reg_r1_0_31_18_23_i_3
       (.I0(rf_reg_r2_0_31_18_23_3),
        .I1(s[1]),
        .I2(\readDataM[15] ),
        .I3(rf_reg_r1_0_31_18_23_i_12_n_0),
        .I4(s[0]),
        .I5(ALUResult[16]),
        .O(wd3[21]));
  LUT6 #(
    .INIT(64'hBBBABBBBBBBABBBA)) 
    rf_reg_r1_0_31_18_23_i_4
       (.I0(rf_reg_r2_0_31_18_23_2),
        .I1(s[1]),
        .I2(\readDataM[15] ),
        .I3(rf_reg_r1_0_31_18_23_i_14_n_0),
        .I4(s[0]),
        .I5(ALUResult[15]),
        .O(wd3[20]));
  LUT6 #(
    .INIT(64'hBBBABBBBBBBABBBA)) 
    rf_reg_r1_0_31_18_23_i_5
       (.I0(rf_reg_r2_0_31_18_23_5),
        .I1(s[1]),
        .I2(\readDataM[15] ),
        .I3(rf_reg_r1_0_31_18_23_i_16_n_0),
        .I4(s[0]),
        .I5(ALUResult[18]),
        .O(wd3[23]));
  LUT6 #(
    .INIT(64'hBBBABBBBBBBABBBA)) 
    rf_reg_r1_0_31_18_23_i_6
       (.I0(rf_reg_r2_0_31_18_23_4),
        .I1(s[1]),
        .I2(\readDataM[15] ),
        .I3(rf_reg_r1_0_31_18_23_i_18_n_0),
        .I4(s[0]),
        .I5(ALUResult[17]),
        .O(wd3[22]));
  LUT5 #(
    .INIT(32'h00A20000)) 
    rf_reg_r1_0_31_18_23_i_8
       (.I0(Instr[9]),
        .I1(Instr[1]),
        .I2(Instr[0]),
        .I3(Instr[2]),
        .I4(ReadData[19]),
        .O(rf_reg_r1_0_31_18_23_i_8_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r1_0_31_24_29" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "29" *) 
  RAM32M rf_reg_r1_0_31_24_29
       (.ADDRA(Instr[15:11]),
        .ADDRB(Instr[15:11]),
        .ADDRC(Instr[15:11]),
        .ADDRD(Instr[7:3]),
        .DIA(wd3[25:24]),
        .DIB(wd3[27:26]),
        .DIC(wd3[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(rd10[25:24]),
        .DOB(rd10[27:26]),
        .DOC(rd10[29:28]),
        .DOD(NLW_rf_reg_r1_0_31_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(we3));
  LUT6 #(
    .INIT(64'hBBBABBBBBBBABBBA)) 
    rf_reg_r1_0_31_24_29_i_1
       (.I0(rf_reg_r2_0_31_24_29_1),
        .I1(s[1]),
        .I2(\readDataM[15] ),
        .I3(rf_reg_r1_0_31_24_29_i_8_n_0),
        .I4(s[0]),
        .I5(ALUResult[20]),
        .O(wd3[25]));
  LUT5 #(
    .INIT(32'h00A20000)) 
    rf_reg_r1_0_31_24_29_i_10
       (.I0(Instr[9]),
        .I1(Instr[1]),
        .I2(Instr[0]),
        .I3(Instr[2]),
        .I4(ReadData[24]),
        .O(rf_reg_r1_0_31_24_29_i_10_n_0));
  LUT5 #(
    .INIT(32'h00A20000)) 
    rf_reg_r1_0_31_24_29_i_12
       (.I0(Instr[9]),
        .I1(Instr[1]),
        .I2(Instr[0]),
        .I3(Instr[2]),
        .I4(ReadData[27]),
        .O(rf_reg_r1_0_31_24_29_i_12_n_0));
  LUT5 #(
    .INIT(32'h00A20000)) 
    rf_reg_r1_0_31_24_29_i_14
       (.I0(Instr[9]),
        .I1(Instr[1]),
        .I2(Instr[0]),
        .I3(Instr[2]),
        .I4(ReadData[26]),
        .O(rf_reg_r1_0_31_24_29_i_14_n_0));
  LUT5 #(
    .INIT(32'h00A20000)) 
    rf_reg_r1_0_31_24_29_i_16
       (.I0(Instr[9]),
        .I1(Instr[1]),
        .I2(Instr[0]),
        .I3(Instr[2]),
        .I4(ReadData[29]),
        .O(rf_reg_r1_0_31_24_29_i_16_n_0));
  LUT5 #(
    .INIT(32'h00A20000)) 
    rf_reg_r1_0_31_24_29_i_18
       (.I0(Instr[9]),
        .I1(Instr[1]),
        .I2(Instr[0]),
        .I3(Instr[2]),
        .I4(ReadData[28]),
        .O(rf_reg_r1_0_31_24_29_i_18_n_0));
  LUT6 #(
    .INIT(64'hBBBABBBBBBBABBBA)) 
    rf_reg_r1_0_31_24_29_i_2
       (.I0(rf_reg_r2_0_31_24_29_0),
        .I1(s[1]),
        .I2(\readDataM[15] ),
        .I3(rf_reg_r1_0_31_24_29_i_10_n_0),
        .I4(s[0]),
        .I5(ALUResult[19]),
        .O(wd3[24]));
  LUT6 #(
    .INIT(64'hBBBABBBBBBBABBBA)) 
    rf_reg_r1_0_31_24_29_i_3
       (.I0(rf_reg_r2_0_31_24_29_3),
        .I1(s[1]),
        .I2(\readDataM[15] ),
        .I3(rf_reg_r1_0_31_24_29_i_12_n_0),
        .I4(s[0]),
        .I5(ALUResult[22]),
        .O(wd3[27]));
  LUT6 #(
    .INIT(64'hBBBABBBBBBBABBBA)) 
    rf_reg_r1_0_31_24_29_i_4
       (.I0(rf_reg_r2_0_31_24_29_2),
        .I1(s[1]),
        .I2(\readDataM[15] ),
        .I3(rf_reg_r1_0_31_24_29_i_14_n_0),
        .I4(s[0]),
        .I5(ALUResult[21]),
        .O(wd3[26]));
  LUT6 #(
    .INIT(64'hBBBABBBBBBBABBBA)) 
    rf_reg_r1_0_31_24_29_i_5
       (.I0(rf_reg_r2_0_31_24_29_5),
        .I1(s[1]),
        .I2(\readDataM[15] ),
        .I3(rf_reg_r1_0_31_24_29_i_16_n_0),
        .I4(s[0]),
        .I5(ALUResult[24]),
        .O(wd3[29]));
  LUT6 #(
    .INIT(64'hBBBABBBBBBBABBBA)) 
    rf_reg_r1_0_31_24_29_i_6
       (.I0(rf_reg_r2_0_31_24_29_4),
        .I1(s[1]),
        .I2(\readDataM[15] ),
        .I3(rf_reg_r1_0_31_24_29_i_18_n_0),
        .I4(s[0]),
        .I5(ALUResult[23]),
        .O(wd3[28]));
  LUT5 #(
    .INIT(32'h00A20000)) 
    rf_reg_r1_0_31_24_29_i_8
       (.I0(Instr[9]),
        .I1(Instr[1]),
        .I2(Instr[0]),
        .I3(Instr[2]),
        .I4(ReadData[25]),
        .O(rf_reg_r1_0_31_24_29_i_8_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r1_0_31_30_31" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32X1D rf_reg_r1_0_31_30_31
       (.A0(Instr[3]),
        .A1(Instr[4]),
        .A2(Instr[5]),
        .A3(Instr[6]),
        .A4(Instr[7]),
        .D(\writeDataM[31] [8]),
        .DPO(rd10[30]),
        .DPRA0(Instr[11]),
        .DPRA1(Instr[12]),
        .DPRA2(Instr[13]),
        .DPRA3(Instr[14]),
        .DPRA4(Instr[15]),
        .SPO(NLW_rf_reg_r1_0_31_30_31_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(we3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r1_0_31_30_31" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32X1D rf_reg_r1_0_31_30_31__0
       (.A0(Instr[3]),
        .A1(Instr[4]),
        .A2(Instr[5]),
        .A3(Instr[6]),
        .A4(Instr[7]),
        .D(\writeDataM[31] [9]),
        .DPO(rd10[31]),
        .DPRA0(Instr[11]),
        .DPRA1(Instr[12]),
        .DPRA2(Instr[13]),
        .DPRA3(Instr[14]),
        .DPRA4(Instr[15]),
        .SPO(NLW_rf_reg_r1_0_31_30_31__0_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(we3));
  LUT5 #(
    .INIT(32'h00A20000)) 
    rf_reg_r1_0_31_30_31_i_3
       (.I0(Instr[9]),
        .I1(Instr[1]),
        .I2(Instr[0]),
        .I3(Instr[2]),
        .I4(ReadData[30]),
        .O(\readDataM[30] ));
  LUT5 #(
    .INIT(32'h00A20000)) 
    rf_reg_r1_0_31_30_31_i_3__0
       (.I0(Instr[9]),
        .I1(Instr[1]),
        .I2(Instr[0]),
        .I3(Instr[2]),
        .I4(ReadData[31]),
        .O(\readDataM[31] ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r1_0_31_6_11" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M rf_reg_r1_0_31_6_11
       (.ADDRA(Instr[15:11]),
        .ADDRB(Instr[15:11]),
        .ADDRC(Instr[15:11]),
        .ADDRD(Instr[7:3]),
        .DIA(\writeDataM[31] [7:6]),
        .DIB(wd3[9:8]),
        .DIC(wd3[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(rd10[7:6]),
        .DOB(rd10[9:8]),
        .DOC(rd10[11:10]),
        .DOD(NLW_rf_reg_r1_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(we3));
  LUT3 #(
    .INIT(8'h0D)) 
    rf_reg_r1_0_31_6_11_i_10
       (.I0(Instr[1]),
        .I1(Instr[0]),
        .I2(Instr[2]),
        .O(s[0]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h4C)) 
    rf_reg_r1_0_31_6_11_i_11
       (.I0(Instr[1]),
        .I1(Instr[0]),
        .I2(Instr[2]),
        .O(s[1]));
  LUT6 #(
    .INIT(64'hFFFFDC100000DC10)) 
    rf_reg_r1_0_31_6_11_i_12
       (.I0(Instr[10]),
        .I1(Instr[8]),
        .I2(\loadext/aligned_data__39 [7]),
        .I3(rf_reg_r1_0_31_6_11_i_18_n_0),
        .I4(Instr[9]),
        .I5(ReadData[8]),
        .O(\loadext/ExtendedReadData__56 [8]));
  LUT6 #(
    .INIT(64'hFFFFDC100000DC10)) 
    rf_reg_r1_0_31_6_11_i_13
       (.I0(Instr[10]),
        .I1(Instr[8]),
        .I2(\loadext/aligned_data__39 [7]),
        .I3(rf_reg_r1_0_31_6_11_i_19_n_0),
        .I4(Instr[9]),
        .I5(ReadData[11]),
        .O(\loadext/ExtendedReadData__56 [11]));
  LUT6 #(
    .INIT(64'hFFFFDC100000DC10)) 
    rf_reg_r1_0_31_6_11_i_14
       (.I0(Instr[10]),
        .I1(Instr[8]),
        .I2(\loadext/aligned_data__39 [7]),
        .I3(rf_reg_r1_0_31_6_11_i_20_n_0),
        .I4(Instr[9]),
        .I5(ReadData[10]),
        .O(\loadext/ExtendedReadData__56 [10]));
  LUT6 #(
    .INIT(64'hFF00CCCCF0F0AAAA)) 
    rf_reg_r1_0_31_6_11_i_15
       (.I0(ReadData[15]),
        .I1(ReadData[31]),
        .I2(ReadData[7]),
        .I3(ReadData[23]),
        .I4(rf_reg_r1_0_31_0_5_i_20_n_0),
        .I5(\ALUResult[1]_INST_0_i_4_0 ),
        .O(\loadext/aligned_data__39 [7]));
  LUT6 #(
    .INIT(64'hFF00CCCCF0F0AAAA)) 
    rf_reg_r1_0_31_6_11_i_16
       (.I0(ReadData[14]),
        .I1(ReadData[30]),
        .I2(ReadData[6]),
        .I3(ReadData[22]),
        .I4(rf_reg_r1_0_31_0_5_i_20_n_0),
        .I5(\ALUResult[1]_INST_0_i_4_0 ),
        .O(\loadext/aligned_data__39 [6]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_6_11_i_17
       (.I0(ReadData[25]),
        .I1(\ALUResult[1]_INST_0_i_4_0 ),
        .I2(ReadData[9]),
        .O(rf_reg_r1_0_31_6_11_i_17_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_6_11_i_18
       (.I0(ReadData[24]),
        .I1(\ALUResult[1]_INST_0_i_4_0 ),
        .I2(ReadData[8]),
        .O(rf_reg_r1_0_31_6_11_i_18_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_6_11_i_19
       (.I0(ReadData[27]),
        .I1(\ALUResult[1]_INST_0_i_4_0 ),
        .I2(ReadData[11]),
        .O(rf_reg_r1_0_31_6_11_i_19_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_6_11_i_20
       (.I0(ReadData[26]),
        .I1(\ALUResult[1]_INST_0_i_4_0 ),
        .I2(ReadData[10]),
        .O(rf_reg_r1_0_31_6_11_i_20_n_0));
  LUT6 #(
    .INIT(64'hFFAC0FACF0AC00AC)) 
    rf_reg_r1_0_31_6_11_i_3
       (.I0(\loadext/ExtendedReadData__56 [9]),
        .I1(ALUResult[6]),
        .I2(s[0]),
        .I3(s[1]),
        .I4(rf_reg_r2_0_31_12_17_0[1]),
        .I5(d2[8]),
        .O(wd3[9]));
  LUT6 #(
    .INIT(64'hFFAC0FACF0AC00AC)) 
    rf_reg_r1_0_31_6_11_i_4
       (.I0(\loadext/ExtendedReadData__56 [8]),
        .I1(\ALUResult[31]_INST_0_i_3 ),
        .I2(s[0]),
        .I3(s[1]),
        .I4(rf_reg_r2_0_31_12_17_0[0]),
        .I5(d2[7]),
        .O(wd3[8]));
  LUT6 #(
    .INIT(64'hFFAC0FACF0AC00AC)) 
    rf_reg_r1_0_31_6_11_i_5
       (.I0(\loadext/ExtendedReadData__56 [11]),
        .I1(\ALUResult[31]_INST_0_i_3_0 ),
        .I2(s[0]),
        .I3(s[1]),
        .I4(rf_reg_r2_0_31_12_17_0[3]),
        .I5(d2[10]),
        .O(wd3[11]));
  LUT6 #(
    .INIT(64'hFFAC0FACF0AC00AC)) 
    rf_reg_r1_0_31_6_11_i_6
       (.I0(\loadext/ExtendedReadData__56 [10]),
        .I1(\ALUResult[31]_INST_0_i_3_1 ),
        .I2(s[0]),
        .I3(s[1]),
        .I4(rf_reg_r2_0_31_12_17_0[2]),
        .I5(d2[9]),
        .O(wd3[10]));
  LUT5 #(
    .INIT(32'hF0CCAACC)) 
    rf_reg_r1_0_31_6_11_i_7
       (.I0(\loadext/aligned_data__39 [7]),
        .I1(ALUResult[5]),
        .I2(ReadData[7]),
        .I3(s[0]),
        .I4(Instr[9]),
        .O(\readDataM[7] ));
  LUT5 #(
    .INIT(32'hF0CCAACC)) 
    rf_reg_r1_0_31_6_11_i_8
       (.I0(\loadext/aligned_data__39 [6]),
        .I1(ALUResult[4]),
        .I2(ReadData[6]),
        .I3(s[0]),
        .I4(Instr[9]),
        .O(\readDataM[6] ));
  LUT6 #(
    .INIT(64'hFFFFDC100000DC10)) 
    rf_reg_r1_0_31_6_11_i_9
       (.I0(Instr[10]),
        .I1(Instr[8]),
        .I2(\loadext/aligned_data__39 [7]),
        .I3(rf_reg_r1_0_31_6_11_i_17_n_0),
        .I4(Instr[9]),
        .I5(ReadData[9]),
        .O(\loadext/ExtendedReadData__56 [9]));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r2_0_31_0_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M rf_reg_r2_0_31_0_5
       (.ADDRA(Instr[20:16]),
        .ADDRB(Instr[20:16]),
        .ADDRC(Instr[20:16]),
        .ADDRD(Instr[7:3]),
        .DIA(\writeDataM[31] [1:0]),
        .DIB(\writeDataM[31] [3:2]),
        .DIC(\writeDataM[31] [5:4]),
        .DID({1'b0,1'b0}),
        .DOA(rd20[1:0]),
        .DOB(rd20[3:2]),
        .DOC(rd20[5:4]),
        .DOD(NLW_rf_reg_r2_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(we3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r2_0_31_12_17" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "17" *) 
  RAM32M rf_reg_r2_0_31_12_17
       (.ADDRA(Instr[20:16]),
        .ADDRB(Instr[20:16]),
        .ADDRC(Instr[20:16]),
        .ADDRD(Instr[7:3]),
        .DIA(wd3[13:12]),
        .DIB(wd3[15:14]),
        .DIC(wd3[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(rd20[13:12]),
        .DOB(rd20[15:14]),
        .DOC(rd20[17:16]),
        .DOD(NLW_rf_reg_r2_0_31_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(we3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r2_0_31_18_23" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "23" *) 
  RAM32M rf_reg_r2_0_31_18_23
       (.ADDRA(Instr[20:16]),
        .ADDRB(Instr[20:16]),
        .ADDRC(Instr[20:16]),
        .ADDRD(Instr[7:3]),
        .DIA(wd3[19:18]),
        .DIB(wd3[21:20]),
        .DIC(wd3[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(rd20[19:18]),
        .DOB(rd20[21:20]),
        .DOC(rd20[23:22]),
        .DOD(NLW_rf_reg_r2_0_31_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(we3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r2_0_31_24_29" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "29" *) 
  RAM32M rf_reg_r2_0_31_24_29
       (.ADDRA(Instr[20:16]),
        .ADDRB(Instr[20:16]),
        .ADDRC(Instr[20:16]),
        .ADDRD(Instr[7:3]),
        .DIA(wd3[25:24]),
        .DIB(wd3[27:26]),
        .DIC(wd3[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(rd20[25:24]),
        .DOB(rd20[27:26]),
        .DOC(rd20[29:28]),
        .DOD(NLW_rf_reg_r2_0_31_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(we3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r2_0_31_30_31" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32X1D rf_reg_r2_0_31_30_31
       (.A0(Instr[3]),
        .A1(Instr[4]),
        .A2(Instr[5]),
        .A3(Instr[6]),
        .A4(Instr[7]),
        .D(\writeDataM[31] [8]),
        .DPO(rd20[30]),
        .DPRA0(Instr[16]),
        .DPRA1(Instr[17]),
        .DPRA2(Instr[18]),
        .DPRA3(Instr[19]),
        .DPRA4(Instr[20]),
        .SPO(NLW_rf_reg_r2_0_31_30_31_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(we3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r2_0_31_30_31" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32X1D rf_reg_r2_0_31_30_31__0
       (.A0(Instr[3]),
        .A1(Instr[4]),
        .A2(Instr[5]),
        .A3(Instr[6]),
        .A4(Instr[7]),
        .D(\writeDataM[31] [9]),
        .DPO(rd20[31]),
        .DPRA0(Instr[16]),
        .DPRA1(Instr[17]),
        .DPRA2(Instr[18]),
        .DPRA3(Instr[19]),
        .DPRA4(Instr[20]),
        .SPO(NLW_rf_reg_r2_0_31_30_31__0_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(we3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r2_0_31_6_11" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M rf_reg_r2_0_31_6_11
       (.ADDRA(Instr[20:16]),
        .ADDRB(Instr[20:16]),
        .ADDRC(Instr[20:16]),
        .ADDRD(Instr[7:3]),
        .DIA(\writeDataM[31] [7:6]),
        .DIB(wd3[9:8]),
        .DIC(wd3[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(rd20[7:6]),
        .DOB(rd20[9:8]),
        .DOC(rd20[11:10]),
        .DOD(NLW_rf_reg_r2_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(we3));
  LUT4 #(
    .INIT(16'h8778)) 
    sum__0_carry__0_i_1
       (.I0(rd10[7]),
        .I1(rd11),
        .I2(SrcB[7]),
        .I3(ALUControl),
        .O(clk_7[3]));
  LUT4 #(
    .INIT(16'h8778)) 
    sum__0_carry__0_i_2
       (.I0(rd10[6]),
        .I1(rd11),
        .I2(SrcB[6]),
        .I3(ALUControl),
        .O(clk_7[2]));
  LUT4 #(
    .INIT(16'h8778)) 
    sum__0_carry__0_i_3
       (.I0(rd10[5]),
        .I1(rd11),
        .I2(SrcB[5]),
        .I3(ALUControl),
        .O(clk_7[1]));
  LUT4 #(
    .INIT(16'h8778)) 
    sum__0_carry__0_i_4
       (.I0(rd10[4]),
        .I1(rd11),
        .I2(SrcB[4]),
        .I3(ALUControl),
        .O(clk_7[0]));
  LUT6 #(
    .INIT(64'hAA955595556AAA6A)) 
    sum__0_carry__1_i_1
       (.I0(SrcA[11]),
        .I1(rd20[11]),
        .I2(rd21),
        .I3(\addressM[1] ),
        .I4(immext[11]),
        .I5(ALUControl),
        .O(clk_6[3]));
  LUT4 #(
    .INIT(16'h8778)) 
    sum__0_carry__1_i_2
       (.I0(rd10[10]),
        .I1(rd11),
        .I2(SrcB[10]),
        .I3(ALUControl),
        .O(clk_6[2]));
  LUT4 #(
    .INIT(16'h8778)) 
    sum__0_carry__1_i_3
       (.I0(rd10[9]),
        .I1(rd11),
        .I2(SrcB[9]),
        .I3(ALUControl),
        .O(clk_6[1]));
  LUT4 #(
    .INIT(16'h8778)) 
    sum__0_carry__1_i_4
       (.I0(rd10[8]),
        .I1(rd11),
        .I2(SrcB[8]),
        .I3(ALUControl),
        .O(clk_6[0]));
  LUT4 #(
    .INIT(16'h8778)) 
    sum__0_carry__2_i_1
       (.I0(rd10[15]),
        .I1(rd11),
        .I2(SrcB[15]),
        .I3(ALUControl),
        .O(clk_5[3]));
  LUT4 #(
    .INIT(16'h8778)) 
    sum__0_carry__2_i_2
       (.I0(rd10[14]),
        .I1(rd11),
        .I2(SrcB[14]),
        .I3(ALUControl),
        .O(clk_5[2]));
  LUT4 #(
    .INIT(16'h8778)) 
    sum__0_carry__2_i_3
       (.I0(rd10[13]),
        .I1(rd11),
        .I2(SrcB[13]),
        .I3(ALUControl),
        .O(clk_5[1]));
  LUT4 #(
    .INIT(16'h8778)) 
    sum__0_carry__2_i_4
       (.I0(rd10[12]),
        .I1(rd11),
        .I2(SrcB[12]),
        .I3(ALUControl),
        .O(clk_5[0]));
  LUT4 #(
    .INIT(16'h8778)) 
    sum__0_carry__3_i_1
       (.I0(rd10[19]),
        .I1(rd11),
        .I2(SrcB[19]),
        .I3(ALUControl),
        .O(clk_4[3]));
  LUT4 #(
    .INIT(16'h8778)) 
    sum__0_carry__3_i_2
       (.I0(rd10[18]),
        .I1(rd11),
        .I2(SrcB[18]),
        .I3(ALUControl),
        .O(clk_4[2]));
  LUT4 #(
    .INIT(16'h8778)) 
    sum__0_carry__3_i_3
       (.I0(rd10[17]),
        .I1(rd11),
        .I2(SrcB[17]),
        .I3(ALUControl),
        .O(clk_4[1]));
  LUT4 #(
    .INIT(16'h8778)) 
    sum__0_carry__3_i_4
       (.I0(rd10[16]),
        .I1(rd11),
        .I2(SrcB[16]),
        .I3(ALUControl),
        .O(clk_4[0]));
  LUT4 #(
    .INIT(16'h8778)) 
    sum__0_carry__4_i_1
       (.I0(rd10[23]),
        .I1(rd11),
        .I2(SrcB[23]),
        .I3(ALUControl),
        .O(clk_3[3]));
  LUT4 #(
    .INIT(16'h8778)) 
    sum__0_carry__4_i_2
       (.I0(rd10[22]),
        .I1(rd11),
        .I2(SrcB[22]),
        .I3(ALUControl),
        .O(clk_3[2]));
  LUT4 #(
    .INIT(16'h8778)) 
    sum__0_carry__4_i_3
       (.I0(rd10[21]),
        .I1(rd11),
        .I2(SrcB[21]),
        .I3(ALUControl),
        .O(clk_3[1]));
  LUT4 #(
    .INIT(16'h8778)) 
    sum__0_carry__4_i_4
       (.I0(rd10[20]),
        .I1(rd11),
        .I2(SrcB[20]),
        .I3(ALUControl),
        .O(clk_3[0]));
  LUT4 #(
    .INIT(16'h8778)) 
    sum__0_carry__5_i_1
       (.I0(rd10[27]),
        .I1(rd11),
        .I2(SrcB[27]),
        .I3(ALUControl),
        .O(clk_2[3]));
  LUT4 #(
    .INIT(16'h8778)) 
    sum__0_carry__5_i_2
       (.I0(rd10[26]),
        .I1(rd11),
        .I2(SrcB[26]),
        .I3(ALUControl),
        .O(clk_2[2]));
  LUT4 #(
    .INIT(16'h8778)) 
    sum__0_carry__5_i_3
       (.I0(rd10[25]),
        .I1(rd11),
        .I2(SrcB[25]),
        .I3(ALUControl),
        .O(clk_2[1]));
  LUT4 #(
    .INIT(16'h8778)) 
    sum__0_carry__5_i_4
       (.I0(rd10[24]),
        .I1(rd11),
        .I2(SrcB[24]),
        .I3(ALUControl),
        .O(clk_2[0]));
  LUT4 #(
    .INIT(16'h8778)) 
    sum__0_carry__6_i_1
       (.I0(rd10[31]),
        .I1(rd11),
        .I2(ALUControl),
        .I3(clk_0[1]),
        .O(clk_1[3]));
  LUT4 #(
    .INIT(16'h8778)) 
    sum__0_carry__6_i_2
       (.I0(rd10[30]),
        .I1(rd11),
        .I2(clk_0[0]),
        .I3(ALUControl),
        .O(clk_1[2]));
  LUT4 #(
    .INIT(16'h8778)) 
    sum__0_carry__6_i_3
       (.I0(rd10[29]),
        .I1(rd11),
        .I2(SrcB[29]),
        .I3(ALUControl),
        .O(clk_1[1]));
  LUT4 #(
    .INIT(16'h8778)) 
    sum__0_carry__6_i_4
       (.I0(rd10[28]),
        .I1(rd11),
        .I2(SrcB[28]),
        .I3(ALUControl),
        .O(clk_1[0]));
  LUT4 #(
    .INIT(16'h8778)) 
    sum__0_carry_i_1
       (.I0(rd10[3]),
        .I1(rd11),
        .I2(SrcB[3]),
        .I3(ALUControl),
        .O(clk_8[3]));
  LUT4 #(
    .INIT(16'h8778)) 
    sum__0_carry_i_2
       (.I0(rd10[2]),
        .I1(rd11),
        .I2(SrcB[2]),
        .I3(ALUControl),
        .O(clk_8[2]));
  LUT4 #(
    .INIT(16'h8778)) 
    sum__0_carry_i_3
       (.I0(rd10[1]),
        .I1(rd11),
        .I2(SrcB[1]),
        .I3(ALUControl),
        .O(clk_8[1]));
  LUT3 #(
    .INIT(8'h78)) 
    sum__0_carry_i_4
       (.I0(rd10[0]),
        .I1(rd11),
        .I2(ALUControl),
        .O(clk_8[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    sum_carry__0_i_1
       (.I0(Instr[13]),
        .I1(Instr[15]),
        .I2(Instr[12]),
        .I3(Instr[11]),
        .I4(Instr[14]),
        .I5(rd10[7]),
        .O(SrcA[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    sum_carry__0_i_2
       (.I0(Instr[13]),
        .I1(Instr[15]),
        .I2(Instr[12]),
        .I3(Instr[11]),
        .I4(Instr[14]),
        .I5(rd10[6]),
        .O(SrcA[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    sum_carry__0_i_3
       (.I0(Instr[13]),
        .I1(Instr[15]),
        .I2(Instr[12]),
        .I3(Instr[11]),
        .I4(Instr[14]),
        .I5(rd10[5]),
        .O(SrcA[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    sum_carry__0_i_4
       (.I0(Instr[13]),
        .I1(Instr[15]),
        .I2(Instr[12]),
        .I3(Instr[11]),
        .I4(Instr[14]),
        .I5(rd10[4]),
        .O(SrcA[4]));
  LUT4 #(
    .INIT(16'h8778)) 
    sum_carry__0_i_5
       (.I0(rd10[7]),
        .I1(rd11),
        .I2(SrcB[7]),
        .I3(ALUControl),
        .O(clk_10[3]));
  LUT4 #(
    .INIT(16'h8778)) 
    sum_carry__0_i_6
       (.I0(rd10[6]),
        .I1(rd11),
        .I2(SrcB[6]),
        .I3(ALUControl),
        .O(clk_10[2]));
  LUT4 #(
    .INIT(16'h8778)) 
    sum_carry__0_i_7
       (.I0(rd10[5]),
        .I1(rd11),
        .I2(SrcB[5]),
        .I3(ALUControl),
        .O(clk_10[1]));
  LUT4 #(
    .INIT(16'h8778)) 
    sum_carry__0_i_8
       (.I0(rd10[4]),
        .I1(rd11),
        .I2(SrcB[4]),
        .I3(ALUControl),
        .O(clk_10[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    sum_carry__1_i_1
       (.I0(Instr[13]),
        .I1(Instr[15]),
        .I2(Instr[12]),
        .I3(Instr[11]),
        .I4(Instr[14]),
        .I5(rd10[11]),
        .O(SrcA[11]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    sum_carry__1_i_2
       (.I0(Instr[13]),
        .I1(Instr[15]),
        .I2(Instr[12]),
        .I3(Instr[11]),
        .I4(Instr[14]),
        .I5(rd10[10]),
        .O(SrcA[10]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    sum_carry__1_i_3
       (.I0(Instr[13]),
        .I1(Instr[15]),
        .I2(Instr[12]),
        .I3(Instr[11]),
        .I4(Instr[14]),
        .I5(rd10[9]),
        .O(SrcA[9]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    sum_carry__1_i_4
       (.I0(Instr[13]),
        .I1(Instr[15]),
        .I2(Instr[12]),
        .I3(Instr[11]),
        .I4(Instr[14]),
        .I5(rd10[8]),
        .O(SrcA[8]));
  LUT6 #(
    .INIT(64'hAA955595556AAA6A)) 
    sum_carry__1_i_5
       (.I0(SrcA[11]),
        .I1(rd20[11]),
        .I2(rd21),
        .I3(\addressM[1] ),
        .I4(immext[11]),
        .I5(ALUControl),
        .O(clk_11[3]));
  LUT4 #(
    .INIT(16'h8778)) 
    sum_carry__1_i_6
       (.I0(rd10[10]),
        .I1(rd11),
        .I2(SrcB[10]),
        .I3(ALUControl),
        .O(clk_11[2]));
  LUT4 #(
    .INIT(16'h8778)) 
    sum_carry__1_i_7
       (.I0(rd10[9]),
        .I1(rd11),
        .I2(SrcB[9]),
        .I3(ALUControl),
        .O(clk_11[1]));
  LUT4 #(
    .INIT(16'h8778)) 
    sum_carry__1_i_8
       (.I0(rd10[8]),
        .I1(rd11),
        .I2(SrcB[8]),
        .I3(ALUControl),
        .O(clk_11[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    sum_carry__2_i_1
       (.I0(Instr[13]),
        .I1(Instr[15]),
        .I2(Instr[12]),
        .I3(Instr[11]),
        .I4(Instr[14]),
        .I5(rd10[15]),
        .O(SrcA[15]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    sum_carry__2_i_2
       (.I0(Instr[13]),
        .I1(Instr[15]),
        .I2(Instr[12]),
        .I3(Instr[11]),
        .I4(Instr[14]),
        .I5(rd10[14]),
        .O(SrcA[14]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    sum_carry__2_i_3
       (.I0(Instr[13]),
        .I1(Instr[15]),
        .I2(Instr[12]),
        .I3(Instr[11]),
        .I4(Instr[14]),
        .I5(rd10[13]),
        .O(SrcA[13]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    sum_carry__2_i_4
       (.I0(Instr[13]),
        .I1(Instr[15]),
        .I2(Instr[12]),
        .I3(Instr[11]),
        .I4(Instr[14]),
        .I5(rd10[12]),
        .O(SrcA[12]));
  LUT4 #(
    .INIT(16'h8778)) 
    sum_carry__2_i_5
       (.I0(rd10[15]),
        .I1(rd11),
        .I2(SrcB[15]),
        .I3(ALUControl),
        .O(clk_12[3]));
  LUT4 #(
    .INIT(16'h8778)) 
    sum_carry__2_i_6
       (.I0(rd10[14]),
        .I1(rd11),
        .I2(SrcB[14]),
        .I3(ALUControl),
        .O(clk_12[2]));
  LUT4 #(
    .INIT(16'h8778)) 
    sum_carry__2_i_7
       (.I0(rd10[13]),
        .I1(rd11),
        .I2(SrcB[13]),
        .I3(ALUControl),
        .O(clk_12[1]));
  LUT4 #(
    .INIT(16'h8778)) 
    sum_carry__2_i_8
       (.I0(rd10[12]),
        .I1(rd11),
        .I2(SrcB[12]),
        .I3(ALUControl),
        .O(clk_12[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    sum_carry__3_i_1
       (.I0(Instr[13]),
        .I1(Instr[15]),
        .I2(Instr[12]),
        .I3(Instr[11]),
        .I4(Instr[14]),
        .I5(rd10[19]),
        .O(SrcA[19]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    sum_carry__3_i_2
       (.I0(Instr[13]),
        .I1(Instr[15]),
        .I2(Instr[12]),
        .I3(Instr[11]),
        .I4(Instr[14]),
        .I5(rd10[18]),
        .O(SrcA[18]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    sum_carry__3_i_3
       (.I0(Instr[13]),
        .I1(Instr[15]),
        .I2(Instr[12]),
        .I3(Instr[11]),
        .I4(Instr[14]),
        .I5(rd10[17]),
        .O(SrcA[17]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    sum_carry__3_i_4
       (.I0(Instr[13]),
        .I1(Instr[15]),
        .I2(Instr[12]),
        .I3(Instr[11]),
        .I4(Instr[14]),
        .I5(rd10[16]),
        .O(SrcA[16]));
  LUT4 #(
    .INIT(16'h8778)) 
    sum_carry__3_i_5
       (.I0(rd10[19]),
        .I1(rd11),
        .I2(SrcB[19]),
        .I3(ALUControl),
        .O(clk_13[3]));
  LUT4 #(
    .INIT(16'h8778)) 
    sum_carry__3_i_6
       (.I0(rd10[18]),
        .I1(rd11),
        .I2(SrcB[18]),
        .I3(ALUControl),
        .O(clk_13[2]));
  LUT4 #(
    .INIT(16'h8778)) 
    sum_carry__3_i_7
       (.I0(rd10[17]),
        .I1(rd11),
        .I2(SrcB[17]),
        .I3(ALUControl),
        .O(clk_13[1]));
  LUT4 #(
    .INIT(16'h8778)) 
    sum_carry__3_i_8
       (.I0(rd10[16]),
        .I1(rd11),
        .I2(SrcB[16]),
        .I3(ALUControl),
        .O(clk_13[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    sum_carry__4_i_1
       (.I0(Instr[13]),
        .I1(Instr[15]),
        .I2(Instr[12]),
        .I3(Instr[11]),
        .I4(Instr[14]),
        .I5(rd10[23]),
        .O(SrcA[23]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    sum_carry__4_i_2
       (.I0(Instr[13]),
        .I1(Instr[15]),
        .I2(Instr[12]),
        .I3(Instr[11]),
        .I4(Instr[14]),
        .I5(rd10[22]),
        .O(SrcA[22]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    sum_carry__4_i_3
       (.I0(Instr[13]),
        .I1(Instr[15]),
        .I2(Instr[12]),
        .I3(Instr[11]),
        .I4(Instr[14]),
        .I5(rd10[21]),
        .O(SrcA[21]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    sum_carry__4_i_4
       (.I0(Instr[13]),
        .I1(Instr[15]),
        .I2(Instr[12]),
        .I3(Instr[11]),
        .I4(Instr[14]),
        .I5(rd10[20]),
        .O(SrcA[20]));
  LUT4 #(
    .INIT(16'h8778)) 
    sum_carry__4_i_5
       (.I0(rd10[23]),
        .I1(rd11),
        .I2(SrcB[23]),
        .I3(ALUControl),
        .O(clk_14[3]));
  LUT4 #(
    .INIT(16'h8778)) 
    sum_carry__4_i_6
       (.I0(rd10[22]),
        .I1(rd11),
        .I2(SrcB[22]),
        .I3(ALUControl),
        .O(clk_14[2]));
  LUT4 #(
    .INIT(16'h8778)) 
    sum_carry__4_i_7
       (.I0(rd10[21]),
        .I1(rd11),
        .I2(SrcB[21]),
        .I3(ALUControl),
        .O(clk_14[1]));
  LUT4 #(
    .INIT(16'h8778)) 
    sum_carry__4_i_8
       (.I0(rd10[20]),
        .I1(rd11),
        .I2(SrcB[20]),
        .I3(ALUControl),
        .O(clk_14[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    sum_carry__5_i_1
       (.I0(Instr[13]),
        .I1(Instr[15]),
        .I2(Instr[12]),
        .I3(Instr[11]),
        .I4(Instr[14]),
        .I5(rd10[27]),
        .O(SrcA[27]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    sum_carry__5_i_2
       (.I0(Instr[13]),
        .I1(Instr[15]),
        .I2(Instr[12]),
        .I3(Instr[11]),
        .I4(Instr[14]),
        .I5(rd10[26]),
        .O(SrcA[26]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    sum_carry__5_i_3
       (.I0(Instr[13]),
        .I1(Instr[15]),
        .I2(Instr[12]),
        .I3(Instr[11]),
        .I4(Instr[14]),
        .I5(rd10[25]),
        .O(SrcA[25]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    sum_carry__5_i_4
       (.I0(Instr[13]),
        .I1(Instr[15]),
        .I2(Instr[12]),
        .I3(Instr[11]),
        .I4(Instr[14]),
        .I5(rd10[24]),
        .O(SrcA[24]));
  LUT4 #(
    .INIT(16'h8778)) 
    sum_carry__5_i_5
       (.I0(rd10[27]),
        .I1(rd11),
        .I2(SrcB[27]),
        .I3(ALUControl),
        .O(clk_15[3]));
  LUT4 #(
    .INIT(16'h8778)) 
    sum_carry__5_i_6
       (.I0(rd10[26]),
        .I1(rd11),
        .I2(SrcB[26]),
        .I3(ALUControl),
        .O(clk_15[2]));
  LUT4 #(
    .INIT(16'h8778)) 
    sum_carry__5_i_7
       (.I0(rd10[25]),
        .I1(rd11),
        .I2(SrcB[25]),
        .I3(ALUControl),
        .O(clk_15[1]));
  LUT4 #(
    .INIT(16'h8778)) 
    sum_carry__5_i_8
       (.I0(rd10[24]),
        .I1(rd11),
        .I2(SrcB[24]),
        .I3(ALUControl),
        .O(clk_15[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    sum_carry__6_i_1
       (.I0(Instr[13]),
        .I1(Instr[15]),
        .I2(Instr[12]),
        .I3(Instr[11]),
        .I4(Instr[14]),
        .I5(rd10[30]),
        .O(SrcA[30]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    sum_carry__6_i_2
       (.I0(Instr[13]),
        .I1(Instr[15]),
        .I2(Instr[12]),
        .I3(Instr[11]),
        .I4(Instr[14]),
        .I5(rd10[29]),
        .O(SrcA[29]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    sum_carry__6_i_3
       (.I0(Instr[13]),
        .I1(Instr[15]),
        .I2(Instr[12]),
        .I3(Instr[11]),
        .I4(Instr[14]),
        .I5(rd10[28]),
        .O(SrcA[28]));
  LUT4 #(
    .INIT(16'h8778)) 
    sum_carry__6_i_4
       (.I0(rd10[31]),
        .I1(rd11),
        .I2(ALUControl),
        .I3(clk_0[1]),
        .O(clk_16[3]));
  LUT4 #(
    .INIT(16'h8778)) 
    sum_carry__6_i_5
       (.I0(rd10[30]),
        .I1(rd11),
        .I2(clk_0[0]),
        .I3(ALUControl),
        .O(clk_16[2]));
  LUT4 #(
    .INIT(16'h8778)) 
    sum_carry__6_i_6
       (.I0(rd10[29]),
        .I1(rd11),
        .I2(SrcB[29]),
        .I3(ALUControl),
        .O(clk_16[1]));
  LUT4 #(
    .INIT(16'h8778)) 
    sum_carry__6_i_7
       (.I0(rd10[28]),
        .I1(rd11),
        .I2(SrcB[28]),
        .I3(ALUControl),
        .O(clk_16[0]));
  LUT2 #(
    .INIT(4'h6)) 
    sum_carry_i_1
       (.I0(ALUControl),
        .I1(SrcB[0]),
        .O(\ALUResult[0]_INST_0_i_6_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    sum_carry_i_2
       (.I0(Instr[13]),
        .I1(Instr[15]),
        .I2(Instr[12]),
        .I3(Instr[11]),
        .I4(Instr[14]),
        .I5(rd10[3]),
        .O(SrcA[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    sum_carry_i_3
       (.I0(Instr[13]),
        .I1(Instr[15]),
        .I2(Instr[12]),
        .I3(Instr[11]),
        .I4(Instr[14]),
        .I5(rd10[2]),
        .O(SrcA[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    sum_carry_i_4
       (.I0(Instr[13]),
        .I1(Instr[15]),
        .I2(Instr[12]),
        .I3(Instr[11]),
        .I4(Instr[14]),
        .I5(rd10[1]),
        .O(SrcA[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    sum_carry_i_5
       (.I0(Instr[13]),
        .I1(Instr[15]),
        .I2(Instr[12]),
        .I3(Instr[11]),
        .I4(Instr[14]),
        .I5(rd10[0]),
        .O(SrcA[0]));
  LUT4 #(
    .INIT(16'h8778)) 
    sum_carry_i_6
       (.I0(rd10[3]),
        .I1(rd11),
        .I2(SrcB[3]),
        .I3(ALUControl),
        .O(clk_9[3]));
  LUT4 #(
    .INIT(16'h8778)) 
    sum_carry_i_7
       (.I0(rd10[2]),
        .I1(rd11),
        .I2(SrcB[2]),
        .I3(ALUControl),
        .O(clk_9[2]));
  LUT4 #(
    .INIT(16'h8778)) 
    sum_carry_i_8
       (.I0(rd10[1]),
        .I1(rd11),
        .I2(SrcB[1]),
        .I3(ALUControl),
        .O(clk_9[1]));
  LUT3 #(
    .INIT(8'h78)) 
    sum_carry_i_9
       (.I0(rd10[0]),
        .I1(rd11),
        .I2(ALUControl),
        .O(clk_9[0]));
endmodule

(* ORIG_REF_NAME = "riscv_single" *) 
module design_1_top_0_0_riscv_single
   (clk,
    reset,
    PC,
    Instr,
    MemWrite,
    ALUResult,
    WriteData,
    ReadData,
    PCReady,
    MemStrobe);
  input clk;
  input reset;
  output [31:0]PC;
  input [31:0]Instr;
  output [1:0]MemWrite;
  output [31:0]ALUResult;
  output [31:0]WriteData;
  input [31:0]ReadData;
  input PCReady;
  output MemStrobe;

  wire \<const0> ;
  wire [31:0]ALUResult;
  wire [31:0]Instr;
  wire MemStrobe;
  wire [0:0]\^MemWrite ;
  wire [31:0]PC;
  wire PCReady;
  wire [31:0]ReadData;
  wire [31:0]WriteData;
  wire clk;
  wire reset;

  assign MemWrite[1] = \<const0> ;
  assign MemWrite[0] = \^MemWrite [0];
  GND GND
       (.G(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h1)) 
    MemStrobe_INST_0
       (.I0(Instr[4]),
        .I1(Instr[6]),
        .O(MemStrobe));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \MemWrite[0]_INST_0 
       (.I0(Instr[4]),
        .I1(Instr[5]),
        .I2(Instr[12]),
        .I3(Instr[6]),
        .O(\^MemWrite ));
  design_1_top_0_0_datapath dp
       (.ALUResult({ALUResult[29:12],ALUResult[9],ALUResult[7:2]}),
        .\ALUResult[0]_INST_0_i_3 (ALUResult[0]),
        .\ALUResult[1]_INST_0_i_4 (ALUResult[1]),
        .\ALUResult[31]_INST_0_i_3 (ALUResult[30]),
        .\ALUResult[31]_INST_0_i_3_0 (ALUResult[8]),
        .\ALUResult[31]_INST_0_i_3_1 (ALUResult[11]),
        .\ALUResult[31]_INST_0_i_3_2 (ALUResult[10]),
        .\ALUResult[31]_INST_0_i_6 (ALUResult[31]),
        .Instr(Instr[31:2]),
        .PC(PC[31:1]),
        .PCReady(PCReady),
        .ReadData(ReadData),
        .WriteData(WriteData),
        .clk(clk),
        .\q_reg[0] (PC[0]),
        .reset(reset));
endmodule

(* ORIG_REF_NAME = "top" *) (* keep_hierarchy = "soft" *) 
module design_1_top_0_0_top
   (clk,
    reset,
    doneM,
    readDataM,
    writeDataM,
    addressM,
    DRW,
    AXIStart);
  input clk;
  (* mark_debug = "true" *) input reset;
  input doneM;
  (* mark_debug = "true" *) input [31:0]readDataM;
  (* mark_debug = "true" *) output [31:0]writeDataM;
  (* mark_debug = "true" *) output [31:0]addressM;
  output DRW;
  output AXIStart;

  wire AXIStart;
  wire DRW;
  (* MARK_DEBUG *) wire [31:0]Instr;
  wire MStrobe;
  wire MemWrite;
  (* MARK_DEBUG *) wire [31:0]PC;
  (* MARK_DEBUG *) wire PCReady;
  (* MARK_DEBUG *) wire [31:0]addressM;
  wire clk;
  wire doneM;
  (* MARK_DEBUG *) wire [31:0]readDataM;
  (* MARK_DEBUG *) wire reset;
  (* MARK_DEBUG *) wire [31:0]writeDataM;
  wire [1:1]NLW_riscv_single_MemWrite_UNCONNECTED;

  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(Instr[31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(Instr[30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(Instr[21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(Instr[20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(Instr[19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(Instr[18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(Instr[17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(Instr[16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(Instr[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(Instr[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(Instr[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_19
       (.I0(1'b0),
        .O(Instr[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(Instr[29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_20
       (.I0(1'b0),
        .O(Instr[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_21
       (.I0(1'b0),
        .O(Instr[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_22
       (.I0(1'b0),
        .O(Instr[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_23
       (.I0(1'b0),
        .O(Instr[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_24
       (.I0(1'b0),
        .O(Instr[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_25
       (.I0(1'b0),
        .O(Instr[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_26
       (.I0(1'b0),
        .O(Instr[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_27
       (.I0(1'b0),
        .O(Instr[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_28
       (.I0(1'b0),
        .O(Instr[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_29
       (.I0(1'b0),
        .O(Instr[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(Instr[28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_30
       (.I0(1'b0),
        .O(Instr[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_31
       (.I0(1'b0),
        .O(Instr[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(Instr[27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(Instr[26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(Instr[25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(Instr[24]));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(Instr[23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(Instr[22]));
  (* KEEP_HIERARCHY = "soft" *) 
  design_1_top_0_0_MemControl memcontrol
       (.AXIstart(AXIStart),
        .DRW(DRW),
        .Done(PCReady),
        .MStrobe(MStrobe),
        .MemWrite(MemWrite),
        .Trigger(doneM),
        .clk(clk),
        .reset(reset));
  (* KEEP_HIERARCHY = "soft" *) 
  design_1_top_0_0_riscv_single riscv_single
       (.ALUResult(addressM),
        .Instr({Instr[31:2],1'b0,1'b0}),
        .MemStrobe(MStrobe),
        .MemWrite({NLW_riscv_single_MemWrite_UNCONNECTED[1],MemWrite}),
        .PC(PC),
        .PCReady(PCReady),
        .ReadData(readDataM),
        .WriteData(writeDataM),
        .clk(clk),
        .reset(reset));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
