-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Mon Mar 30 17:19:44 2026
-- Host        : CEAT-ENDV350-04 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/jereyou/Documents/Repo/ECEN4243-Lab2/lab2/lab2.srcs/sources_1/bd/design_1/ip/design_1_top_0_0/design_1_top_0_0_sim_netlist.vhdl
-- Design      : design_1_top_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_MemControl is
  port (
    Done : out STD_LOGIC;
    MStrobe : in STD_LOGIC;
    MemWrite : in STD_LOGIC;
    Trigger : in STD_LOGIC;
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    DRW : out STD_LOGIC;
    AXIstart : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_0_0_MemControl : entity is "MemControl";
end design_1_top_0_0_MemControl;

architecture STRUCTURE of design_1_top_0_0_MemControl is
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_1_n_0\ : STD_LOGIC;
  signal nextstate : STD_LOGIC_VECTOR ( 0 to 0 );
  signal state : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of AXIstart_INST_0 : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of DRW_INST_0 : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of Done_INST_0 : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1\ : label is "soft_lutpair39";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "Idle:000,ReadStart:100,WriteStart:001,ReadData:110,ReadMem:101,WriteData:011,WriteMem:010";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "Idle:000,ReadStart:100,WriteStart:001,ReadData:110,ReadMem:101,WriteData:011,WriteMem:010";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "Idle:000,ReadStart:100,WriteStart:001,ReadData:110,ReadMem:101,WriteData:011,WriteMem:010";
begin
AXIstart_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      I2 => state(1),
      O => AXIstart
    );
DRW_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => state(0),
      O => DRW
    );
Done_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => state(0),
      I1 => state(2),
      I2 => state(1),
      O => Done
    );
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => nextstate(0),
      I1 => reset,
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"101010105D585858"
    )
        port map (
      I0 => state(1),
      I1 => Trigger,
      I2 => state(2),
      I3 => MemWrite,
      I4 => MStrobe,
      I5 => state(0),
      O => nextstate(0)
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001A12"
    )
        port map (
      I0 => state(0),
      I1 => state(2),
      I2 => state(1),
      I3 => Trigger,
      I4 => reset,
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000AABA"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      I2 => MStrobe,
      I3 => MemWrite,
      I4 => state(1),
      I5 => reset,
      O => \FSM_sequential_state[2]_i_1_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => state(0),
      R => '0'
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[1]_i_1_n_0\,
      Q => state(1),
      R => '0'
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[2]_i_1_n_0\,
      Q => state(2),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_adder is
  port (
    d2 : out STD_LOGIC_VECTOR ( 30 downto 0 );
    wd3 : out STD_LOGIC_VECTOR ( 6 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \q[7]_i_8\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S : in STD_LOGIC_VECTOR ( 0 to 0 );
    rf_reg_r1_0_31_6_11_i_3 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rf_reg_r1_0_31_12_17_i_1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rf_reg_r1_0_31_12_17_i_11 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rf_reg_r1_0_31_18_23_i_11 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rf_reg_r1_0_31_24_29_i_7 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rf_reg_r1_0_31_24_29_i_15 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    rf_reg_r1_0_31_24_29_i_15_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    d3 : in STD_LOGIC_VECTOR ( 6 downto 0 );
    Instr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    rf_reg_r1_0_31_0_5 : in STD_LOGIC;
    rf_reg_r1_0_31_0_5_0 : in STD_LOGIC;
    rf_reg_r1_0_31_0_5_1 : in STD_LOGIC;
    rf_reg_r1_0_31_0_5_2 : in STD_LOGIC;
    rf_reg_r1_0_31_0_5_3 : in STD_LOGIC;
    rf_reg_r1_0_31_6_11 : in STD_LOGIC;
    rf_reg_r1_0_31_6_11_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_0_0_adder : entity is "adder";
end design_1_top_0_0_adder;

architecture STRUCTURE of design_1_top_0_0_adder is
  signal \^d2\ : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal \y_carry__0_n_0\ : STD_LOGIC;
  signal \y_carry__0_n_1\ : STD_LOGIC;
  signal \y_carry__0_n_2\ : STD_LOGIC;
  signal \y_carry__0_n_3\ : STD_LOGIC;
  signal \y_carry__1_n_0\ : STD_LOGIC;
  signal \y_carry__1_n_1\ : STD_LOGIC;
  signal \y_carry__1_n_2\ : STD_LOGIC;
  signal \y_carry__1_n_3\ : STD_LOGIC;
  signal \y_carry__2_n_0\ : STD_LOGIC;
  signal \y_carry__2_n_1\ : STD_LOGIC;
  signal \y_carry__2_n_2\ : STD_LOGIC;
  signal \y_carry__2_n_3\ : STD_LOGIC;
  signal \y_carry__3_n_0\ : STD_LOGIC;
  signal \y_carry__3_n_1\ : STD_LOGIC;
  signal \y_carry__3_n_2\ : STD_LOGIC;
  signal \y_carry__3_n_3\ : STD_LOGIC;
  signal \y_carry__4_n_0\ : STD_LOGIC;
  signal \y_carry__4_n_1\ : STD_LOGIC;
  signal \y_carry__4_n_2\ : STD_LOGIC;
  signal \y_carry__4_n_3\ : STD_LOGIC;
  signal \y_carry__5_n_0\ : STD_LOGIC;
  signal \y_carry__5_n_1\ : STD_LOGIC;
  signal \y_carry__5_n_2\ : STD_LOGIC;
  signal \y_carry__5_n_3\ : STD_LOGIC;
  signal \y_carry__6_n_2\ : STD_LOGIC;
  signal \y_carry__6_n_3\ : STD_LOGIC;
  signal y_carry_n_0 : STD_LOGIC;
  signal y_carry_n_1 : STD_LOGIC;
  signal y_carry_n_2 : STD_LOGIC;
  signal y_carry_n_3 : STD_LOGIC;
  signal \NLW_y_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_y_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of y_carry : label is 35;
  attribute ADDER_THRESHOLD of \y_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \y_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \y_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \y_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \y_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \y_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \y_carry__6\ : label is 35;
begin
  d2(30 downto 0) <= \^d2\(30 downto 0);
rf_reg_r1_0_31_0_5_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFFCCFF0A00CC00"
    )
        port map (
      I0 => \^d2\(0),
      I1 => d3(0),
      I2 => Instr(1),
      I3 => Instr(0),
      I4 => Instr(2),
      I5 => rf_reg_r1_0_31_0_5,
      O => wd3(0)
    );
rf_reg_r1_0_31_0_5_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFFCCFF0A00CC00"
    )
        port map (
      I0 => \^d2\(2),
      I1 => d3(2),
      I2 => Instr(1),
      I3 => Instr(0),
      I4 => Instr(2),
      I5 => rf_reg_r1_0_31_0_5_1,
      O => wd3(2)
    );
rf_reg_r1_0_31_0_5_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFFCCFF0A00CC00"
    )
        port map (
      I0 => \^d2\(1),
      I1 => d3(1),
      I2 => Instr(1),
      I3 => Instr(0),
      I4 => Instr(2),
      I5 => rf_reg_r1_0_31_0_5_0,
      O => wd3(1)
    );
rf_reg_r1_0_31_0_5_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFFCCFF0A00CC00"
    )
        port map (
      I0 => \^d2\(4),
      I1 => d3(4),
      I2 => Instr(1),
      I3 => Instr(0),
      I4 => Instr(2),
      I5 => rf_reg_r1_0_31_0_5_3,
      O => wd3(4)
    );
rf_reg_r1_0_31_0_5_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFFCCFF0A00CC00"
    )
        port map (
      I0 => \^d2\(3),
      I1 => d3(3),
      I2 => Instr(1),
      I3 => Instr(0),
      I4 => Instr(2),
      I5 => rf_reg_r1_0_31_0_5_2,
      O => wd3(3)
    );
rf_reg_r1_0_31_6_11_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFFCCFF0A00CC00"
    )
        port map (
      I0 => \^d2\(6),
      I1 => d3(6),
      I2 => Instr(1),
      I3 => Instr(0),
      I4 => Instr(2),
      I5 => rf_reg_r1_0_31_6_11_0,
      O => wd3(6)
    );
rf_reg_r1_0_31_6_11_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFFCCFF0A00CC00"
    )
        port map (
      I0 => \^d2\(5),
      I1 => d3(5),
      I2 => Instr(1),
      I3 => Instr(0),
      I4 => Instr(2),
      I5 => rf_reg_r1_0_31_6_11,
      O => wd3(5)
    );
y_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => y_carry_n_0,
      CO(2) => y_carry_n_1,
      CO(1) => y_carry_n_2,
      CO(0) => y_carry_n_3,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => DI(1),
      DI(0) => '0',
      O(3 downto 0) => \^d2\(3 downto 0),
      S(3) => \q[7]_i_8\(0),
      S(2) => DI(2),
      S(1) => S(0),
      S(0) => DI(0)
    );
\y_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => y_carry_n_0,
      CO(3) => \y_carry__0_n_0\,
      CO(2) => \y_carry__0_n_1\,
      CO(1) => \y_carry__0_n_2\,
      CO(0) => \y_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \^d2\(7 downto 4),
      S(3) => rf_reg_r1_0_31_6_11_i_3(0),
      S(2 downto 0) => \q[7]_i_8\(3 downto 1)
    );
\y_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__0_n_0\,
      CO(3) => \y_carry__1_n_0\,
      CO(2) => \y_carry__1_n_1\,
      CO(1) => \y_carry__1_n_2\,
      CO(0) => \y_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \^d2\(11 downto 8),
      S(3) => rf_reg_r1_0_31_12_17_i_1(0),
      S(2 downto 0) => rf_reg_r1_0_31_6_11_i_3(3 downto 1)
    );
\y_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__1_n_0\,
      CO(3) => \y_carry__2_n_0\,
      CO(2) => \y_carry__2_n_1\,
      CO(1) => \y_carry__2_n_2\,
      CO(0) => \y_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \^d2\(15 downto 12),
      S(3) => rf_reg_r1_0_31_12_17_i_11(0),
      S(2 downto 0) => rf_reg_r1_0_31_12_17_i_1(3 downto 1)
    );
\y_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__2_n_0\,
      CO(3) => \y_carry__3_n_0\,
      CO(2) => \y_carry__3_n_1\,
      CO(1) => \y_carry__3_n_2\,
      CO(0) => \y_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \^d2\(19 downto 16),
      S(3) => rf_reg_r1_0_31_18_23_i_11(0),
      S(2 downto 0) => rf_reg_r1_0_31_12_17_i_11(3 downto 1)
    );
\y_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__3_n_0\,
      CO(3) => \y_carry__4_n_0\,
      CO(2) => \y_carry__4_n_1\,
      CO(1) => \y_carry__4_n_2\,
      CO(0) => \y_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \^d2\(23 downto 20),
      S(3) => rf_reg_r1_0_31_24_29_i_7(0),
      S(2 downto 0) => rf_reg_r1_0_31_18_23_i_11(3 downto 1)
    );
\y_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__4_n_0\,
      CO(3) => \y_carry__5_n_0\,
      CO(2) => \y_carry__5_n_1\,
      CO(1) => \y_carry__5_n_2\,
      CO(0) => \y_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \^d2\(27 downto 24),
      S(3) => rf_reg_r1_0_31_24_29_i_15(0),
      S(2 downto 0) => rf_reg_r1_0_31_24_29_i_7(3 downto 1)
    );
\y_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__5_n_0\,
      CO(3 downto 2) => \NLW_y_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \y_carry__6_n_2\,
      CO(0) => \y_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_y_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => \^d2\(30 downto 28),
      S(3) => '0',
      S(2) => rf_reg_r1_0_31_24_29_i_15_0(0),
      S(1 downto 0) => rf_reg_r1_0_31_24_29_i_15(2 downto 1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_adder_0 is
  port (
    \q_reg[30]\ : out STD_LOGIC_VECTOR ( 19 downto 0 );
    \q_reg[19]\ : out STD_LOGIC;
    \q_reg[19]_0\ : out STD_LOGIC;
    \q_reg[19]_1\ : out STD_LOGIC;
    \q_reg[19]_2\ : out STD_LOGIC;
    \q_reg[23]\ : out STD_LOGIC;
    \q_reg[23]_0\ : out STD_LOGIC;
    \q_reg[23]_1\ : out STD_LOGIC;
    \q_reg[23]_2\ : out STD_LOGIC;
    \q_reg[27]\ : out STD_LOGIC;
    \q_reg[27]_0\ : out STD_LOGIC;
    \q_reg[27]_1\ : out STD_LOGIC;
    \q_reg[27]_2\ : out STD_LOGIC;
    DI : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rf_reg_r1_0_31_0_5_i_7 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rf_reg_r1_0_31_0_5_i_7_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rf_reg_r1_0_31_6_11_i_4 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rf_reg_r1_0_31_6_11_i_4_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rf_reg_r1_0_31_12_17_i_2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rf_reg_r1_0_31_12_17_i_2_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rf_reg_r1_0_31_12_17_i_14_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rf_reg_r1_0_31_12_17_i_14_1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rf_reg_r1_0_31_18_23_i_13_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rf_reg_r1_0_31_18_23_i_13_1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rf_reg_r1_0_31_24_29_i_9_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rf_reg_r1_0_31_24_29_i_9_1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rf_reg_r1_0_31_24_29_i_17 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    rf_reg_r1_0_31_24_29_i_17_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    d2 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    Instr : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_0_0_adder_0 : entity is "adder";
end design_1_top_0_0_adder_0;

architecture STRUCTURE of design_1_top_0_0_adder_0 is
  signal d3 : STD_LOGIC_VECTOR ( 27 downto 16 );
  signal \y_carry__0_n_0\ : STD_LOGIC;
  signal \y_carry__0_n_1\ : STD_LOGIC;
  signal \y_carry__0_n_2\ : STD_LOGIC;
  signal \y_carry__0_n_3\ : STD_LOGIC;
  signal \y_carry__1_n_0\ : STD_LOGIC;
  signal \y_carry__1_n_1\ : STD_LOGIC;
  signal \y_carry__1_n_2\ : STD_LOGIC;
  signal \y_carry__1_n_3\ : STD_LOGIC;
  signal \y_carry__2_n_0\ : STD_LOGIC;
  signal \y_carry__2_n_1\ : STD_LOGIC;
  signal \y_carry__2_n_2\ : STD_LOGIC;
  signal \y_carry__2_n_3\ : STD_LOGIC;
  signal \y_carry__3_n_0\ : STD_LOGIC;
  signal \y_carry__3_n_1\ : STD_LOGIC;
  signal \y_carry__3_n_2\ : STD_LOGIC;
  signal \y_carry__3_n_3\ : STD_LOGIC;
  signal \y_carry__4_n_0\ : STD_LOGIC;
  signal \y_carry__4_n_1\ : STD_LOGIC;
  signal \y_carry__4_n_2\ : STD_LOGIC;
  signal \y_carry__4_n_3\ : STD_LOGIC;
  signal \y_carry__5_n_0\ : STD_LOGIC;
  signal \y_carry__5_n_1\ : STD_LOGIC;
  signal \y_carry__5_n_2\ : STD_LOGIC;
  signal \y_carry__5_n_3\ : STD_LOGIC;
  signal \y_carry__6_n_1\ : STD_LOGIC;
  signal \y_carry__6_n_2\ : STD_LOGIC;
  signal \y_carry__6_n_3\ : STD_LOGIC;
  signal y_carry_n_0 : STD_LOGIC;
  signal y_carry_n_1 : STD_LOGIC;
  signal y_carry_n_2 : STD_LOGIC;
  signal y_carry_n_3 : STD_LOGIC;
  signal \NLW_y_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of y_carry : label is 35;
  attribute ADDER_THRESHOLD of \y_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \y_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \y_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \y_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \y_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \y_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \y_carry__6\ : label is 35;
begin
rf_reg_r1_0_31_12_17_i_11: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A00CA00"
    )
        port map (
      I0 => d3(17),
      I1 => d2(1),
      I2 => Instr(2),
      I3 => Instr(0),
      I4 => Instr(1),
      O => \q_reg[19]_0\
    );
rf_reg_r1_0_31_12_17_i_14: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A00CA00"
    )
        port map (
      I0 => d3(16),
      I1 => d2(0),
      I2 => Instr(2),
      I3 => Instr(0),
      I4 => Instr(1),
      O => \q_reg[19]\
    );
rf_reg_r1_0_31_18_23_i_11: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A00CA00"
    )
        port map (
      I0 => d3(21),
      I1 => d2(5),
      I2 => Instr(2),
      I3 => Instr(0),
      I4 => Instr(1),
      O => \q_reg[23]_0\
    );
rf_reg_r1_0_31_18_23_i_13: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A00CA00"
    )
        port map (
      I0 => d3(20),
      I1 => d2(4),
      I2 => Instr(2),
      I3 => Instr(0),
      I4 => Instr(1),
      O => \q_reg[23]\
    );
rf_reg_r1_0_31_18_23_i_15: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A00CA00"
    )
        port map (
      I0 => d3(23),
      I1 => d2(7),
      I2 => Instr(2),
      I3 => Instr(0),
      I4 => Instr(1),
      O => \q_reg[23]_2\
    );
rf_reg_r1_0_31_18_23_i_17: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A00CA00"
    )
        port map (
      I0 => d3(22),
      I1 => d2(6),
      I2 => Instr(2),
      I3 => Instr(0),
      I4 => Instr(1),
      O => \q_reg[23]_1\
    );
rf_reg_r1_0_31_18_23_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A00CA00"
    )
        port map (
      I0 => d3(19),
      I1 => d2(3),
      I2 => Instr(2),
      I3 => Instr(0),
      I4 => Instr(1),
      O => \q_reg[19]_2\
    );
rf_reg_r1_0_31_18_23_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A00CA00"
    )
        port map (
      I0 => d3(18),
      I1 => d2(2),
      I2 => Instr(2),
      I3 => Instr(0),
      I4 => Instr(1),
      O => \q_reg[19]_1\
    );
rf_reg_r1_0_31_24_29_i_11: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A00CA00"
    )
        port map (
      I0 => d3(27),
      I1 => d2(11),
      I2 => Instr(2),
      I3 => Instr(0),
      I4 => Instr(1),
      O => \q_reg[27]_2\
    );
rf_reg_r1_0_31_24_29_i_13: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A00CA00"
    )
        port map (
      I0 => d3(26),
      I1 => d2(10),
      I2 => Instr(2),
      I3 => Instr(0),
      I4 => Instr(1),
      O => \q_reg[27]_1\
    );
rf_reg_r1_0_31_24_29_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A00CA00"
    )
        port map (
      I0 => d3(25),
      I1 => d2(9),
      I2 => Instr(2),
      I3 => Instr(0),
      I4 => Instr(1),
      O => \q_reg[27]_0\
    );
rf_reg_r1_0_31_24_29_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A00CA00"
    )
        port map (
      I0 => d3(24),
      I1 => d2(8),
      I2 => Instr(2),
      I3 => Instr(0),
      I4 => Instr(1),
      O => \q_reg[27]\
    );
y_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => y_carry_n_0,
      CO(2) => y_carry_n_1,
      CO(1) => y_carry_n_2,
      CO(0) => y_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => DI(3 downto 0),
      O(3 downto 0) => \q_reg[30]\(3 downto 0),
      S(3 downto 0) => S(3 downto 0)
    );
\y_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => y_carry_n_0,
      CO(3) => \y_carry__0_n_0\,
      CO(2) => \y_carry__0_n_1\,
      CO(1) => \y_carry__0_n_2\,
      CO(0) => \y_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => rf_reg_r1_0_31_0_5_i_7(3 downto 0),
      O(3 downto 0) => \q_reg[30]\(7 downto 4),
      S(3 downto 0) => rf_reg_r1_0_31_0_5_i_7_0(3 downto 0)
    );
\y_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__0_n_0\,
      CO(3) => \y_carry__1_n_0\,
      CO(2) => \y_carry__1_n_1\,
      CO(1) => \y_carry__1_n_2\,
      CO(0) => \y_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => rf_reg_r1_0_31_6_11_i_4(3 downto 0),
      O(3 downto 0) => \q_reg[30]\(11 downto 8),
      S(3 downto 0) => rf_reg_r1_0_31_6_11_i_4_0(3 downto 0)
    );
\y_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__1_n_0\,
      CO(3) => \y_carry__2_n_0\,
      CO(2) => \y_carry__2_n_1\,
      CO(1) => \y_carry__2_n_2\,
      CO(0) => \y_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => rf_reg_r1_0_31_12_17_i_2(3 downto 0),
      O(3 downto 0) => \q_reg[30]\(15 downto 12),
      S(3 downto 0) => rf_reg_r1_0_31_12_17_i_2_0(3 downto 0)
    );
\y_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__2_n_0\,
      CO(3) => \y_carry__3_n_0\,
      CO(2) => \y_carry__3_n_1\,
      CO(1) => \y_carry__3_n_2\,
      CO(0) => \y_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => rf_reg_r1_0_31_12_17_i_14_0(3 downto 0),
      O(3 downto 0) => d3(19 downto 16),
      S(3 downto 0) => rf_reg_r1_0_31_12_17_i_14_1(3 downto 0)
    );
\y_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__3_n_0\,
      CO(3) => \y_carry__4_n_0\,
      CO(2) => \y_carry__4_n_1\,
      CO(1) => \y_carry__4_n_2\,
      CO(0) => \y_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => rf_reg_r1_0_31_18_23_i_13_0(3 downto 0),
      O(3 downto 0) => d3(23 downto 20),
      S(3 downto 0) => rf_reg_r1_0_31_18_23_i_13_1(3 downto 0)
    );
\y_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__4_n_0\,
      CO(3) => \y_carry__5_n_0\,
      CO(2) => \y_carry__5_n_1\,
      CO(1) => \y_carry__5_n_2\,
      CO(0) => \y_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => rf_reg_r1_0_31_24_29_i_9_0(3 downto 0),
      O(3 downto 0) => d3(27 downto 24),
      S(3 downto 0) => rf_reg_r1_0_31_24_29_i_9_1(3 downto 0)
    );
\y_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__5_n_0\,
      CO(3) => \NLW_y_carry__6_CO_UNCONNECTED\(3),
      CO(2) => \y_carry__6_n_1\,
      CO(1) => \y_carry__6_n_2\,
      CO(0) => \y_carry__6_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => rf_reg_r1_0_31_24_29_i_17(2 downto 0),
      O(3 downto 0) => \q_reg[30]\(19 downto 16),
      S(3 downto 0) => rf_reg_r1_0_31_24_29_i_17_0(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_alu is
  port (
    \sum_carry__6_i_7\ : out STD_LOGIC_VECTOR ( 29 downto 0 );
    O : out STD_LOGIC_VECTOR ( 0 to 0 );
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ALUResult[31]_INST_0_i_3\ : out STD_LOGIC;
    LT : out STD_LOGIC;
    ALUControl : out STD_LOGIC_VECTOR ( 0 to 0 );
    immext : out STD_LOGIC_VECTOR ( 0 to 0 );
    \sum__0_carry__0_0\ : in STD_LOGIC;
    SrcA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult[4]_INST_0_i_8\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult[8]_INST_0_i_3\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult[12]_INST_0_i_3\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult[16]_INST_0_i_3\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult[20]_INST_0_i_3\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult[24]_INST_0_i_3\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult[28]_INST_0_i_3\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \sum__0_carry__0_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \sum__0_carry__1_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \sum__0_carry__2_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \sum__0_carry__3_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \sum__0_carry__4_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \sum__0_carry__5_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \sum__0_carry__6_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q[31]_i_17\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SrcB : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \addressM[30]\ : in STD_LOGIC;
    \addressM[30]_0\ : in STD_LOGIC;
    \addressM[30]_1\ : in STD_LOGIC;
    \addressM[30]_2\ : in STD_LOGIC;
    \addressM[30]_3\ : in STD_LOGIC;
    \addressM[30]_4\ : in STD_LOGIC;
    \ALUControl__0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Instr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    sel0 : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_0_0_alu : entity is "alu";
end design_1_top_0_0_alu;

architecture STRUCTURE of design_1_top_0_0_alu is
  signal \^alucontrol\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \ALUResult[30]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[31]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \^o\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal sum : STD_LOGIC_VECTOR ( 30 to 30 );
  signal \sum__0_carry__0_n_0\ : STD_LOGIC;
  signal \sum__0_carry__0_n_1\ : STD_LOGIC;
  signal \sum__0_carry__0_n_2\ : STD_LOGIC;
  signal \sum__0_carry__0_n_3\ : STD_LOGIC;
  signal \sum__0_carry__1_n_0\ : STD_LOGIC;
  signal \sum__0_carry__1_n_1\ : STD_LOGIC;
  signal \sum__0_carry__1_n_2\ : STD_LOGIC;
  signal \sum__0_carry__1_n_3\ : STD_LOGIC;
  signal \sum__0_carry__2_n_0\ : STD_LOGIC;
  signal \sum__0_carry__2_n_1\ : STD_LOGIC;
  signal \sum__0_carry__2_n_2\ : STD_LOGIC;
  signal \sum__0_carry__2_n_3\ : STD_LOGIC;
  signal \sum__0_carry__3_n_0\ : STD_LOGIC;
  signal \sum__0_carry__3_n_1\ : STD_LOGIC;
  signal \sum__0_carry__3_n_2\ : STD_LOGIC;
  signal \sum__0_carry__3_n_3\ : STD_LOGIC;
  signal \sum__0_carry__4_n_0\ : STD_LOGIC;
  signal \sum__0_carry__4_n_1\ : STD_LOGIC;
  signal \sum__0_carry__4_n_2\ : STD_LOGIC;
  signal \sum__0_carry__4_n_3\ : STD_LOGIC;
  signal \sum__0_carry__5_n_0\ : STD_LOGIC;
  signal \sum__0_carry__5_n_1\ : STD_LOGIC;
  signal \sum__0_carry__5_n_2\ : STD_LOGIC;
  signal \sum__0_carry__5_n_3\ : STD_LOGIC;
  signal \sum__0_carry__6_n_1\ : STD_LOGIC;
  signal \sum__0_carry__6_n_2\ : STD_LOGIC;
  signal \sum__0_carry__6_n_3\ : STD_LOGIC;
  signal \sum__0_carry_n_0\ : STD_LOGIC;
  signal \sum__0_carry_n_1\ : STD_LOGIC;
  signal \sum__0_carry_n_2\ : STD_LOGIC;
  signal \sum__0_carry_n_3\ : STD_LOGIC;
  signal \sum_carry__0_n_0\ : STD_LOGIC;
  signal \sum_carry__0_n_1\ : STD_LOGIC;
  signal \sum_carry__0_n_2\ : STD_LOGIC;
  signal \sum_carry__0_n_3\ : STD_LOGIC;
  signal \sum_carry__1_n_0\ : STD_LOGIC;
  signal \sum_carry__1_n_1\ : STD_LOGIC;
  signal \sum_carry__1_n_2\ : STD_LOGIC;
  signal \sum_carry__1_n_3\ : STD_LOGIC;
  signal \sum_carry__2_n_0\ : STD_LOGIC;
  signal \sum_carry__2_n_1\ : STD_LOGIC;
  signal \sum_carry__2_n_2\ : STD_LOGIC;
  signal \sum_carry__2_n_3\ : STD_LOGIC;
  signal \sum_carry__3_n_0\ : STD_LOGIC;
  signal \sum_carry__3_n_1\ : STD_LOGIC;
  signal \sum_carry__3_n_2\ : STD_LOGIC;
  signal \sum_carry__3_n_3\ : STD_LOGIC;
  signal \sum_carry__4_n_0\ : STD_LOGIC;
  signal \sum_carry__4_n_1\ : STD_LOGIC;
  signal \sum_carry__4_n_2\ : STD_LOGIC;
  signal \sum_carry__4_n_3\ : STD_LOGIC;
  signal \sum_carry__5_n_0\ : STD_LOGIC;
  signal \sum_carry__5_n_1\ : STD_LOGIC;
  signal \sum_carry__5_n_2\ : STD_LOGIC;
  signal \sum_carry__5_n_3\ : STD_LOGIC;
  signal \sum_carry__6_n_1\ : STD_LOGIC;
  signal \sum_carry__6_n_2\ : STD_LOGIC;
  signal \sum_carry__6_n_3\ : STD_LOGIC;
  signal sum_carry_n_0 : STD_LOGIC;
  signal sum_carry_n_1 : STD_LOGIC;
  signal sum_carry_n_2 : STD_LOGIC;
  signal sum_carry_n_3 : STD_LOGIC;
  signal \NLW_sum__0_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sum__0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sum__0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sum__0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sum__0_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sum__0_carry__4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sum__0_carry__5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sum__0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sum_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of sum_carry : label is 35;
  attribute ADDER_THRESHOLD of \sum_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \sum_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \sum_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \sum_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \sum_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \sum_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \sum_carry__6\ : label is 35;
begin
  ALUControl(0) <= \^alucontrol\(0);
  O(0) <= \^o\(0);
\ALUResult[0]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFDFFFDE00400048"
    )
        port map (
      I0 => SrcB(1),
      I1 => SrcA(31),
      I2 => \^alucontrol\(0),
      I3 => \ALUControl__0\(0),
      I4 => \ALUControl__0\(1),
      I5 => \^o\(0),
      O => LT
    );
\ALUResult[30]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAACC"
    )
        port map (
      I0 => SrcB(0),
      I1 => \addressM[30]\,
      I2 => \ALUResult[30]_INST_0_i_3_n_0\,
      I3 => \addressM[30]_0\,
      I4 => \addressM[30]_1\,
      O => \ALUResult[31]_INST_0_i_3\
    );
\ALUResult[30]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FCFCAAAAC0C0"
    )
        port map (
      I0 => sum(30),
      I1 => SrcA(30),
      I2 => SrcB(0),
      I3 => \addressM[30]_2\,
      I4 => \addressM[30]_3\,
      I5 => \addressM[30]_4\,
      O => \ALUResult[30]_INST_0_i_3_n_0\
    );
\ALUResult[31]_INST_0_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F00F8F8"
    )
        port map (
      I0 => \ALUResult[31]_INST_0_i_24_n_0\,
      I1 => Instr(1),
      I2 => Instr(3),
      I3 => Instr(2),
      I4 => Instr(0),
      O => \^alucontrol\(0)
    );
\ALUResult[31]_INST_0_i_24\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CF0F0F8"
    )
        port map (
      I0 => Instr(2),
      I1 => Instr(9),
      I2 => Instr(6),
      I3 => Instr(7),
      I4 => Instr(5),
      O => \ALUResult[31]_INST_0_i_24_n_0\
    );
\sum__0_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sum__0_carry_n_0\,
      CO(2) => \sum__0_carry_n_1\,
      CO(1) => \sum__0_carry_n_2\,
      CO(0) => \sum__0_carry_n_3\,
      CYINIT => \sum__0_carry__0_0\,
      DI(3 downto 0) => SrcA(3 downto 0),
      O(3 downto 0) => \NLW_sum__0_carry_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \sum__0_carry__0_1\(3 downto 0)
    );
\sum__0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum__0_carry_n_0\,
      CO(3) => \sum__0_carry__0_n_0\,
      CO(2) => \sum__0_carry__0_n_1\,
      CO(1) => \sum__0_carry__0_n_2\,
      CO(0) => \sum__0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => SrcA(7 downto 4),
      O(3 downto 0) => \NLW_sum__0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \sum__0_carry__1_0\(3 downto 0)
    );
\sum__0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum__0_carry__0_n_0\,
      CO(3) => \sum__0_carry__1_n_0\,
      CO(2) => \sum__0_carry__1_n_1\,
      CO(1) => \sum__0_carry__1_n_2\,
      CO(0) => \sum__0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => SrcA(11 downto 8),
      O(3 downto 0) => \NLW_sum__0_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \sum__0_carry__2_0\(3 downto 0)
    );
\sum__0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum__0_carry__1_n_0\,
      CO(3) => \sum__0_carry__2_n_0\,
      CO(2) => \sum__0_carry__2_n_1\,
      CO(1) => \sum__0_carry__2_n_2\,
      CO(0) => \sum__0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => SrcA(15 downto 12),
      O(3 downto 0) => \NLW_sum__0_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \sum__0_carry__3_0\(3 downto 0)
    );
\sum__0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum__0_carry__2_n_0\,
      CO(3) => \sum__0_carry__3_n_0\,
      CO(2) => \sum__0_carry__3_n_1\,
      CO(1) => \sum__0_carry__3_n_2\,
      CO(0) => \sum__0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => SrcA(19 downto 16),
      O(3 downto 0) => \NLW_sum__0_carry__3_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \sum__0_carry__4_0\(3 downto 0)
    );
\sum__0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum__0_carry__3_n_0\,
      CO(3) => \sum__0_carry__4_n_0\,
      CO(2) => \sum__0_carry__4_n_1\,
      CO(1) => \sum__0_carry__4_n_2\,
      CO(0) => \sum__0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => SrcA(23 downto 20),
      O(3 downto 0) => \NLW_sum__0_carry__4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \sum__0_carry__5_0\(3 downto 0)
    );
\sum__0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum__0_carry__4_n_0\,
      CO(3) => \sum__0_carry__5_n_0\,
      CO(2) => \sum__0_carry__5_n_1\,
      CO(1) => \sum__0_carry__5_n_2\,
      CO(0) => \sum__0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => SrcA(27 downto 24),
      O(3 downto 0) => \NLW_sum__0_carry__5_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \sum__0_carry__6_0\(3 downto 0)
    );
\sum__0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum__0_carry__5_n_0\,
      CO(3) => CO(0),
      CO(2) => \sum__0_carry__6_n_1\,
      CO(1) => \sum__0_carry__6_n_2\,
      CO(0) => \sum__0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => SrcA(31 downto 28),
      O(3 downto 0) => \NLW_sum__0_carry__6_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \q[31]_i_17\(3 downto 0)
    );
sum_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => sum_carry_n_0,
      CO(2) => sum_carry_n_1,
      CO(1) => sum_carry_n_2,
      CO(0) => sum_carry_n_3,
      CYINIT => \sum__0_carry__0_0\,
      DI(3 downto 0) => SrcA(3 downto 0),
      O(3 downto 0) => \sum_carry__6_i_7\(3 downto 0),
      S(3 downto 0) => S(3 downto 0)
    );
\sum_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => sum_carry_n_0,
      CO(3) => \sum_carry__0_n_0\,
      CO(2) => \sum_carry__0_n_1\,
      CO(1) => \sum_carry__0_n_2\,
      CO(0) => \sum_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => SrcA(7 downto 4),
      O(3 downto 0) => \sum_carry__6_i_7\(7 downto 4),
      S(3 downto 0) => \ALUResult[4]_INST_0_i_8\(3 downto 0)
    );
\sum_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_carry__0_n_0\,
      CO(3) => \sum_carry__1_n_0\,
      CO(2) => \sum_carry__1_n_1\,
      CO(1) => \sum_carry__1_n_2\,
      CO(0) => \sum_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => SrcA(11 downto 8),
      O(3 downto 0) => \sum_carry__6_i_7\(11 downto 8),
      S(3 downto 0) => \ALUResult[8]_INST_0_i_3\(3 downto 0)
    );
\sum_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_carry__1_n_0\,
      CO(3) => \sum_carry__2_n_0\,
      CO(2) => \sum_carry__2_n_1\,
      CO(1) => \sum_carry__2_n_2\,
      CO(0) => \sum_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => SrcA(15 downto 12),
      O(3 downto 0) => \sum_carry__6_i_7\(15 downto 12),
      S(3 downto 0) => \ALUResult[12]_INST_0_i_3\(3 downto 0)
    );
\sum_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_carry__2_n_0\,
      CO(3) => \sum_carry__3_n_0\,
      CO(2) => \sum_carry__3_n_1\,
      CO(1) => \sum_carry__3_n_2\,
      CO(0) => \sum_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => SrcA(19 downto 16),
      O(3 downto 0) => \sum_carry__6_i_7\(19 downto 16),
      S(3 downto 0) => \ALUResult[16]_INST_0_i_3\(3 downto 0)
    );
\sum_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_carry__3_n_0\,
      CO(3) => \sum_carry__4_n_0\,
      CO(2) => \sum_carry__4_n_1\,
      CO(1) => \sum_carry__4_n_2\,
      CO(0) => \sum_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => SrcA(23 downto 20),
      O(3 downto 0) => \sum_carry__6_i_7\(23 downto 20),
      S(3 downto 0) => \ALUResult[20]_INST_0_i_3\(3 downto 0)
    );
\sum_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_carry__4_n_0\,
      CO(3) => \sum_carry__5_n_0\,
      CO(2) => \sum_carry__5_n_1\,
      CO(1) => \sum_carry__5_n_2\,
      CO(0) => \sum_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => SrcA(27 downto 24),
      O(3 downto 0) => \sum_carry__6_i_7\(27 downto 24),
      S(3 downto 0) => \ALUResult[24]_INST_0_i_3\(3 downto 0)
    );
\sum_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_carry__5_n_0\,
      CO(3) => \NLW_sum_carry__6_CO_UNCONNECTED\(3),
      CO(2) => \sum_carry__6_n_1\,
      CO(1) => \sum_carry__6_n_2\,
      CO(0) => \sum_carry__6_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => SrcA(30 downto 28),
      O(3) => \^o\(0),
      O(2) => sum(30),
      O(1 downto 0) => \sum_carry__6_i_7\(29 downto 28),
      S(3 downto 0) => \ALUResult[28]_INST_0_i_3\(3 downto 0)
    );
\y_carry__1_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FB3BC808"
    )
        port map (
      I0 => Instr(4),
      I1 => sel0(1),
      I2 => sel0(0),
      I3 => Instr(8),
      I4 => Instr(10),
      I5 => sel0(2),
      O => immext(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_flopenr is
  port (
    DI : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[7]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[11]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[15]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[19]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[23]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[27]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[30]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \q_reg[31]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \q[31]_i_11_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    wd3 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \ALUResult[31]_INST_0_i_16_0\ : out STD_LOGIC;
    sel0 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \ALUResult[31]_INST_0_i_16_1\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_16_2\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_16_3\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_3_0\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_14_0\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_14_1\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_9_0\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_23_0\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_22_0\ : out STD_LOGIC;
    \ALUControl__0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \ALUResult[31]_INST_0_i_12\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_12_0\ : out STD_LOGIC;
    \q[31]_i_18_0\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_18_0\ : out STD_LOGIC_VECTOR ( 27 downto 0 );
    y_carry_i_5_0 : out STD_LOGIC;
    \ALUResult[19]_INST_0_i_5_0\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_18_1\ : out STD_LOGIC;
    \q_reg[31]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult[30]_INST_0_i_5_0\ : out STD_LOGIC;
    \q_reg[30]_1\ : out STD_LOGIC;
    \q_reg[30]_2\ : out STD_LOGIC;
    rd21 : out STD_LOGIC;
    rd11 : out STD_LOGIC;
    \q[31]_i_15_0\ : out STD_LOGIC;
    \q_reg[2]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ALUResult[30]_INST_0_i_4_0\ : out STD_LOGIC;
    \q_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[7]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[11]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[15]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[19]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[23]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[27]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    PCReady : in STD_LOGIC;
    O : in STD_LOGIC_VECTOR ( 3 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    \q_reg[7]_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[11]_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[15]_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[19]_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[23]_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[27]_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[31]_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    PCSrc : in STD_LOGIC_VECTOR ( 0 to 0 );
    d2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[31]_3\ : in STD_LOGIC;
    \rf_reg_r1_0_31_30_31_i_1__0_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    Instr : in STD_LOGIC_VECTOR ( 29 downto 0 );
    rf_reg_r1_0_31_0_5 : in STD_LOGIC;
    \^s\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \rf_reg_r2_0_31_30_31__0\ : in STD_LOGIC;
    rf_reg_r2_0_31_30_31 : in STD_LOGIC;
    \q_reg[31]_4\ : in STD_LOGIC;
    \rf_reg_r2_0_31_30_31__0_0\ : in STD_LOGIC;
    ALUControl : in STD_LOGIC_VECTOR ( 0 to 0 );
    \y_carry__1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    ALUResult : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_0_0_flopenr : entity is "flopenr";
end design_1_top_0_0_flopenr;

architecture STRUCTURE of design_1_top_0_0_flopenr is
  signal \^alucontrol__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \ALUResult[11]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[19]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \^aluresult[19]_inst_0_i_5_0\ : STD_LOGIC;
  signal \^aluresult[30]_inst_0_i_4_0\ : STD_LOGIC;
  signal \ALUResult[31]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_14_0\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_14_1\ : STD_LOGIC;
  signal \ALUResult[31]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_16_1\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_18_1\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_22_0\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_23_0\ : STD_LOGIC;
  signal \ALUResult[31]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \ALUResult[31]_INST_0_i_33_n_0\ : STD_LOGIC;
  signal \^di\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \ext/immext\ : STD_LOGIC_VECTOR ( 30 downto 29 );
  signal \ext/immext__91\ : STD_LOGIC_VECTOR ( 31 to 31 );
  signal \^q[31]_i_11_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^q_reg[11]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^q_reg[15]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^q_reg[19]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^q_reg[23]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^q_reg[27]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^q_reg[30]_0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^q_reg[31]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^q_reg[7]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \rf_reg_r1_0_31_30_31_i_2__0_n_0\ : STD_LOGIC;
  signal rf_reg_r1_0_31_30_31_i_2_n_0 : STD_LOGIC;
  signal \^sel0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ALUResult[11]_INST_0_i_9\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \ALUResult[19]_INST_0_i_5\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \ALUResult[29]_INST_0_i_13\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \ALUResult[30]_INST_0_i_4\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \ALUResult[31]_INST_0_i_13\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \ALUResult[31]_INST_0_i_14\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \ALUResult[31]_INST_0_i_16\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \ALUResult[31]_INST_0_i_23\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \ALUResult[31]_INST_0_i_25\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \ALUResult[31]_INST_0_i_33\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \ALUResult[31]_INST_0_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \ALUResult[31]_INST_0_i_8\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \ALUResult[31]_INST_0_i_9\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \ALUResult[7]_INST_0_i_27\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \q[15]_i_10\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \q[15]_i_11\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \q[15]_i_12\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \q[15]_i_13\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \q[19]_i_12\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \q[19]_i_13\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \q[31]_i_10\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \q[31]_i_11\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \q[31]_i_15\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \q[31]_i_18\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \q[7]_i_11\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \q[7]_i_12\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of rf_reg_r1_0_31_24_29_i_17 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of y_carry_i_5 : label is "soft_lutpair0";
begin
  \ALUControl__0\(1 downto 0) <= \^alucontrol__0\(1 downto 0);
  \ALUResult[19]_INST_0_i_5_0\ <= \^aluresult[19]_inst_0_i_5_0\;
  \ALUResult[30]_INST_0_i_4_0\ <= \^aluresult[30]_inst_0_i_4_0\;
  \ALUResult[31]_INST_0_i_14_0\ <= \^aluresult[31]_inst_0_i_14_0\;
  \ALUResult[31]_INST_0_i_14_1\ <= \^aluresult[31]_inst_0_i_14_1\;
  \ALUResult[31]_INST_0_i_16_1\ <= \^aluresult[31]_inst_0_i_16_1\;
  \ALUResult[31]_INST_0_i_18_1\ <= \^aluresult[31]_inst_0_i_18_1\;
  \ALUResult[31]_INST_0_i_22_0\ <= \^aluresult[31]_inst_0_i_22_0\;
  \ALUResult[31]_INST_0_i_23_0\ <= \^aluresult[31]_inst_0_i_23_0\;
  DI(3 downto 0) <= \^di\(3 downto 0);
  \q[31]_i_11_0\(0) <= \^q[31]_i_11_0\(0);
  \q_reg[11]_0\(3 downto 0) <= \^q_reg[11]_0\(3 downto 0);
  \q_reg[15]_0\(3 downto 0) <= \^q_reg[15]_0\(3 downto 0);
  \q_reg[19]_0\(3 downto 0) <= \^q_reg[19]_0\(3 downto 0);
  \q_reg[23]_0\(3 downto 0) <= \^q_reg[23]_0\(3 downto 0);
  \q_reg[27]_0\(3 downto 0) <= \^q_reg[27]_0\(3 downto 0);
  \q_reg[30]_0\(2 downto 0) <= \^q_reg[30]_0\(2 downto 0);
  \q_reg[31]_0\(0) <= \^q_reg[31]_0\(0);
  \q_reg[7]_0\(3 downto 0) <= \^q_reg[7]_0\(3 downto 0);
  sel0(2 downto 0) <= \^sel0\(2 downto 0);
\ALUResult[11]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCFAAAACCC0AAAA"
    )
        port map (
      I0 => Instr(29),
      I1 => Instr(18),
      I2 => \ALUResult[19]_INST_0_i_10_n_0\,
      I3 => \ALUResult[11]_INST_0_i_9_n_0\,
      I4 => \^sel0\(1),
      I5 => Instr(5),
      O => y_carry_i_5_0
    );
\ALUResult[11]_INST_0_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Instr(1),
      I1 => Instr(0),
      O => \ALUResult[11]_INST_0_i_9_n_0\
    );
\ALUResult[19]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000022F22222"
    )
        port map (
      I0 => Instr(3),
      I1 => Instr(4),
      I2 => Instr(10),
      I3 => Instr(11),
      I4 => Instr(2),
      I5 => Instr(0),
      O => \ALUResult[19]_INST_0_i_10_n_0\
    );
\ALUResult[19]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => Instr(2),
      I1 => Instr(0),
      I2 => Instr(1),
      O => \^aluresult[19]_inst_0_i_5_0\
    );
\ALUResult[19]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000A220AAA"
    )
        port map (
      I0 => Instr(29),
      I1 => Instr(4),
      I2 => Instr(1),
      I3 => Instr(0),
      I4 => \ALUResult[19]_INST_0_i_10_n_0\,
      I5 => \^sel0\(2),
      O => \^aluresult[31]_inst_0_i_18_1\
    );
\ALUResult[1]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCC00CACACAAC"
    )
        port map (
      I0 => Instr(6),
      I1 => Instr(19),
      I2 => \^sel0\(1),
      I3 => \ALUResult[19]_INST_0_i_10_n_0\,
      I4 => \ALUResult[11]_INST_0_i_9_n_0\,
      I5 => \^sel0\(2),
      O => \ALUResult[31]_INST_0_i_18_0\(1)
    );
\ALUResult[29]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => Instr(16),
      I1 => Instr(13),
      I2 => Instr(14),
      I3 => Instr(17),
      I4 => Instr(15),
      O => rd11
    );
\ALUResult[29]_INST_0_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^aluresult[31]_inst_0_i_23_0\,
      I1 => \^aluresult[31]_inst_0_i_22_0\,
      O => \ALUResult[31]_INST_0_i_9_0\
    );
\ALUResult[29]_INST_0_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^alucontrol__0\(0),
      I1 => ALUControl(0),
      O => \ALUResult[31]_INST_0_i_12_0\
    );
\ALUResult[2]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCC00CACACAAC"
    )
        port map (
      I0 => Instr(7),
      I1 => Instr(20),
      I2 => \^sel0\(1),
      I3 => \ALUResult[19]_INST_0_i_10_n_0\,
      I4 => \ALUResult[11]_INST_0_i_9_n_0\,
      I5 => \^sel0\(2),
      O => \ALUResult[31]_INST_0_i_18_0\(2)
    );
\ALUResult[30]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => Instr(1),
      I1 => Instr(0),
      I2 => Instr(2),
      O => \^aluresult[30]_inst_0_i_4_0\
    );
\ALUResult[30]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AA8AAA"
    )
        port map (
      I0 => Instr(29),
      I1 => Instr(11),
      I2 => Instr(10),
      I3 => Instr(2),
      I4 => Instr(0),
      O => \ALUResult[30]_INST_0_i_5_0\
    );
\ALUResult[31]_INST_0_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"58"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(3),
      I2 => Instr(4),
      O => \ALUResult[31]_INST_0_i_13_n_0\
    );
\ALUResult[31]_INST_0_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(3),
      I2 => Instr(2),
      O => \ALUResult[31]_INST_0_i_14_n_0\
    );
\ALUResult[31]_INST_0_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => Instr(21),
      I1 => Instr(18),
      I2 => Instr(19),
      I3 => Instr(22),
      I4 => Instr(20),
      O => rd21
    );
\ALUResult[31]_INST_0_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F01010F"
    )
        port map (
      I0 => Instr(4),
      I1 => Instr(2),
      I2 => Instr(1),
      I3 => Instr(0),
      I4 => Instr(3),
      O => \^aluresult[31]_inst_0_i_16_1\
    );
\ALUResult[31]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF8F8800008F88"
    )
        port map (
      I0 => Instr(2),
      I1 => \ALUResult[31]_INST_0_i_25_n_0\,
      I2 => Instr(4),
      I3 => Instr(3),
      I4 => Instr(0),
      I5 => Instr(1),
      O => \^sel0\(0)
    );
\ALUResult[31]_INST_0_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88C8"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(2),
      I2 => Instr(10),
      I3 => Instr(11),
      O => \^sel0\(2)
    );
\ALUResult[31]_INST_0_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2280A2A2A2A22280"
    )
        port map (
      I0 => Instr(2),
      I1 => Instr(0),
      I2 => Instr(3),
      I3 => Instr(4),
      I4 => \ALUResult[31]_INST_0_i_33_n_0\,
      I5 => Instr(12),
      O => \^alucontrol__0\(1)
    );
\ALUResult[31]_INST_0_i_23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA8A80"
    )
        port map (
      I0 => \ALUResult[31]_INST_0_i_14_n_0\,
      I1 => Instr(11),
      I2 => Instr(12),
      I3 => Instr(10),
      I4 => \ALUResult[31]_INST_0_i_13_n_0\,
      O => \^alucontrol__0\(0)
    );
\ALUResult[31]_INST_0_i_25\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Instr(10),
      I1 => Instr(11),
      O => \ALUResult[31]_INST_0_i_25_n_0\
    );
\ALUResult[31]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3F3F3F3F2F3F3F3F"
    )
        port map (
      I0 => ALUControl(0),
      I1 => \ALUResult[31]_INST_0_i_13_n_0\,
      I2 => \ALUResult[31]_INST_0_i_14_n_0\,
      I3 => Instr(12),
      I4 => Instr(10),
      I5 => Instr(11),
      O => \^aluresult[31]_inst_0_i_14_1\
    );
\ALUResult[31]_INST_0_i_33\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Instr(10),
      I1 => Instr(11),
      O => \ALUResult[31]_INST_0_i_33_n_0\
    );
\ALUResult[31]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFBFFF"
    )
        port map (
      I0 => \ALUResult[31]_INST_0_i_13_n_0\,
      I1 => \ALUResult[31]_INST_0_i_14_n_0\,
      I2 => Instr(12),
      I3 => Instr(10),
      I4 => Instr(11),
      O => \^aluresult[31]_inst_0_i_14_0\
    );
\ALUResult[31]_INST_0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^alucontrol__0\(1),
      I1 => \^alucontrol__0\(0),
      O => \^aluresult[31]_inst_0_i_23_0\
    );
\ALUResult[31]_INST_0_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \^alucontrol__0\(0),
      I1 => ALUControl(0),
      I2 => \^alucontrol__0\(1),
      O => \^aluresult[31]_inst_0_i_22_0\
    );
\ALUResult[3]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCC00CACACAAC"
    )
        port map (
      I0 => Instr(8),
      I1 => Instr(21),
      I2 => \^sel0\(1),
      I3 => \ALUResult[19]_INST_0_i_10_n_0\,
      I4 => \ALUResult[11]_INST_0_i_9_n_0\,
      I5 => \^sel0\(2),
      O => \ALUResult[31]_INST_0_i_18_0\(3)
    );
\ALUResult[4]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCC00CACACAAC"
    )
        port map (
      I0 => Instr(9),
      I1 => Instr(22),
      I2 => \^sel0\(1),
      I3 => \ALUResult[19]_INST_0_i_10_n_0\,
      I4 => \ALUResult[11]_INST_0_i_9_n_0\,
      I5 => \^sel0\(2),
      O => \ALUResult[31]_INST_0_i_18_0\(4)
    );
\ALUResult[7]_INST_0_i_27\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^alucontrol__0\(0),
      I1 => ALUControl(0),
      O => \ALUResult[31]_INST_0_i_12\
    );
\ALUResult[7]_INST_0_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222E222200000000"
    )
        port map (
      I0 => Instr(29),
      I1 => \^sel0\(2),
      I2 => \ALUResult[19]_INST_0_i_10_n_0\,
      I3 => \ALUResult[11]_INST_0_i_9_n_0\,
      I4 => Instr(28),
      I5 => \^aluresult[31]_inst_0_i_16_1\,
      O => \ALUResult[31]_INST_0_i_16_2\
    );
\ALUResult[7]_INST_0_i_38\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222E222200000000"
    )
        port map (
      I0 => Instr(29),
      I1 => \^sel0\(2),
      I2 => \ALUResult[19]_INST_0_i_10_n_0\,
      I3 => \ALUResult[11]_INST_0_i_9_n_0\,
      I4 => Instr(27),
      I5 => \^aluresult[31]_inst_0_i_16_1\,
      O => \ALUResult[31]_INST_0_i_16_0\
    );
\ALUResult[7]_INST_0_i_39\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22222AAA00000000"
    )
        port map (
      I0 => Instr(29),
      I1 => \^sel0\(2),
      I2 => Instr(1),
      I3 => Instr(0),
      I4 => \ALUResult[19]_INST_0_i_10_n_0\,
      I5 => \^aluresult[31]_inst_0_i_16_1\,
      O => \ALUResult[31]_INST_0_i_16_3\
    );
\q[11]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AA8AAA"
    )
        port map (
      I0 => Instr(28),
      I1 => Instr(11),
      I2 => Instr(10),
      I3 => Instr(2),
      I4 => Instr(0),
      O => \ALUResult[31]_INST_0_i_18_0\(10)
    );
\q[11]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AA8AAA"
    )
        port map (
      I0 => Instr(27),
      I1 => Instr(11),
      I2 => Instr(10),
      I3 => Instr(2),
      I4 => Instr(0),
      O => \ALUResult[31]_INST_0_i_18_0\(9)
    );
\q[11]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AA8AAA"
    )
        port map (
      I0 => Instr(26),
      I1 => Instr(11),
      I2 => Instr(10),
      I3 => Instr(2),
      I4 => Instr(0),
      O => \ALUResult[31]_INST_0_i_18_0\(8)
    );
\q[15]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => Instr(13),
      I1 => \^aluresult[19]_inst_0_i_5_0\,
      I2 => \^aluresult[31]_inst_0_i_18_1\,
      O => \ALUResult[31]_INST_0_i_18_0\(14)
    );
\q[15]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => Instr(12),
      I1 => \^aluresult[19]_inst_0_i_5_0\,
      I2 => \^aluresult[31]_inst_0_i_18_1\,
      O => \ALUResult[31]_INST_0_i_18_0\(13)
    );
\q[15]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => Instr(11),
      I1 => \^aluresult[19]_inst_0_i_5_0\,
      I2 => \^aluresult[31]_inst_0_i_18_1\,
      O => \ALUResult[31]_INST_0_i_18_0\(12)
    );
\q[15]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => Instr(10),
      I1 => \^aluresult[19]_inst_0_i_5_0\,
      I2 => \^aluresult[31]_inst_0_i_18_1\,
      O => \ALUResult[31]_INST_0_i_18_0\(11)
    );
\q[19]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222B333B22280008"
    )
        port map (
      I0 => Instr(17),
      I1 => \^sel0\(2),
      I2 => \ALUResult[19]_INST_0_i_10_n_0\,
      I3 => \ALUResult[11]_INST_0_i_9_n_0\,
      I4 => \^sel0\(1),
      I5 => Instr(29),
      O => \ALUResult[31]_INST_0_i_18_0\(18)
    );
\q[19]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222B333B22280008"
    )
        port map (
      I0 => Instr(16),
      I1 => \^sel0\(2),
      I2 => \ALUResult[19]_INST_0_i_10_n_0\,
      I3 => \ALUResult[11]_INST_0_i_9_n_0\,
      I4 => \^sel0\(1),
      I5 => Instr(29),
      O => \ALUResult[31]_INST_0_i_18_0\(17)
    );
\q[19]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => Instr(15),
      I1 => \^aluresult[19]_inst_0_i_5_0\,
      I2 => \^aluresult[31]_inst_0_i_18_1\,
      O => \ALUResult[31]_INST_0_i_18_0\(16)
    );
\q[19]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => Instr(14),
      I1 => \^aluresult[19]_inst_0_i_5_0\,
      I2 => \^aluresult[31]_inst_0_i_18_1\,
      O => \ALUResult[31]_INST_0_i_18_0\(15)
    );
\q[23]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"002AFFFF002A0000"
    )
        port map (
      I0 => Instr(21),
      I1 => Instr(1),
      I2 => Instr(0),
      I3 => \ALUResult[19]_INST_0_i_10_n_0\,
      I4 => \^sel0\(2),
      I5 => Instr(29),
      O => \ALUResult[31]_INST_0_i_18_0\(22)
    );
\q[23]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"002AFFFF002A0000"
    )
        port map (
      I0 => Instr(20),
      I1 => Instr(1),
      I2 => Instr(0),
      I3 => \ALUResult[19]_INST_0_i_10_n_0\,
      I4 => \^sel0\(2),
      I5 => Instr(29),
      O => \ALUResult[31]_INST_0_i_18_0\(21)
    );
\q[23]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"002AFFFF002A0000"
    )
        port map (
      I0 => Instr(19),
      I1 => Instr(1),
      I2 => Instr(0),
      I3 => \ALUResult[19]_INST_0_i_10_n_0\,
      I4 => \^sel0\(2),
      I5 => Instr(29),
      O => \ALUResult[31]_INST_0_i_18_0\(20)
    );
\q[23]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"002AFFFF002A0000"
    )
        port map (
      I0 => Instr(18),
      I1 => Instr(1),
      I2 => Instr(0),
      I3 => \ALUResult[19]_INST_0_i_10_n_0\,
      I4 => \^sel0\(2),
      I5 => Instr(29),
      O => \ALUResult[31]_INST_0_i_18_0\(19)
    );
\q[27]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"002AFFFF002A0000"
    )
        port map (
      I0 => Instr(25),
      I1 => Instr(1),
      I2 => Instr(0),
      I3 => \ALUResult[19]_INST_0_i_10_n_0\,
      I4 => \^sel0\(2),
      I5 => Instr(29),
      O => \ALUResult[31]_INST_0_i_18_0\(26)
    );
\q[27]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"002AFFFF002A0000"
    )
        port map (
      I0 => Instr(24),
      I1 => Instr(1),
      I2 => Instr(0),
      I3 => \ALUResult[19]_INST_0_i_10_n_0\,
      I4 => \^sel0\(2),
      I5 => Instr(29),
      O => \ALUResult[31]_INST_0_i_18_0\(25)
    );
\q[27]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"002AFFFF002A0000"
    )
        port map (
      I0 => Instr(23),
      I1 => Instr(1),
      I2 => Instr(0),
      I3 => \ALUResult[19]_INST_0_i_10_n_0\,
      I4 => \^sel0\(2),
      I5 => Instr(29),
      O => \ALUResult[31]_INST_0_i_18_0\(24)
    );
\q[27]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"002AFFFF002A0000"
    )
        port map (
      I0 => Instr(22),
      I1 => Instr(1),
      I2 => Instr(0),
      I3 => \ALUResult[19]_INST_0_i_10_n_0\,
      I4 => \^sel0\(2),
      I5 => Instr(29),
      O => \ALUResult[31]_INST_0_i_18_0\(23)
    );
\q[31]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4F7F0000"
    )
        port map (
      I0 => Instr(1),
      I1 => Instr(0),
      I2 => Instr(2),
      I3 => \ALUResult[31]_INST_0_i_25_n_0\,
      I4 => Instr(29),
      O => \ext/immext__91\(31)
    );
\q[31]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => Instr(1),
      I1 => Instr(4),
      I2 => Instr(0),
      O => \^q[31]_i_11_0\(0)
    );
\q[31]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"002AFFFF002A0000"
    )
        port map (
      I0 => Instr(28),
      I1 => Instr(1),
      I2 => Instr(0),
      I3 => \ALUResult[19]_INST_0_i_10_n_0\,
      I4 => \^sel0\(2),
      I5 => Instr(29),
      O => \ext/immext\(30)
    );
\q[31]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"002AFFFF002A0000"
    )
        port map (
      I0 => Instr(27),
      I1 => Instr(1),
      I2 => Instr(0),
      I3 => \ALUResult[19]_INST_0_i_10_n_0\,
      I4 => \^sel0\(2),
      I5 => Instr(29),
      O => \ext/immext\(29)
    );
\q[31]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"002AFFFF002A0000"
    )
        port map (
      I0 => Instr(26),
      I1 => Instr(1),
      I2 => Instr(0),
      I3 => \ALUResult[19]_INST_0_i_10_n_0\,
      I4 => \^sel0\(2),
      I5 => Instr(29),
      O => \ALUResult[31]_INST_0_i_18_0\(27)
    );
\q[31]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Instr(1),
      I1 => Instr(4),
      I2 => Instr(0),
      O => \q[31]_i_15_0\
    );
\q[31]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Instr(4),
      I1 => Instr(0),
      O => \q[31]_i_18_0\
    );
\q[31]_i_30\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^aluresult[31]_inst_0_i_14_0\,
      I1 => \^aluresult[31]_inst_0_i_14_1\,
      O => \ALUResult[31]_INST_0_i_3_0\
    );
\q[31]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F6F6F6060606F60"
    )
        port map (
      I0 => \ext/immext__91\(31),
      I1 => \^q_reg[31]_0\(0),
      I2 => PCSrc(0),
      I3 => d2(3),
      I4 => \^q[31]_i_11_0\(0),
      I5 => \q_reg[31]_3\,
      O => S(2)
    );
\q[31]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F6F6F6060606F60"
    )
        port map (
      I0 => \ext/immext\(30),
      I1 => \^q_reg[30]_0\(2),
      I2 => PCSrc(0),
      I3 => d2(2),
      I4 => \^q[31]_i_11_0\(0),
      I5 => \q_reg[31]_4\,
      O => S(1)
    );
\q[31]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F6F6F6060606F60"
    )
        port map (
      I0 => \ext/immext\(29),
      I1 => \^q_reg[30]_0\(1),
      I2 => PCSrc(0),
      I3 => d2(1),
      I4 => \^q[31]_i_11_0\(0),
      I5 => ALUResult(0),
      O => S(0)
    );
\q[3]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0220030"
    )
        port map (
      I0 => Instr(5),
      I1 => \^sel0\(1),
      I2 => Instr(18),
      I3 => \^sel0\(2),
      I4 => \^sel0\(0),
      O => \ALUResult[31]_INST_0_i_18_0\(0)
    );
\q[7]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AA8AAA"
    )
        port map (
      I0 => Instr(25),
      I1 => Instr(11),
      I2 => Instr(10),
      I3 => Instr(2),
      I4 => Instr(0),
      O => \ALUResult[31]_INST_0_i_18_0\(7)
    );
\q[7]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AA8AAA"
    )
        port map (
      I0 => Instr(24),
      I1 => Instr(11),
      I2 => Instr(10),
      I3 => Instr(2),
      I4 => Instr(0),
      O => \ALUResult[31]_INST_0_i_18_0\(6)
    );
\q[7]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AA8AAA"
    )
        port map (
      I0 => Instr(23),
      I1 => Instr(11),
      I2 => Instr(10),
      I3 => Instr(2),
      I4 => Instr(0),
      O => \ALUResult[31]_INST_0_i_18_0\(5)
    );
\q_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => O(0),
      Q => \^di\(0)
    );
\q_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => \q_reg[11]_2\(2),
      Q => \^q_reg[11]_0\(2)
    );
\q_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => \q_reg[11]_2\(3),
      Q => \^q_reg[11]_0\(3)
    );
\q_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => \q_reg[15]_2\(0),
      Q => \^q_reg[15]_0\(0)
    );
\q_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => \q_reg[15]_2\(1),
      Q => \^q_reg[15]_0\(1)
    );
\q_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => \q_reg[15]_2\(2),
      Q => \^q_reg[15]_0\(2)
    );
\q_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => \q_reg[15]_2\(3),
      Q => \^q_reg[15]_0\(3)
    );
\q_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => \q_reg[19]_2\(0),
      Q => \^q_reg[19]_0\(0)
    );
\q_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => \q_reg[19]_2\(1),
      Q => \^q_reg[19]_0\(1)
    );
\q_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => \q_reg[19]_2\(2),
      Q => \^q_reg[19]_0\(2)
    );
\q_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => \q_reg[19]_2\(3),
      Q => \^q_reg[19]_0\(3)
    );
\q_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => O(1),
      Q => \^di\(1)
    );
\q_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => \q_reg[23]_2\(0),
      Q => \^q_reg[23]_0\(0)
    );
\q_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => \q_reg[23]_2\(1),
      Q => \^q_reg[23]_0\(1)
    );
\q_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => \q_reg[23]_2\(2),
      Q => \^q_reg[23]_0\(2)
    );
\q_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => \q_reg[23]_2\(3),
      Q => \^q_reg[23]_0\(3)
    );
\q_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => \q_reg[27]_2\(0),
      Q => \^q_reg[27]_0\(0)
    );
\q_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => \q_reg[27]_2\(1),
      Q => \^q_reg[27]_0\(1)
    );
\q_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => \q_reg[27]_2\(2),
      Q => \^q_reg[27]_0\(2)
    );
\q_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => \q_reg[27]_2\(3),
      Q => \^q_reg[27]_0\(3)
    );
\q_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => \q_reg[31]_2\(0),
      Q => \^q_reg[30]_0\(0)
    );
\q_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => \q_reg[31]_2\(1),
      Q => \^q_reg[30]_0\(1)
    );
\q_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => O(2),
      Q => \^di\(2)
    );
\q_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => \q_reg[31]_2\(2),
      Q => \^q_reg[30]_0\(2)
    );
\q_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => \q_reg[31]_2\(3),
      Q => \^q_reg[31]_0\(0)
    );
\q_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => O(3),
      Q => \^di\(3)
    );
\q_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => \q_reg[7]_2\(0),
      Q => \^q_reg[7]_0\(0)
    );
\q_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => \q_reg[7]_2\(1),
      Q => \^q_reg[7]_0\(1)
    );
\q_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => \q_reg[7]_2\(2),
      Q => \^q_reg[7]_0\(2)
    );
\q_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => \q_reg[7]_2\(3),
      Q => \^q_reg[7]_0\(3)
    );
\q_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => \q_reg[11]_2\(0),
      Q => \^q_reg[11]_0\(0)
    );
\q_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => PCReady,
      CLR => reset,
      D => \q_reg[11]_2\(1),
      Q => \^q_reg[11]_0\(1)
    );
rf_reg_r1_0_31_0_5_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFFCCFF0A00CC00"
    )
        port map (
      I0 => \^di\(0),
      I1 => \rf_reg_r1_0_31_30_31_i_1__0_0\(0),
      I2 => Instr(2),
      I3 => Instr(0),
      I4 => Instr(3),
      I5 => rf_reg_r1_0_31_0_5,
      O => wd3(0)
    );
rf_reg_r1_0_31_24_29_i_15: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A00CA00"
    )
        port map (
      I0 => \rf_reg_r1_0_31_30_31_i_1__0_0\(2),
      I1 => d2(1),
      I2 => Instr(3),
      I3 => Instr(0),
      I4 => Instr(2),
      O => \q_reg[30]_2\
    );
rf_reg_r1_0_31_24_29_i_17: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A00CA00"
    )
        port map (
      I0 => \rf_reg_r1_0_31_30_31_i_1__0_0\(1),
      I1 => d2(0),
      I2 => Instr(3),
      I3 => Instr(0),
      I4 => Instr(2),
      O => \q_reg[30]_1\
    );
rf_reg_r1_0_31_30_31_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBABBBBBBBABBBA"
    )
        port map (
      I0 => rf_reg_r1_0_31_30_31_i_2_n_0,
      I1 => \^s\(1),
      I2 => \rf_reg_r2_0_31_30_31__0\,
      I3 => rf_reg_r2_0_31_30_31,
      I4 => \^s\(0),
      I5 => \q_reg[31]_4\,
      O => wd3(1)
    );
\rf_reg_r1_0_31_30_31_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBABBBBBBBABBBA"
    )
        port map (
      I0 => \rf_reg_r1_0_31_30_31_i_2__0_n_0\,
      I1 => \^s\(1),
      I2 => \rf_reg_r2_0_31_30_31__0\,
      I3 => \rf_reg_r2_0_31_30_31__0_0\,
      I4 => \^s\(0),
      I5 => \q_reg[31]_3\,
      O => wd3(2)
    );
rf_reg_r1_0_31_30_31_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A00CA00"
    )
        port map (
      I0 => \rf_reg_r1_0_31_30_31_i_1__0_0\(3),
      I1 => d2(2),
      I2 => Instr(3),
      I3 => Instr(0),
      I4 => Instr(2),
      O => rf_reg_r1_0_31_30_31_i_2_n_0
    );
\rf_reg_r1_0_31_30_31_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A00CA00"
    )
        port map (
      I0 => \rf_reg_r1_0_31_30_31_i_1__0_0\(4),
      I1 => d2(3),
      I2 => Instr(3),
      I3 => Instr(0),
      I4 => Instr(2),
      O => \rf_reg_r1_0_31_30_31_i_2__0_n_0\
    );
\y_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9595A595AAAAAAAA"
    )
        port map (
      I0 => \^q_reg[7]_0\(3),
      I1 => Instr(0),
      I2 => Instr(2),
      I3 => Instr(10),
      I4 => Instr(11),
      I5 => Instr(25),
      O => \q_reg[7]_1\(3)
    );
\y_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9595A595AAAAAAAA"
    )
        port map (
      I0 => \^q_reg[7]_0\(2),
      I1 => Instr(0),
      I2 => Instr(2),
      I3 => Instr(10),
      I4 => Instr(11),
      I5 => Instr(24),
      O => \q_reg[7]_1\(2)
    );
\y_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9595A595AAAAAAAA"
    )
        port map (
      I0 => \^q_reg[7]_0\(1),
      I1 => Instr(0),
      I2 => Instr(2),
      I3 => Instr(10),
      I4 => Instr(11),
      I5 => Instr(23),
      O => \q_reg[7]_1\(1)
    );
\y_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5959A99A5A69AAAA"
    )
        port map (
      I0 => \^q_reg[7]_0\(0),
      I1 => \^sel0\(2),
      I2 => \^sel0\(0),
      I3 => \^sel0\(1),
      I4 => Instr(22),
      I5 => Instr(9),
      O => \q_reg[7]_1\(0)
    );
\y_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg[11]_0\(3),
      I1 => \y_carry__1\(0),
      O => \q_reg[11]_1\(3)
    );
\y_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9595A595AAAAAAAA"
    )
        port map (
      I0 => \^q_reg[11]_0\(2),
      I1 => Instr(0),
      I2 => Instr(2),
      I3 => Instr(10),
      I4 => Instr(11),
      I5 => Instr(28),
      O => \q_reg[11]_1\(2)
    );
\y_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9595A595AAAAAAAA"
    )
        port map (
      I0 => \^q_reg[11]_0\(1),
      I1 => Instr(0),
      I2 => Instr(2),
      I3 => Instr(10),
      I4 => Instr(11),
      I5 => Instr(27),
      O => \q_reg[11]_1\(1)
    );
\y_carry__1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9595A595AAAAAAAA"
    )
        port map (
      I0 => \^q_reg[11]_0\(0),
      I1 => Instr(0),
      I2 => Instr(2),
      I3 => Instr(10),
      I4 => Instr(11),
      I5 => Instr(26),
      O => \q_reg[11]_1\(0)
    );
\y_carry__2_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5666"
    )
        port map (
      I0 => \^q_reg[15]_0\(3),
      I1 => \^aluresult[31]_inst_0_i_18_1\,
      I2 => \^aluresult[19]_inst_0_i_5_0\,
      I3 => Instr(13),
      O => \q_reg[15]_1\(3)
    );
\y_carry__2_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5666"
    )
        port map (
      I0 => \^q_reg[15]_0\(2),
      I1 => \^aluresult[31]_inst_0_i_18_1\,
      I2 => \^aluresult[19]_inst_0_i_5_0\,
      I3 => Instr(12),
      O => \q_reg[15]_1\(2)
    );
\y_carry__2_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5666"
    )
        port map (
      I0 => \^q_reg[15]_0\(1),
      I1 => \^aluresult[31]_inst_0_i_18_1\,
      I2 => \^aluresult[19]_inst_0_i_5_0\,
      I3 => Instr(11),
      O => \q_reg[15]_1\(1)
    );
\y_carry__2_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5666"
    )
        port map (
      I0 => \^q_reg[15]_0\(0),
      I1 => \^aluresult[31]_inst_0_i_18_1\,
      I2 => \^aluresult[19]_inst_0_i_5_0\,
      I3 => Instr(10),
      O => \q_reg[15]_1\(0)
    );
\y_carry__3_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5666"
    )
        port map (
      I0 => \^q_reg[19]_0\(3),
      I1 => \^aluresult[31]_inst_0_i_18_1\,
      I2 => \^aluresult[19]_inst_0_i_5_0\,
      I3 => Instr(17),
      O => \q_reg[19]_1\(3)
    );
\y_carry__3_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5666"
    )
        port map (
      I0 => \^q_reg[19]_0\(2),
      I1 => \^aluresult[31]_inst_0_i_18_1\,
      I2 => \^aluresult[19]_inst_0_i_5_0\,
      I3 => Instr(16),
      O => \q_reg[19]_1\(2)
    );
\y_carry__3_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5666"
    )
        port map (
      I0 => \^q_reg[19]_0\(1),
      I1 => \^aluresult[31]_inst_0_i_18_1\,
      I2 => \^aluresult[19]_inst_0_i_5_0\,
      I3 => Instr(15),
      O => \q_reg[19]_1\(1)
    );
\y_carry__3_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5666"
    )
        port map (
      I0 => \^q_reg[19]_0\(0),
      I1 => \^aluresult[31]_inst_0_i_18_1\,
      I2 => \^aluresult[19]_inst_0_i_5_0\,
      I3 => Instr(14),
      O => \q_reg[19]_1\(0)
    );
\y_carry__4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55A6A6A6"
    )
        port map (
      I0 => \^q_reg[23]_0\(3),
      I1 => Instr(29),
      I2 => \^sel0\(2),
      I3 => \^aluresult[30]_inst_0_i_4_0\,
      I4 => Instr(21),
      O => \q_reg[23]_1\(3)
    );
\y_carry__4_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55A6A6A6"
    )
        port map (
      I0 => \^q_reg[23]_0\(2),
      I1 => Instr(29),
      I2 => \^sel0\(2),
      I3 => \^aluresult[30]_inst_0_i_4_0\,
      I4 => Instr(20),
      O => \q_reg[23]_1\(2)
    );
\y_carry__4_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55A6A6A6"
    )
        port map (
      I0 => \^q_reg[23]_0\(1),
      I1 => Instr(29),
      I2 => \^sel0\(2),
      I3 => \^aluresult[30]_inst_0_i_4_0\,
      I4 => Instr(19),
      O => \q_reg[23]_1\(1)
    );
\y_carry__4_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55A6A6A6"
    )
        port map (
      I0 => \^q_reg[23]_0\(0),
      I1 => Instr(29),
      I2 => \^sel0\(2),
      I3 => \^aluresult[30]_inst_0_i_4_0\,
      I4 => Instr(18),
      O => \q_reg[23]_1\(0)
    );
\y_carry__5_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55A6A6A6"
    )
        port map (
      I0 => \^q_reg[27]_0\(3),
      I1 => Instr(29),
      I2 => \^sel0\(2),
      I3 => \^aluresult[30]_inst_0_i_4_0\,
      I4 => Instr(25),
      O => \q_reg[27]_1\(3)
    );
\y_carry__5_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55A6A6A6"
    )
        port map (
      I0 => \^q_reg[27]_0\(2),
      I1 => Instr(29),
      I2 => \^sel0\(2),
      I3 => \^aluresult[30]_inst_0_i_4_0\,
      I4 => Instr(24),
      O => \q_reg[27]_1\(2)
    );
\y_carry__5_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55A6A6A6"
    )
        port map (
      I0 => \^q_reg[27]_0\(1),
      I1 => Instr(29),
      I2 => \^sel0\(2),
      I3 => \^aluresult[30]_inst_0_i_4_0\,
      I4 => Instr(23),
      O => \q_reg[27]_1\(1)
    );
\y_carry__5_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55A6A6A6"
    )
        port map (
      I0 => \^q_reg[27]_0\(0),
      I1 => Instr(29),
      I2 => \^sel0\(2),
      I3 => \^aluresult[30]_inst_0_i_4_0\,
      I4 => Instr(22),
      O => \q_reg[27]_1\(0)
    );
\y_carry__6_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A666"
    )
        port map (
      I0 => \^q_reg[31]_0\(0),
      I1 => Instr(29),
      I2 => \^sel0\(2),
      I3 => \^sel0\(0),
      O => \q_reg[31]_1\(3)
    );
\y_carry__6_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55A6A6A6"
    )
        port map (
      I0 => \^q_reg[30]_0\(2),
      I1 => Instr(29),
      I2 => \^sel0\(2),
      I3 => \^aluresult[30]_inst_0_i_4_0\,
      I4 => Instr(28),
      O => \q_reg[31]_1\(2)
    );
\y_carry__6_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55A6A6A6"
    )
        port map (
      I0 => \^q_reg[30]_0\(1),
      I1 => Instr(29),
      I2 => \^sel0\(2),
      I3 => \^aluresult[30]_inst_0_i_4_0\,
      I4 => Instr(27),
      O => \q_reg[31]_1\(1)
    );
\y_carry__6_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55A6A6A6"
    )
        port map (
      I0 => \^q_reg[30]_0\(0),
      I1 => Instr(29),
      I2 => \^sel0\(2),
      I3 => \^aluresult[30]_inst_0_i_4_0\,
      I4 => Instr(26),
      O => \q_reg[31]_1\(0)
    );
y_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^di\(2),
      O => \q_reg[2]_0\(0)
    );
\y_carry_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5959A99A5A69AAAA"
    )
        port map (
      I0 => \^di\(3),
      I1 => \^sel0\(2),
      I2 => \^sel0\(0),
      I3 => \^sel0\(1),
      I4 => Instr(21),
      I5 => Instr(8),
      O => \q_reg[3]_0\(3)
    );
y_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5959A99A5A69AAAA"
    )
        port map (
      I0 => \^di\(2),
      I1 => \^sel0\(2),
      I2 => \^sel0\(0),
      I3 => \^sel0\(1),
      I4 => Instr(20),
      I5 => Instr(7),
      O => \q_reg[3]_0\(2)
    );
y_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5959A99A5A69AAAA"
    )
        port map (
      I0 => \^di\(1),
      I1 => \^sel0\(2),
      I2 => \^sel0\(0),
      I3 => \^sel0\(1),
      I4 => Instr(19),
      I5 => Instr(6),
      O => \q_reg[3]_0\(1)
    );
y_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAA65A66AAA69AA"
    )
        port map (
      I0 => \^di\(0),
      I1 => \^sel0\(0),
      I2 => \^sel0\(2),
      I3 => Instr(18),
      I4 => \^sel0\(1),
      I5 => Instr(5),
      O => \q_reg[3]_0\(0)
    );
y_carry_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Instr(1),
      I1 => Instr(0),
      I2 => Instr(4),
      O => \^sel0\(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_regfile is
  port (
    PCSrc : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ALUResult[31]_INST_0_i_6_0\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_3\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_3_0\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_3_1\ : out STD_LOGIC;
    \ALUResult[0]_INST_0_i_3_0\ : out STD_LOGIC;
    \readDataM[0]\ : out STD_LOGIC;
    \^s\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \ALUResult[1]_INST_0_i_4_0\ : out STD_LOGIC;
    \readDataM[1]\ : out STD_LOGIC;
    \readDataM[2]\ : out STD_LOGIC;
    ALUResult : out STD_LOGIC_VECTOR ( 24 downto 0 );
    \readDataM[3]\ : out STD_LOGIC;
    \readDataM[4]\ : out STD_LOGIC;
    \readDataM[5]\ : out STD_LOGIC;
    \readDataM[6]\ : out STD_LOGIC;
    \readDataM[7]\ : out STD_LOGIC;
    \readDataM[15]\ : out STD_LOGIC;
    SrcA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clk_0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \ALUResult[30]_INST_0_i_1_0\ : out STD_LOGIC;
    \ALUResult[30]_INST_0_i_9_0\ : out STD_LOGIC;
    \readDataM[30]\ : out STD_LOGIC;
    \readDataM[31]\ : out STD_LOGIC;
    WriteData : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \q_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[7]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[11]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[15]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[19]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[23]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[27]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[31]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_2 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_3 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_4 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_5 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_6 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_7 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_8 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_9 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_10 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_11 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_12 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_13 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_14 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_15 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_16 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult[0]_INST_0_i_6_0\ : out STD_LOGIC;
    clk : in STD_LOGIC;
    \writeDataM[31]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    Instr : in STD_LOGIC_VECTOR ( 27 downto 0 );
    sel0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \q_reg[31]_0\ : in STD_LOGIC;
    \q_reg[19]_0\ : in STD_LOGIC;
    \q_reg[19]_1\ : in STD_LOGIC;
    immext : in STD_LOGIC_VECTOR ( 28 downto 0 );
    \q[31]_i_5\ : in STD_LOGIC;
    \q[31]_i_5_0\ : in STD_LOGIC;
    \q[31]_i_9_0\ : in STD_LOGIC;
    ReadData : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rf_reg_r2_0_31_12_17_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    d2 : in STD_LOGIC_VECTOR ( 27 downto 0 );
    rf_reg_r2_0_31_12_17_1 : in STD_LOGIC;
    rf_reg_r2_0_31_12_17_2 : in STD_LOGIC;
    rf_reg_r2_0_31_18_23_0 : in STD_LOGIC;
    rf_reg_r2_0_31_18_23_1 : in STD_LOGIC;
    rf_reg_r2_0_31_18_23_2 : in STD_LOGIC;
    rf_reg_r2_0_31_18_23_3 : in STD_LOGIC;
    rf_reg_r2_0_31_18_23_4 : in STD_LOGIC;
    rf_reg_r2_0_31_18_23_5 : in STD_LOGIC;
    rf_reg_r2_0_31_24_29_0 : in STD_LOGIC;
    rf_reg_r2_0_31_24_29_1 : in STD_LOGIC;
    rf_reg_r2_0_31_24_29_2 : in STD_LOGIC;
    rf_reg_r2_0_31_24_29_3 : in STD_LOGIC;
    rf_reg_r2_0_31_24_29_4 : in STD_LOGIC;
    rf_reg_r2_0_31_24_29_5 : in STD_LOGIC;
    \addressM[0]\ : in STD_LOGIC;
    \addressM[0]_0\ : in STD_LOGIC;
    \addressM[29]\ : in STD_LOGIC_VECTOR ( 29 downto 0 );
    \addressM[0]_1\ : in STD_LOGIC;
    \addressM[0]_2\ : in STD_LOGIC;
    ALUControl : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ALUControl__0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd11 : in STD_LOGIC;
    LT : in STD_LOGIC;
    \q[31]_i_25_0\ : in STD_LOGIC;
    O : in STD_LOGIC_VECTOR ( 0 to 0 );
    \addressM[16]\ : in STD_LOGIC;
    \addressM[16]_0\ : in STD_LOGIC;
    \ALUResult[30]_INST_0_i_10_0\ : in STD_LOGIC;
    rd21 : in STD_LOGIC;
    \addressM[1]\ : in STD_LOGIC;
    \addressM[11]\ : in STD_LOGIC;
    \addressM[20]\ : in STD_LOGIC;
    \ALUResult[7]_INST_0_i_25_0\ : in STD_LOGIC;
    \ALUResult[7]_INST_0_i_25_1\ : in STD_LOGIC;
    \ALUResult[7]_INST_0_i_25_2\ : in STD_LOGIC;
    S : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \q_reg[3]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    DI : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[7]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[11]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[15]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[19]_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[23]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[27]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[31]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_0_0_regfile : entity is "regfile";
end design_1_top_0_0_regfile;

architecture STRUCTURE of design_1_top_0_0_regfile is
  signal \^aluresult\ : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal \ALUResult[0]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[0]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[0]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[0]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ALUResult[0]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \ALUResult[0]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \ALUResult[0]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \ALUResult[0]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \ALUResult[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALUResult[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \^aluresult[0]_inst_0_i_3_0\ : STD_LOGIC;
  signal \ALUResult[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[0]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[0]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[0]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[0]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[0]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[10]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[10]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[10]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[10]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[10]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[10]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[10]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[10]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[10]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[10]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[11]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[11]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[11]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[11]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ALUResult[11]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \ALUResult[11]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[11]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[11]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[11]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[11]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[11]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[12]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[12]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[12]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[12]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[12]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[12]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[12]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[12]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[12]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[12]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[13]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[13]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[13]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[13]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[13]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[13]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[13]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[13]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[13]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[13]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[13]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[14]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[14]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[14]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[14]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[14]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[14]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[14]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[14]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[14]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[14]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[14]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[15]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[15]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[15]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[15]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ALUResult[15]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \ALUResult[15]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \ALUResult[15]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[15]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[15]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[15]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[15]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[15]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[15]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[15]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[16]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[16]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[16]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[16]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ALUResult[16]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \ALUResult[16]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \ALUResult[16]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[16]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[16]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[16]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[16]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[16]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[16]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[16]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[17]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[17]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[17]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[17]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[17]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[17]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[17]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[17]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[17]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[17]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[17]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[18]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[18]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[18]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[18]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[18]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[18]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[18]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[18]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[18]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[18]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[18]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[19]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[19]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[19]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ALUResult[19]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \ALUResult[19]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \ALUResult[19]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \ALUResult[19]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[19]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[19]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[19]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[19]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[19]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[1]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \^aluresult[1]_inst_0_i_4_0\ : STD_LOGIC;
  signal \ALUResult[1]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[1]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[1]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[1]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[1]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[20]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[20]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[20]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[20]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ALUResult[20]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[20]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[20]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[20]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[20]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[20]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[20]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[20]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[21]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[21]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[21]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[21]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ALUResult[21]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[21]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[21]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[21]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[21]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[21]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[21]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[21]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[22]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[22]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[22]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[22]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ALUResult[22]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[22]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[22]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[22]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[22]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[22]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[22]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[22]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[23]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[23]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[23]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[23]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[23]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[23]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[23]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[23]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[23]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[23]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[23]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[24]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[24]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[24]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[24]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[24]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[24]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[24]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[24]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[24]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[24]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[24]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[25]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[25]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[25]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[25]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[25]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[25]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[25]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[25]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[25]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[25]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[25]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[26]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[26]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[26]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[26]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[26]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[26]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[26]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[26]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[26]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[26]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[27]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[27]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[27]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[27]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[27]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[27]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[27]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[27]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[27]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[27]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[27]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[28]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[28]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[28]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[28]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[28]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[28]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[28]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[28]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[28]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[28]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[28]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[29]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[29]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \ALUResult[29]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \ALUResult[29]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \ALUResult[29]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \ALUResult[29]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \ALUResult[29]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \ALUResult[29]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \ALUResult[29]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[29]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[29]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[29]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[29]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[29]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[29]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[29]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[2]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[2]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[2]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[2]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[2]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[2]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[2]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[2]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[30]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[30]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[30]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[30]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[30]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[31]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[31]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[31]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \ALUResult[31]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALUResult[31]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \ALUResult[31]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \ALUResult[31]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \ALUResult[31]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \ALUResult[31]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \ALUResult[31]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \ALUResult[31]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_3\ : STD_LOGIC;
  signal \ALUResult[31]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \ALUResult[31]_INST_0_i_31_n_0\ : STD_LOGIC;
  signal \ALUResult[31]_INST_0_i_32_n_0\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_3_0\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_3_1\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_6_0\ : STD_LOGIC;
  signal \ALUResult[31]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[3]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[3]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[3]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[3]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ALUResult[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[3]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[3]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[3]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[3]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[3]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[4]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[4]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[4]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[4]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[4]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[4]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[4]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[4]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[4]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[5]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[5]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[5]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[5]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[5]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[5]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[5]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[5]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[5]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[6]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[6]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[6]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[6]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ALUResult[6]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \ALUResult[6]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \ALUResult[6]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \ALUResult[6]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \ALUResult[6]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[6]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[6]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[6]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[6]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[6]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[6]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[7]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[7]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[7]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult[7]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ALUResult[7]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \ALUResult[7]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \ALUResult[7]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \ALUResult[7]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \ALUResult[7]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \ALUResult[7]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \ALUResult[7]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \ALUResult[7]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \ALUResult[7]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \ALUResult[7]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \ALUResult[7]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \ALUResult[7]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \ALUResult[7]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \ALUResult[7]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \ALUResult[7]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \ALUResult[7]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \ALUResult[7]_INST_0_i_31_n_0\ : STD_LOGIC;
  signal \ALUResult[7]_INST_0_i_32_n_0\ : STD_LOGIC;
  signal \ALUResult[7]_INST_0_i_33_n_0\ : STD_LOGIC;
  signal \ALUResult[7]_INST_0_i_34_n_0\ : STD_LOGIC;
  signal \ALUResult[7]_INST_0_i_35_n_0\ : STD_LOGIC;
  signal \ALUResult[7]_INST_0_i_37_n_0\ : STD_LOGIC;
  signal \ALUResult[7]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[7]_INST_0_i_40_n_0\ : STD_LOGIC;
  signal \ALUResult[7]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[7]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[7]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[7]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[7]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[7]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[8]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[8]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[8]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[8]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[8]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[8]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[8]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[8]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[8]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult[9]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult[9]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALUResult[9]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult[9]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult[9]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult[9]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult[9]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult[9]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult[9]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult[9]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \^pcsrc\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^srca\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal SrcB : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \^clk_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal data8 : STD_LOGIC_VECTOR ( 29 downto 2 );
  signal \loadext/ExtendedReadData__56\ : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal \loadext/aligned_data__39\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \q[11]_i_2_n_0\ : STD_LOGIC;
  signal \q[11]_i_3_n_0\ : STD_LOGIC;
  signal \q[11]_i_4_n_0\ : STD_LOGIC;
  signal \q[11]_i_5_n_0\ : STD_LOGIC;
  signal \q[11]_i_6_n_0\ : STD_LOGIC;
  signal \q[11]_i_7_n_0\ : STD_LOGIC;
  signal \q[11]_i_8_n_0\ : STD_LOGIC;
  signal \q[11]_i_9_n_0\ : STD_LOGIC;
  signal \q[15]_i_2_n_0\ : STD_LOGIC;
  signal \q[15]_i_3_n_0\ : STD_LOGIC;
  signal \q[15]_i_4_n_0\ : STD_LOGIC;
  signal \q[15]_i_5_n_0\ : STD_LOGIC;
  signal \q[15]_i_6_n_0\ : STD_LOGIC;
  signal \q[15]_i_7_n_0\ : STD_LOGIC;
  signal \q[15]_i_8_n_0\ : STD_LOGIC;
  signal \q[15]_i_9_n_0\ : STD_LOGIC;
  signal \q[19]_i_2_n_0\ : STD_LOGIC;
  signal \q[19]_i_3_n_0\ : STD_LOGIC;
  signal \q[19]_i_4_n_0\ : STD_LOGIC;
  signal \q[19]_i_5_n_0\ : STD_LOGIC;
  signal \q[19]_i_6_n_0\ : STD_LOGIC;
  signal \q[19]_i_7_n_0\ : STD_LOGIC;
  signal \q[19]_i_8_n_0\ : STD_LOGIC;
  signal \q[19]_i_9_n_0\ : STD_LOGIC;
  signal \q[23]_i_2_n_0\ : STD_LOGIC;
  signal \q[23]_i_3_n_0\ : STD_LOGIC;
  signal \q[23]_i_4_n_0\ : STD_LOGIC;
  signal \q[23]_i_5_n_0\ : STD_LOGIC;
  signal \q[23]_i_6_n_0\ : STD_LOGIC;
  signal \q[23]_i_7_n_0\ : STD_LOGIC;
  signal \q[23]_i_8_n_0\ : STD_LOGIC;
  signal \q[23]_i_9_n_0\ : STD_LOGIC;
  signal \q[27]_i_2_n_0\ : STD_LOGIC;
  signal \q[27]_i_3_n_0\ : STD_LOGIC;
  signal \q[27]_i_4_n_0\ : STD_LOGIC;
  signal \q[27]_i_5_n_0\ : STD_LOGIC;
  signal \q[27]_i_6_n_0\ : STD_LOGIC;
  signal \q[27]_i_7_n_0\ : STD_LOGIC;
  signal \q[27]_i_8_n_0\ : STD_LOGIC;
  signal \q[27]_i_9_n_0\ : STD_LOGIC;
  signal \q[31]_i_16_n_0\ : STD_LOGIC;
  signal \q[31]_i_17_n_0\ : STD_LOGIC;
  signal \q[31]_i_19_n_0\ : STD_LOGIC;
  signal \q[31]_i_20_n_0\ : STD_LOGIC;
  signal \q[31]_i_21_n_0\ : STD_LOGIC;
  signal \q[31]_i_22_n_0\ : STD_LOGIC;
  signal \q[31]_i_23_n_0\ : STD_LOGIC;
  signal \q[31]_i_24_n_0\ : STD_LOGIC;
  signal \q[31]_i_25_n_0\ : STD_LOGIC;
  signal \q[31]_i_26_n_0\ : STD_LOGIC;
  signal \q[31]_i_27_n_0\ : STD_LOGIC;
  signal \q[31]_i_28_n_0\ : STD_LOGIC;
  signal \q[31]_i_29_n_0\ : STD_LOGIC;
  signal \q[31]_i_2_n_0\ : STD_LOGIC;
  signal \q[31]_i_31_n_0\ : STD_LOGIC;
  signal \q[31]_i_32_n_0\ : STD_LOGIC;
  signal \q[31]_i_33_n_0\ : STD_LOGIC;
  signal \q[31]_i_34_n_0\ : STD_LOGIC;
  signal \q[31]_i_35_n_0\ : STD_LOGIC;
  signal \q[31]_i_36_n_0\ : STD_LOGIC;
  signal \q[31]_i_37_n_0\ : STD_LOGIC;
  signal \q[31]_i_38_n_0\ : STD_LOGIC;
  signal \q[31]_i_39_n_0\ : STD_LOGIC;
  signal \q[31]_i_3_n_0\ : STD_LOGIC;
  signal \q[31]_i_40_n_0\ : STD_LOGIC;
  signal \q[31]_i_41_n_0\ : STD_LOGIC;
  signal \q[31]_i_42_n_0\ : STD_LOGIC;
  signal \q[31]_i_44_n_0\ : STD_LOGIC;
  signal \q[31]_i_46_n_0\ : STD_LOGIC;
  signal \q[31]_i_48_n_0\ : STD_LOGIC;
  signal \q[31]_i_49_n_0\ : STD_LOGIC;
  signal \q[31]_i_4_n_0\ : STD_LOGIC;
  signal \q[31]_i_50_n_0\ : STD_LOGIC;
  signal \q[31]_i_52_n_0\ : STD_LOGIC;
  signal \q[31]_i_53_n_0\ : STD_LOGIC;
  signal \q[31]_i_8_n_0\ : STD_LOGIC;
  signal \q[3]_i_2_n_0\ : STD_LOGIC;
  signal \q[3]_i_3_n_0\ : STD_LOGIC;
  signal \q[3]_i_4_n_0\ : STD_LOGIC;
  signal \q[3]_i_5_n_0\ : STD_LOGIC;
  signal \q[3]_i_6_n_0\ : STD_LOGIC;
  signal \q[3]_i_7_n_0\ : STD_LOGIC;
  signal \q[3]_i_8_n_0\ : STD_LOGIC;
  signal \q[3]_i_9_n_0\ : STD_LOGIC;
  signal \q[7]_i_2_n_0\ : STD_LOGIC;
  signal \q[7]_i_3_n_0\ : STD_LOGIC;
  signal \q[7]_i_4_n_0\ : STD_LOGIC;
  signal \q[7]_i_5_n_0\ : STD_LOGIC;
  signal \q[7]_i_6_n_0\ : STD_LOGIC;
  signal \q[7]_i_7_n_0\ : STD_LOGIC;
  signal \q[7]_i_8_n_0\ : STD_LOGIC;
  signal \q[7]_i_9_n_0\ : STD_LOGIC;
  signal \q_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \q_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \q_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \q_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \q_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \q_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \q_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \q_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \q_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \q_reg[19]_i_1_n_1\ : STD_LOGIC;
  signal \q_reg[19]_i_1_n_2\ : STD_LOGIC;
  signal \q_reg[19]_i_1_n_3\ : STD_LOGIC;
  signal \q_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \q_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \q_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \q_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \q_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \q_reg[27]_i_1_n_1\ : STD_LOGIC;
  signal \q_reg[27]_i_1_n_2\ : STD_LOGIC;
  signal \q_reg[27]_i_1_n_3\ : STD_LOGIC;
  signal \q_reg[31]_i_1_n_1\ : STD_LOGIC;
  signal \q_reg[31]_i_1_n_2\ : STD_LOGIC;
  signal \q_reg[31]_i_1_n_3\ : STD_LOGIC;
  signal \q_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \q_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \q_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \q_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \q_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \q_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \q_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \q_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal rd10 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal rd20 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^readdatam[15]\ : STD_LOGIC;
  signal rf_reg_r1_0_31_0_5_i_20_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_12_17_i_13_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_12_17_i_15_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_12_17_i_16_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_12_17_i_17_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_12_17_i_18_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_12_17_i_19_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_18_23_i_10_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_18_23_i_12_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_18_23_i_14_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_18_23_i_16_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_18_23_i_18_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_18_23_i_8_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_24_29_i_10_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_24_29_i_12_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_24_29_i_14_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_24_29_i_16_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_24_29_i_18_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_24_29_i_8_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_6_11_i_17_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_6_11_i_18_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_6_11_i_19_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_6_11_i_20_n_0 : STD_LOGIC;
  signal \^s_1\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal wd3 : STD_LOGIC_VECTOR ( 29 downto 8 );
  signal we3 : STD_LOGIC;
  signal \NLW_q_reg[31]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_rf_reg_r1_0_31_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_rf_reg_r1_0_31_12_17_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_rf_reg_r1_0_31_18_23_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_rf_reg_r1_0_31_24_29_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_rf_reg_r1_0_31_30_31_SPO_UNCONNECTED : STD_LOGIC;
  signal \NLW_rf_reg_r1_0_31_30_31__0_SPO_UNCONNECTED\ : STD_LOGIC;
  signal NLW_rf_reg_r1_0_31_6_11_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_rf_reg_r2_0_31_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_rf_reg_r2_0_31_12_17_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_rf_reg_r2_0_31_18_23_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_rf_reg_r2_0_31_24_29_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_rf_reg_r2_0_31_30_31_SPO_UNCONNECTED : STD_LOGIC;
  signal \NLW_rf_reg_r2_0_31_30_31__0_SPO_UNCONNECTED\ : STD_LOGIC;
  signal NLW_rf_reg_r2_0_31_6_11_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ALUResult[0]_INST_0_i_6\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \ALUResult[10]_INST_0_i_5\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \ALUResult[11]_INST_0_i_12\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \ALUResult[11]_INST_0_i_6\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \ALUResult[12]_INST_0_i_5\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \ALUResult[13]_INST_0_i_5\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \ALUResult[14]_INST_0_i_5\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \ALUResult[16]_INST_0_i_15\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \ALUResult[16]_INST_0_i_8\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \ALUResult[17]_INST_0_i_5\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \ALUResult[18]_INST_0_i_5\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \ALUResult[19]_INST_0_i_7\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \ALUResult[1]_INST_0_i_7\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \ALUResult[20]_INST_0_i_5\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \ALUResult[21]_INST_0_i_5\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \ALUResult[21]_INST_0_i_9\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \ALUResult[23]_INST_0_i_9\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \ALUResult[24]_INST_0_i_9\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \ALUResult[25]_INST_0_i_9\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \ALUResult[26]_INST_0_i_8\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \ALUResult[27]_INST_0_i_8\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \ALUResult[28]_INST_0_i_8\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \ALUResult[29]_INST_0_i_6\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \ALUResult[29]_INST_0_i_7\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \ALUResult[29]_INST_0_i_8\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \ALUResult[31]_INST_0_i_11\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \ALUResult[3]_INST_0_i_3\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \ALUResult[6]_INST_0_i_16\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \ALUResult[6]_INST_0_i_17\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \ALUResult[7]_INST_0_i_35\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \ALUResult[7]_INST_0_i_37\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \ALUResult[7]_INST_0_i_40\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \ALUResult[9]_INST_0_i_5\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \q[31]_i_29\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \q[31]_i_35\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \q[31]_i_44\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \q[31]_i_47\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \q[31]_i_53\ : label is "soft_lutpair19";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \q_reg[11]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \q_reg[15]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \q_reg[19]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \q_reg[23]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \q_reg[27]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \q_reg[31]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \q_reg[3]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \q_reg[7]_i_1\ : label is 11;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r1_0_31_0_5 : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of rf_reg_r1_0_31_0_5 : label is 1024;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of rf_reg_r1_0_31_0_5 : label is "dp/rf/rf_reg_r1_0_31_0_5";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of rf_reg_r1_0_31_0_5 : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of rf_reg_r1_0_31_0_5 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of rf_reg_r1_0_31_0_5 : label is 31;
  attribute ram_offset : integer;
  attribute ram_offset of rf_reg_r1_0_31_0_5 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of rf_reg_r1_0_31_0_5 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of rf_reg_r1_0_31_0_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r1_0_31_12_17 : label is "";
  attribute RTL_RAM_BITS of rf_reg_r1_0_31_12_17 : label is 1024;
  attribute RTL_RAM_NAME of rf_reg_r1_0_31_12_17 : label is "dp/rf/rf_reg_r1_0_31_12_17";
  attribute RTL_RAM_TYPE of rf_reg_r1_0_31_12_17 : label is "RAM_SDP";
  attribute ram_addr_begin of rf_reg_r1_0_31_12_17 : label is 0;
  attribute ram_addr_end of rf_reg_r1_0_31_12_17 : label is 31;
  attribute ram_offset of rf_reg_r1_0_31_12_17 : label is 0;
  attribute ram_slice_begin of rf_reg_r1_0_31_12_17 : label is 12;
  attribute ram_slice_end of rf_reg_r1_0_31_12_17 : label is 17;
  attribute SOFT_HLUTNM of rf_reg_r1_0_31_12_17_i_15 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of rf_reg_r1_0_31_12_17_i_16 : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of rf_reg_r1_0_31_12_17_i_17 : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of rf_reg_r1_0_31_12_17_i_18 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of rf_reg_r1_0_31_12_17_i_19 : label is "soft_lutpair22";
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r1_0_31_18_23 : label is "";
  attribute RTL_RAM_BITS of rf_reg_r1_0_31_18_23 : label is 1024;
  attribute RTL_RAM_NAME of rf_reg_r1_0_31_18_23 : label is "dp/rf/rf_reg_r1_0_31_18_23";
  attribute RTL_RAM_TYPE of rf_reg_r1_0_31_18_23 : label is "RAM_SDP";
  attribute ram_addr_begin of rf_reg_r1_0_31_18_23 : label is 0;
  attribute ram_addr_end of rf_reg_r1_0_31_18_23 : label is 31;
  attribute ram_offset of rf_reg_r1_0_31_18_23 : label is 0;
  attribute ram_slice_begin of rf_reg_r1_0_31_18_23 : label is 18;
  attribute ram_slice_end of rf_reg_r1_0_31_18_23 : label is 23;
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r1_0_31_24_29 : label is "";
  attribute RTL_RAM_BITS of rf_reg_r1_0_31_24_29 : label is 1024;
  attribute RTL_RAM_NAME of rf_reg_r1_0_31_24_29 : label is "dp/rf/rf_reg_r1_0_31_24_29";
  attribute RTL_RAM_TYPE of rf_reg_r1_0_31_24_29 : label is "RAM_SDP";
  attribute ram_addr_begin of rf_reg_r1_0_31_24_29 : label is 0;
  attribute ram_addr_end of rf_reg_r1_0_31_24_29 : label is 31;
  attribute ram_offset of rf_reg_r1_0_31_24_29 : label is 0;
  attribute ram_slice_begin of rf_reg_r1_0_31_24_29 : label is 24;
  attribute ram_slice_end of rf_reg_r1_0_31_24_29 : label is 29;
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r1_0_31_30_31 : label is "";
  attribute RTL_RAM_BITS of rf_reg_r1_0_31_30_31 : label is 1024;
  attribute RTL_RAM_NAME of rf_reg_r1_0_31_30_31 : label is "dp/rf/rf_reg_r1_0_31_30_31";
  attribute RTL_RAM_TYPE of rf_reg_r1_0_31_30_31 : label is "RAM_SDP";
  attribute ram_addr_begin of rf_reg_r1_0_31_30_31 : label is 0;
  attribute ram_addr_end of rf_reg_r1_0_31_30_31 : label is 31;
  attribute ram_offset of rf_reg_r1_0_31_30_31 : label is 0;
  attribute ram_slice_begin of rf_reg_r1_0_31_30_31 : label is 30;
  attribute ram_slice_end of rf_reg_r1_0_31_30_31 : label is 31;
  attribute METHODOLOGY_DRC_VIOS of \rf_reg_r1_0_31_30_31__0\ : label is "";
  attribute RTL_RAM_BITS of \rf_reg_r1_0_31_30_31__0\ : label is 1024;
  attribute RTL_RAM_NAME of \rf_reg_r1_0_31_30_31__0\ : label is "dp/rf/rf_reg_r1_0_31_30_31";
  attribute RTL_RAM_TYPE of \rf_reg_r1_0_31_30_31__0\ : label is "RAM_SDP";
  attribute ram_addr_begin of \rf_reg_r1_0_31_30_31__0\ : label is 0;
  attribute ram_addr_end of \rf_reg_r1_0_31_30_31__0\ : label is 31;
  attribute ram_offset of \rf_reg_r1_0_31_30_31__0\ : label is 0;
  attribute ram_slice_begin of \rf_reg_r1_0_31_30_31__0\ : label is 30;
  attribute ram_slice_end of \rf_reg_r1_0_31_30_31__0\ : label is 31;
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r1_0_31_6_11 : label is "";
  attribute RTL_RAM_BITS of rf_reg_r1_0_31_6_11 : label is 1024;
  attribute RTL_RAM_NAME of rf_reg_r1_0_31_6_11 : label is "dp/rf/rf_reg_r1_0_31_6_11";
  attribute RTL_RAM_TYPE of rf_reg_r1_0_31_6_11 : label is "RAM_SDP";
  attribute ram_addr_begin of rf_reg_r1_0_31_6_11 : label is 0;
  attribute ram_addr_end of rf_reg_r1_0_31_6_11 : label is 31;
  attribute ram_offset of rf_reg_r1_0_31_6_11 : label is 0;
  attribute ram_slice_begin of rf_reg_r1_0_31_6_11 : label is 6;
  attribute ram_slice_end of rf_reg_r1_0_31_6_11 : label is 11;
  attribute SOFT_HLUTNM of rf_reg_r1_0_31_6_11_i_11 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of rf_reg_r1_0_31_6_11_i_17 : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of rf_reg_r1_0_31_6_11_i_18 : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of rf_reg_r1_0_31_6_11_i_19 : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of rf_reg_r1_0_31_6_11_i_20 : label is "soft_lutpair24";
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r2_0_31_0_5 : label is "";
  attribute RTL_RAM_BITS of rf_reg_r2_0_31_0_5 : label is 1024;
  attribute RTL_RAM_NAME of rf_reg_r2_0_31_0_5 : label is "dp/rf/rf_reg_r2_0_31_0_5";
  attribute RTL_RAM_TYPE of rf_reg_r2_0_31_0_5 : label is "RAM_SDP";
  attribute ram_addr_begin of rf_reg_r2_0_31_0_5 : label is 0;
  attribute ram_addr_end of rf_reg_r2_0_31_0_5 : label is 31;
  attribute ram_offset of rf_reg_r2_0_31_0_5 : label is 0;
  attribute ram_slice_begin of rf_reg_r2_0_31_0_5 : label is 0;
  attribute ram_slice_end of rf_reg_r2_0_31_0_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r2_0_31_12_17 : label is "";
  attribute RTL_RAM_BITS of rf_reg_r2_0_31_12_17 : label is 1024;
  attribute RTL_RAM_NAME of rf_reg_r2_0_31_12_17 : label is "dp/rf/rf_reg_r2_0_31_12_17";
  attribute RTL_RAM_TYPE of rf_reg_r2_0_31_12_17 : label is "RAM_SDP";
  attribute ram_addr_begin of rf_reg_r2_0_31_12_17 : label is 0;
  attribute ram_addr_end of rf_reg_r2_0_31_12_17 : label is 31;
  attribute ram_offset of rf_reg_r2_0_31_12_17 : label is 0;
  attribute ram_slice_begin of rf_reg_r2_0_31_12_17 : label is 12;
  attribute ram_slice_end of rf_reg_r2_0_31_12_17 : label is 17;
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r2_0_31_18_23 : label is "";
  attribute RTL_RAM_BITS of rf_reg_r2_0_31_18_23 : label is 1024;
  attribute RTL_RAM_NAME of rf_reg_r2_0_31_18_23 : label is "dp/rf/rf_reg_r2_0_31_18_23";
  attribute RTL_RAM_TYPE of rf_reg_r2_0_31_18_23 : label is "RAM_SDP";
  attribute ram_addr_begin of rf_reg_r2_0_31_18_23 : label is 0;
  attribute ram_addr_end of rf_reg_r2_0_31_18_23 : label is 31;
  attribute ram_offset of rf_reg_r2_0_31_18_23 : label is 0;
  attribute ram_slice_begin of rf_reg_r2_0_31_18_23 : label is 18;
  attribute ram_slice_end of rf_reg_r2_0_31_18_23 : label is 23;
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r2_0_31_24_29 : label is "";
  attribute RTL_RAM_BITS of rf_reg_r2_0_31_24_29 : label is 1024;
  attribute RTL_RAM_NAME of rf_reg_r2_0_31_24_29 : label is "dp/rf/rf_reg_r2_0_31_24_29";
  attribute RTL_RAM_TYPE of rf_reg_r2_0_31_24_29 : label is "RAM_SDP";
  attribute ram_addr_begin of rf_reg_r2_0_31_24_29 : label is 0;
  attribute ram_addr_end of rf_reg_r2_0_31_24_29 : label is 31;
  attribute ram_offset of rf_reg_r2_0_31_24_29 : label is 0;
  attribute ram_slice_begin of rf_reg_r2_0_31_24_29 : label is 24;
  attribute ram_slice_end of rf_reg_r2_0_31_24_29 : label is 29;
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r2_0_31_30_31 : label is "";
  attribute RTL_RAM_BITS of rf_reg_r2_0_31_30_31 : label is 1024;
  attribute RTL_RAM_NAME of rf_reg_r2_0_31_30_31 : label is "dp/rf/rf_reg_r2_0_31_30_31";
  attribute RTL_RAM_TYPE of rf_reg_r2_0_31_30_31 : label is "RAM_SDP";
  attribute ram_addr_begin of rf_reg_r2_0_31_30_31 : label is 0;
  attribute ram_addr_end of rf_reg_r2_0_31_30_31 : label is 31;
  attribute ram_offset of rf_reg_r2_0_31_30_31 : label is 0;
  attribute ram_slice_begin of rf_reg_r2_0_31_30_31 : label is 30;
  attribute ram_slice_end of rf_reg_r2_0_31_30_31 : label is 31;
  attribute METHODOLOGY_DRC_VIOS of \rf_reg_r2_0_31_30_31__0\ : label is "";
  attribute RTL_RAM_BITS of \rf_reg_r2_0_31_30_31__0\ : label is 1024;
  attribute RTL_RAM_NAME of \rf_reg_r2_0_31_30_31__0\ : label is "dp/rf/rf_reg_r2_0_31_30_31";
  attribute RTL_RAM_TYPE of \rf_reg_r2_0_31_30_31__0\ : label is "RAM_SDP";
  attribute ram_addr_begin of \rf_reg_r2_0_31_30_31__0\ : label is 0;
  attribute ram_addr_end of \rf_reg_r2_0_31_30_31__0\ : label is 31;
  attribute ram_offset of \rf_reg_r2_0_31_30_31__0\ : label is 0;
  attribute ram_slice_begin of \rf_reg_r2_0_31_30_31__0\ : label is 30;
  attribute ram_slice_end of \rf_reg_r2_0_31_30_31__0\ : label is 31;
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r2_0_31_6_11 : label is "";
  attribute RTL_RAM_BITS of rf_reg_r2_0_31_6_11 : label is 1024;
  attribute RTL_RAM_NAME of rf_reg_r2_0_31_6_11 : label is "dp/rf/rf_reg_r2_0_31_6_11";
  attribute RTL_RAM_TYPE of rf_reg_r2_0_31_6_11 : label is "RAM_SDP";
  attribute ram_addr_begin of rf_reg_r2_0_31_6_11 : label is 0;
  attribute ram_addr_end of rf_reg_r2_0_31_6_11 : label is 31;
  attribute ram_offset of rf_reg_r2_0_31_6_11 : label is 0;
  attribute ram_slice_begin of rf_reg_r2_0_31_6_11 : label is 6;
  attribute ram_slice_end of rf_reg_r2_0_31_6_11 : label is 11;
begin
  ALUResult(24 downto 0) <= \^aluresult\(24 downto 0);
  \ALUResult[0]_INST_0_i_3_0\ <= \^aluresult[0]_inst_0_i_3_0\;
  \ALUResult[1]_INST_0_i_4_0\ <= \^aluresult[1]_inst_0_i_4_0\;
  \ALUResult[31]_INST_0_i_3\ <= \^aluresult[31]_inst_0_i_3\;
  \ALUResult[31]_INST_0_i_3_0\ <= \^aluresult[31]_inst_0_i_3_0\;
  \ALUResult[31]_INST_0_i_3_1\ <= \^aluresult[31]_inst_0_i_3_1\;
  \ALUResult[31]_INST_0_i_6_0\ <= \^aluresult[31]_inst_0_i_6_0\;
  PCSrc(0) <= \^pcsrc\(0);
  SrcA(31 downto 0) <= \^srca\(31 downto 0);
  \^s\(1 downto 0) <= \^s_1\(1 downto 0);
  clk_0(1 downto 0) <= \^clk_0\(1 downto 0);
  \readDataM[15]\ <= \^readdatam[15]\;
\ALUResult[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAFAEAAA"
    )
        port map (
      I0 => \ALUResult[0]_INST_0_i_1_n_0\,
      I1 => \ALUResult[0]_INST_0_i_2_n_0\,
      I2 => \addressM[0]\,
      I3 => \addressM[0]_0\,
      I4 => \ALUResult[0]_INST_0_i_3_n_0\,
      O => \^aluresult[0]_inst_0_i_3_0\
    );
\ALUResult[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7272500022225000"
    )
        port map (
      I0 => \addressM[0]_0\,
      I1 => \addressM[0]\,
      I2 => \ALUResult[0]_INST_0_i_4_n_0\,
      I3 => \ALUResult[0]_INST_0_i_5_n_0\,
      I4 => SrcB(0),
      I5 => \ALUResult[1]_INST_0_i_8_n_0\,
      O => \ALUResult[0]_INST_0_i_1_n_0\
    );
\ALUResult[0]_INST_0_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => SrcB(14),
      I1 => SrcB(13),
      I2 => SrcB(12),
      O => \ALUResult[0]_INST_0_i_10_n_0\
    );
\ALUResult[0]_INST_0_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => SrcB(17),
      I1 => SrcB(15),
      I2 => SrcB(19),
      I3 => SrcB(18),
      O => \ALUResult[0]_INST_0_i_11_n_0\
    );
\ALUResult[0]_INST_0_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => SrcB(11),
      I1 => SrcB(10),
      I2 => SrcB(9),
      I3 => SrcB(20),
      I4 => \ALUResult[0]_INST_0_i_17_n_0\,
      O => \ALUResult[0]_INST_0_i_12_n_0\
    );
\ALUResult[0]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \^srca\(0),
      I1 => \^srca\(16),
      I2 => SrcB(3),
      I3 => \^srca\(24),
      I4 => SrcB(4),
      I5 => \^srca\(8),
      O => \ALUResult[0]_INST_0_i_13_n_0\
    );
\ALUResult[0]_INST_0_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF780078"
    )
        port map (
      I0 => rd11,
      I1 => rd10(0),
      I2 => SrcB(0),
      I3 => ALUControl(0),
      I4 => LT,
      O => \ALUResult[0]_INST_0_i_14_n_0\
    );
\ALUResult[0]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => rd11,
      I1 => rd10(0),
      I2 => SrcB(3),
      I3 => SrcB(4),
      I4 => SrcB(2),
      I5 => SrcB(1),
      O => \ALUResult[0]_INST_0_i_15_n_0\
    );
\ALUResult[0]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"050005FF053305FF"
    )
        port map (
      I0 => immext(25),
      I1 => rd20(25),
      I2 => immext(26),
      I3 => \addressM[1]\,
      I4 => rd21,
      I5 => rd20(26),
      O => \ALUResult[0]_INST_0_i_16_n_0\
    );
\ALUResult[0]_INST_0_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => SrcB(6),
      I1 => SrcB(5),
      I2 => SrcB(8),
      I3 => SrcB(7),
      O => \ALUResult[0]_INST_0_i_17_n_0\
    );
\ALUResult[0]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FCFCAAAAC0C0"
    )
        port map (
      I0 => \addressM[29]\(0),
      I1 => \^srca\(0),
      I2 => SrcB(0),
      I3 => \ALUResult[0]_INST_0_i_7_n_0\,
      I4 => \addressM[0]_1\,
      I5 => \addressM[0]_2\,
      O => \ALUResult[0]_INST_0_i_2_n_0\
    );
\ALUResult[0]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \^srca\(31),
      I1 => \ALUResult[0]_INST_0_i_8_n_0\,
      I2 => \ALUResult[0]_INST_0_i_9_n_0\,
      I3 => \ALUResult[0]_INST_0_i_10_n_0\,
      I4 => \ALUResult[0]_INST_0_i_11_n_0\,
      I5 => \ALUResult[0]_INST_0_i_12_n_0\,
      O => \ALUResult[0]_INST_0_i_3_n_0\
    );
\ALUResult[0]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \ALUResult[0]_INST_0_i_12_n_0\,
      I1 => \ALUResult[0]_INST_0_i_11_n_0\,
      I2 => \ALUResult[0]_INST_0_i_10_n_0\,
      I3 => \ALUResult[0]_INST_0_i_9_n_0\,
      I4 => \ALUResult[0]_INST_0_i_8_n_0\,
      O => \ALUResult[0]_INST_0_i_4_n_0\
    );
\ALUResult[0]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8FF33CC00"
    )
        port map (
      I0 => \ALUResult[6]_INST_0_i_11_n_0\,
      I1 => SrcB(2),
      I2 => \ALUResult[2]_INST_0_i_10_n_0\,
      I3 => \ALUResult[4]_INST_0_i_12_n_0\,
      I4 => \ALUResult[0]_INST_0_i_13_n_0\,
      I5 => SrcB(1),
      O => \ALUResult[0]_INST_0_i_5_n_0\
    );
\ALUResult[0]_INST_0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F808"
    )
        port map (
      I0 => rd20(0),
      I1 => rd21,
      I2 => \addressM[1]\,
      I3 => immext(0),
      O => SrcB(0)
    );
\ALUResult[0]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000CAAAAFF0CAAAA"
    )
        port map (
      I0 => \ALUResult[0]_INST_0_i_14_n_0\,
      I1 => \ALUResult[0]_INST_0_i_15_n_0\,
      I2 => \ALUResult[30]_INST_0_i_7_n_0\,
      I3 => ALUControl(0),
      I4 => \ALUControl__0\(0),
      I5 => CO(0),
      O => \ALUResult[0]_INST_0_i_7_n_0\
    );
\ALUResult[0]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => SrcB(23),
      I1 => SrcB(24),
      I2 => SrcB(21),
      I3 => SrcB(22),
      I4 => SrcB(16),
      O => \ALUResult[0]_INST_0_i_8_n_0\
    );
\ALUResult[0]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => \^clk_0\(1),
      I1 => SrcB(29),
      I2 => \^clk_0\(0),
      I3 => \ALUResult[0]_INST_0_i_16_n_0\,
      I4 => SrcB(27),
      I5 => SrcB(28),
      O => \ALUResult[0]_INST_0_i_9_n_0\
    );
\ALUResult[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0CCCCAAAACCCC"
    )
        port map (
      I0 => SrcB(10),
      I1 => \ALUResult[10]_INST_0_i_2_n_0\,
      I2 => \ALUResult[10]_INST_0_i_3_n_0\,
      I3 => \ALUResult[10]_INST_0_i_4_n_0\,
      I4 => \addressM[0]_0\,
      I5 => \addressM[0]\,
      O => \^aluresult[31]_inst_0_i_3_1\
    );
\ALUResult[10]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0808F808"
    )
        port map (
      I0 => rd20(10),
      I1 => rd21,
      I2 => \addressM[1]\,
      I3 => Instr(26),
      I4 => sel0(2),
      O => SrcB(10)
    );
\ALUResult[10]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B080FFFFB0800000"
    )
        port map (
      I0 => \^srca\(3),
      I1 => SrcB(2),
      I2 => \ALUResult[31]_INST_0_i_10_n_0\,
      I3 => \^srca\(7),
      I4 => SrcB(1),
      I5 => \ALUResult[12]_INST_0_i_11_n_0\,
      O => \ALUResult[10]_INST_0_i_10_n_0\
    );
\ALUResult[10]_INST_0_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => rd10(30),
      I1 => SrcB(4),
      I2 => rd11,
      I3 => rd10(14),
      O => \ALUResult[10]_INST_0_i_11_n_0\
    );
\ALUResult[10]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \ALUResult[29]_INST_0_i_8_n_0\,
      I1 => \ALUResult[11]_INST_0_i_6_n_0\,
      I2 => \ALUResult[31]_INST_0_i_11_n_0\,
      I3 => \ALUResult[10]_INST_0_i_5_n_0\,
      I4 => \ALUResult[10]_INST_0_i_6_n_0\,
      O => \ALUResult[10]_INST_0_i_2_n_0\
    );
\ALUResult[10]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000EAEAFF008080"
    )
        port map (
      I0 => SrcB(10),
      I1 => rd11,
      I2 => rd10(10),
      I3 => \addressM[29]\(10),
      I4 => \addressM[0]_1\,
      I5 => \addressM[0]_2\,
      O => \ALUResult[10]_INST_0_i_3_n_0\
    );
\ALUResult[10]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A88A888A888A888"
    )
        port map (
      I0 => \addressM[16]_0\,
      I1 => \ALUResult[10]_INST_0_i_7_n_0\,
      I2 => SrcB(10),
      I3 => \addressM[16]\,
      I4 => rd10(10),
      I5 => rd11,
      O => \ALUResult[10]_INST_0_i_4_n_0\
    );
\ALUResult[10]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult[12]_INST_0_i_8_n_0\,
      I1 => SrcB(1),
      I2 => \ALUResult[10]_INST_0_i_8_n_0\,
      O => \ALUResult[10]_INST_0_i_5_n_0\
    );
\ALUResult[10]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF8F8800000000"
    )
        port map (
      I0 => \ALUResult[7]_INST_0_i_7_n_0\,
      I1 => \ALUResult[11]_INST_0_i_11_n_0\,
      I2 => \ALUResult[30]_INST_0_i_7_n_0\,
      I3 => \ALUResult[10]_INST_0_i_9_n_0\,
      I4 => \ALUResult[0]_INST_0_i_3_n_0\,
      I5 => \addressM[0]\,
      O => \ALUResult[10]_INST_0_i_6_n_0\
    );
\ALUResult[10]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F2000000220000"
    )
        port map (
      I0 => \ALUResult[11]_INST_0_i_12_n_0\,
      I1 => \ALUResult[30]_INST_0_i_7_n_0\,
      I2 => \ALUResult[10]_INST_0_i_10_n_0\,
      I3 => ALUControl(0),
      I4 => \ALUControl__0\(0),
      I5 => \ALUResult[7]_INST_0_i_7_n_0\,
      O => \ALUResult[10]_INST_0_i_7_n_0\
    );
\ALUResult[10]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7250FFFF72500000"
    )
        port map (
      I0 => SrcB(3),
      I1 => SrcB(4),
      I2 => \ALUResult[10]_INST_0_i_11_n_0\,
      I3 => \^srca\(22),
      I4 => SrcB(2),
      I5 => \ALUResult[8]_INST_0_i_9_n_0\,
      O => \ALUResult[10]_INST_0_i_8_n_0\
    );
\ALUResult[10]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[16]_INST_0_i_14_n_0\,
      I1 => \ALUResult[7]_INST_0_i_20_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[7]_INST_0_i_18_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[7]_INST_0_i_19_n_0\,
      O => \ALUResult[10]_INST_0_i_9_n_0\
    );
\ALUResult[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0CCCCAAAACCCC"
    )
        port map (
      I0 => SrcB(11),
      I1 => \ALUResult[11]_INST_0_i_2_n_0\,
      I2 => \ALUResult[11]_INST_0_i_3_n_0\,
      I3 => \ALUResult[11]_INST_0_i_4_n_0\,
      I4 => \addressM[0]_0\,
      I5 => \addressM[0]\,
      O => \^aluresult[31]_inst_0_i_3_0\
    );
\ALUResult[11]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0808F808"
    )
        port map (
      I0 => rd20(11),
      I1 => rd21,
      I2 => \addressM[1]\,
      I3 => \addressM[11]\,
      I4 => sel0(2),
      O => SrcB(11)
    );
\ALUResult[11]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7250FFFF72500000"
    )
        port map (
      I0 => SrcB(3),
      I1 => SrcB(4),
      I2 => \ALUResult[11]_INST_0_i_13_n_0\,
      I3 => \^srca\(23),
      I4 => SrcB(2),
      I5 => \ALUResult[7]_INST_0_i_24_n_0\,
      O => \ALUResult[11]_INST_0_i_10_n_0\
    );
\ALUResult[11]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[17]_INST_0_i_11_n_0\,
      I1 => \ALUResult[7]_INST_0_i_14_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[15]_INST_0_i_14_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[7]_INST_0_i_16_n_0\,
      O => \ALUResult[11]_INST_0_i_11_n_0\
    );
\ALUResult[11]_INST_0_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult[11]_INST_0_i_14_n_0\,
      I1 => SrcB(1),
      I2 => \ALUResult[13]_INST_0_i_12_n_0\,
      O => \ALUResult[11]_INST_0_i_12_n_0\
    );
\ALUResult[11]_INST_0_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E020"
    )
        port map (
      I0 => rd10(15),
      I1 => SrcB(4),
      I2 => rd11,
      I3 => rd10(31),
      O => \ALUResult[11]_INST_0_i_13_n_0\
    );
\ALUResult[11]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003300B8B8"
    )
        port map (
      I0 => \^srca\(4),
      I1 => SrcB(2),
      I2 => \^srca\(8),
      I3 => \^srca\(0),
      I4 => SrcB(3),
      I5 => SrcB(4),
      O => \ALUResult[11]_INST_0_i_14_n_0\
    );
\ALUResult[11]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \ALUResult[29]_INST_0_i_8_n_0\,
      I1 => \ALUResult[12]_INST_0_i_5_n_0\,
      I2 => \ALUResult[31]_INST_0_i_11_n_0\,
      I3 => \ALUResult[11]_INST_0_i_6_n_0\,
      I4 => \ALUResult[11]_INST_0_i_7_n_0\,
      O => \ALUResult[11]_INST_0_i_2_n_0\
    );
\ALUResult[11]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000EAEAFF008080"
    )
        port map (
      I0 => SrcB(11),
      I1 => rd11,
      I2 => rd10(11),
      I3 => \addressM[29]\(11),
      I4 => \addressM[0]_1\,
      I5 => \addressM[0]_2\,
      O => \ALUResult[11]_INST_0_i_3_n_0\
    );
\ALUResult[11]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A88A888A888A888"
    )
        port map (
      I0 => \addressM[16]_0\,
      I1 => \ALUResult[11]_INST_0_i_8_n_0\,
      I2 => SrcB(11),
      I3 => \addressM[16]\,
      I4 => rd10(11),
      I5 => rd11,
      O => \ALUResult[11]_INST_0_i_4_n_0\
    );
\ALUResult[11]_INST_0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult[13]_INST_0_i_9_n_0\,
      I1 => SrcB(1),
      I2 => \ALUResult[11]_INST_0_i_10_n_0\,
      O => \ALUResult[11]_INST_0_i_6_n_0\
    );
\ALUResult[11]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF8F8800000000"
    )
        port map (
      I0 => \ALUResult[7]_INST_0_i_7_n_0\,
      I1 => \ALUResult[12]_INST_0_i_9_n_0\,
      I2 => \ALUResult[30]_INST_0_i_7_n_0\,
      I3 => \ALUResult[11]_INST_0_i_11_n_0\,
      I4 => \ALUResult[0]_INST_0_i_3_n_0\,
      I5 => \addressM[0]\,
      O => \ALUResult[11]_INST_0_i_7_n_0\
    );
\ALUResult[11]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F2000000220000"
    )
        port map (
      I0 => \ALUResult[12]_INST_0_i_10_n_0\,
      I1 => \ALUResult[30]_INST_0_i_7_n_0\,
      I2 => \ALUResult[11]_INST_0_i_12_n_0\,
      I3 => ALUControl(0),
      I4 => \ALUControl__0\(0),
      I5 => \ALUResult[7]_INST_0_i_7_n_0\,
      O => \ALUResult[11]_INST_0_i_8_n_0\
    );
\ALUResult[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0CCCCAAAACCCC"
    )
        port map (
      I0 => SrcB(12),
      I1 => \ALUResult[12]_INST_0_i_2_n_0\,
      I2 => \ALUResult[12]_INST_0_i_3_n_0\,
      I3 => \ALUResult[12]_INST_0_i_4_n_0\,
      I4 => \addressM[0]_0\,
      I5 => \addressM[0]\,
      O => \^aluresult\(7)
    );
\ALUResult[12]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F8F8F8F8080808"
    )
        port map (
      I0 => rd20(12),
      I1 => rd21,
      I2 => \addressM[1]\,
      I3 => Instr(8),
      I4 => \q_reg[19]_1\,
      I5 => \q_reg[19]_0\,
      O => SrcB(12)
    );
\ALUResult[12]_INST_0_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult[12]_INST_0_i_11_n_0\,
      I1 => SrcB(1),
      I2 => \ALUResult[14]_INST_0_i_12_n_0\,
      O => \ALUResult[12]_INST_0_i_10_n_0\
    );
\ALUResult[12]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003300B8B8"
    )
        port map (
      I0 => \^srca\(5),
      I1 => SrcB(2),
      I2 => \^srca\(9),
      I3 => \^srca\(1),
      I4 => SrcB(3),
      I5 => SrcB(4),
      O => \ALUResult[12]_INST_0_i_11_n_0\
    );
\ALUResult[12]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \ALUResult[29]_INST_0_i_8_n_0\,
      I1 => \ALUResult[13]_INST_0_i_5_n_0\,
      I2 => \ALUResult[31]_INST_0_i_11_n_0\,
      I3 => \ALUResult[12]_INST_0_i_5_n_0\,
      I4 => \ALUResult[12]_INST_0_i_6_n_0\,
      O => \ALUResult[12]_INST_0_i_2_n_0\
    );
\ALUResult[12]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000EAEAFF008080"
    )
        port map (
      I0 => SrcB(12),
      I1 => rd11,
      I2 => rd10(12),
      I3 => \addressM[29]\(12),
      I4 => \addressM[0]_1\,
      I5 => \addressM[0]_2\,
      O => \ALUResult[12]_INST_0_i_3_n_0\
    );
\ALUResult[12]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A88A888A888A888"
    )
        port map (
      I0 => \addressM[16]_0\,
      I1 => \ALUResult[12]_INST_0_i_7_n_0\,
      I2 => SrcB(12),
      I3 => \addressM[16]\,
      I4 => rd10(12),
      I5 => rd11,
      O => \ALUResult[12]_INST_0_i_4_n_0\
    );
\ALUResult[12]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult[14]_INST_0_i_9_n_0\,
      I1 => SrcB(1),
      I2 => \ALUResult[12]_INST_0_i_8_n_0\,
      O => \ALUResult[12]_INST_0_i_5_n_0\
    );
\ALUResult[12]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF8F8800000000"
    )
        port map (
      I0 => \ALUResult[7]_INST_0_i_7_n_0\,
      I1 => \ALUResult[13]_INST_0_i_10_n_0\,
      I2 => \ALUResult[30]_INST_0_i_7_n_0\,
      I3 => \ALUResult[12]_INST_0_i_9_n_0\,
      I4 => \ALUResult[0]_INST_0_i_3_n_0\,
      I5 => \addressM[0]\,
      O => \ALUResult[12]_INST_0_i_6_n_0\
    );
\ALUResult[12]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F2000000220000"
    )
        port map (
      I0 => \ALUResult[13]_INST_0_i_11_n_0\,
      I1 => \ALUResult[30]_INST_0_i_7_n_0\,
      I2 => \ALUResult[12]_INST_0_i_10_n_0\,
      I3 => ALUControl(0),
      I4 => \ALUControl__0\(0),
      I5 => \ALUResult[7]_INST_0_i_7_n_0\,
      O => \ALUResult[12]_INST_0_i_7_n_0\
    );
\ALUResult[12]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00CAFFFF00CA0000"
    )
        port map (
      I0 => \^srca\(16),
      I1 => \^srca\(24),
      I2 => SrcB(3),
      I3 => SrcB(4),
      I4 => SrcB(2),
      I5 => \ALUResult[8]_INST_0_i_10_n_0\,
      O => \ALUResult[12]_INST_0_i_8_n_0\
    );
\ALUResult[12]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[18]_INST_0_i_11_n_0\,
      I1 => \ALUResult[7]_INST_0_i_18_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[16]_INST_0_i_14_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[7]_INST_0_i_20_n_0\,
      O => \ALUResult[12]_INST_0_i_9_n_0\
    );
\ALUResult[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0CCCCAAAACCCC"
    )
        port map (
      I0 => SrcB(13),
      I1 => \ALUResult[13]_INST_0_i_2_n_0\,
      I2 => \ALUResult[13]_INST_0_i_3_n_0\,
      I3 => \ALUResult[13]_INST_0_i_4_n_0\,
      I4 => \addressM[0]_0\,
      I5 => \addressM[0]\,
      O => \^aluresult\(8)
    );
\ALUResult[13]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F8F8F8F8080808"
    )
        port map (
      I0 => rd20(13),
      I1 => rd21,
      I2 => \addressM[1]\,
      I3 => Instr(9),
      I4 => \q_reg[19]_1\,
      I5 => \q_reg[19]_0\,
      O => SrcB(13)
    );
\ALUResult[13]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[19]_INST_0_i_15_n_0\,
      I1 => \ALUResult[15]_INST_0_i_14_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[17]_INST_0_i_11_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[7]_INST_0_i_14_n_0\,
      O => \ALUResult[13]_INST_0_i_10_n_0\
    );
\ALUResult[13]_INST_0_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \ALUResult[13]_INST_0_i_12_n_0\,
      I1 => SrcB(1),
      I2 => \ALUResult[15]_INST_0_i_15_n_0\,
      I3 => SrcB(2),
      I4 => \ALUResult[19]_INST_0_i_16_n_0\,
      O => \ALUResult[13]_INST_0_i_11_n_0\
    );
\ALUResult[13]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003300B8B8"
    )
        port map (
      I0 => \^srca\(6),
      I1 => SrcB(2),
      I2 => \^srca\(10),
      I3 => \^srca\(2),
      I4 => SrcB(3),
      I5 => SrcB(4),
      O => \ALUResult[13]_INST_0_i_12_n_0\
    );
\ALUResult[13]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \ALUResult[29]_INST_0_i_8_n_0\,
      I1 => \ALUResult[14]_INST_0_i_5_n_0\,
      I2 => \ALUResult[31]_INST_0_i_11_n_0\,
      I3 => \ALUResult[13]_INST_0_i_5_n_0\,
      I4 => \ALUResult[13]_INST_0_i_6_n_0\,
      O => \ALUResult[13]_INST_0_i_2_n_0\
    );
\ALUResult[13]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000EAEAFF008080"
    )
        port map (
      I0 => SrcB(13),
      I1 => rd11,
      I2 => rd10(13),
      I3 => \addressM[29]\(13),
      I4 => \addressM[0]_1\,
      I5 => \addressM[0]_2\,
      O => \ALUResult[13]_INST_0_i_3_n_0\
    );
\ALUResult[13]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A88A888A888A888"
    )
        port map (
      I0 => \addressM[16]_0\,
      I1 => \ALUResult[13]_INST_0_i_7_n_0\,
      I2 => SrcB(13),
      I3 => \addressM[16]\,
      I4 => rd10(13),
      I5 => rd11,
      O => \ALUResult[13]_INST_0_i_4_n_0\
    );
\ALUResult[13]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult[13]_INST_0_i_8_n_0\,
      I1 => SrcB(1),
      I2 => \ALUResult[13]_INST_0_i_9_n_0\,
      O => \ALUResult[13]_INST_0_i_5_n_0\
    );
\ALUResult[13]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF8F8800000000"
    )
        port map (
      I0 => \ALUResult[7]_INST_0_i_7_n_0\,
      I1 => \ALUResult[14]_INST_0_i_10_n_0\,
      I2 => \ALUResult[30]_INST_0_i_7_n_0\,
      I3 => \ALUResult[13]_INST_0_i_10_n_0\,
      I4 => \ALUResult[0]_INST_0_i_3_n_0\,
      I5 => \addressM[0]\,
      O => \ALUResult[13]_INST_0_i_6_n_0\
    );
\ALUResult[13]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F2000000220000"
    )
        port map (
      I0 => \ALUResult[14]_INST_0_i_11_n_0\,
      I1 => \ALUResult[30]_INST_0_i_7_n_0\,
      I2 => \ALUResult[13]_INST_0_i_11_n_0\,
      I3 => ALUControl(0),
      I4 => \ALUControl__0\(0),
      I5 => \ALUResult[7]_INST_0_i_7_n_0\,
      O => \ALUResult[13]_INST_0_i_7_n_0\
    );
\ALUResult[13]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00CAFFFF00CA0000"
    )
        port map (
      I0 => \^srca\(19),
      I1 => \^srca\(27),
      I2 => SrcB(3),
      I3 => SrcB(4),
      I4 => SrcB(2),
      I5 => \ALUResult[15]_INST_0_i_11_n_0\,
      O => \ALUResult[13]_INST_0_i_8_n_0\
    );
\ALUResult[13]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00CAFFFF00CA0000"
    )
        port map (
      I0 => \^srca\(17),
      I1 => \^srca\(25),
      I2 => SrcB(3),
      I3 => SrcB(4),
      I4 => SrcB(2),
      I5 => \ALUResult[7]_INST_0_i_22_n_0\,
      O => \ALUResult[13]_INST_0_i_9_n_0\
    );
\ALUResult[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0CCCCAAAACCCC"
    )
        port map (
      I0 => SrcB(14),
      I1 => \ALUResult[14]_INST_0_i_2_n_0\,
      I2 => \ALUResult[14]_INST_0_i_3_n_0\,
      I3 => \ALUResult[14]_INST_0_i_4_n_0\,
      I4 => \addressM[0]_0\,
      I5 => \addressM[0]\,
      O => \^aluresult\(9)
    );
\ALUResult[14]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F8F8F8F8080808"
    )
        port map (
      I0 => rd20(14),
      I1 => rd21,
      I2 => \addressM[1]\,
      I3 => Instr(10),
      I4 => \q_reg[19]_1\,
      I5 => \q_reg[19]_0\,
      O => SrcB(14)
    );
\ALUResult[14]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[20]_INST_0_i_12_n_0\,
      I1 => \ALUResult[16]_INST_0_i_14_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[18]_INST_0_i_11_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[7]_INST_0_i_18_n_0\,
      O => \ALUResult[14]_INST_0_i_10_n_0\
    );
\ALUResult[14]_INST_0_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \ALUResult[14]_INST_0_i_12_n_0\,
      I1 => SrcB(1),
      I2 => \ALUResult[16]_INST_0_i_15_n_0\,
      I3 => SrcB(2),
      I4 => \ALUResult[20]_INST_0_i_13_n_0\,
      O => \ALUResult[14]_INST_0_i_11_n_0\
    );
\ALUResult[14]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003300B8B8"
    )
        port map (
      I0 => \^srca\(7),
      I1 => SrcB(2),
      I2 => \^srca\(11),
      I3 => \^srca\(3),
      I4 => SrcB(3),
      I5 => SrcB(4),
      O => \ALUResult[14]_INST_0_i_12_n_0\
    );
\ALUResult[14]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \ALUResult[29]_INST_0_i_8_n_0\,
      I1 => \ALUResult[15]_INST_0_i_5_n_0\,
      I2 => \ALUResult[31]_INST_0_i_11_n_0\,
      I3 => \ALUResult[14]_INST_0_i_5_n_0\,
      I4 => \ALUResult[14]_INST_0_i_6_n_0\,
      O => \ALUResult[14]_INST_0_i_2_n_0\
    );
\ALUResult[14]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000EAEAFF008080"
    )
        port map (
      I0 => SrcB(14),
      I1 => rd11,
      I2 => rd10(14),
      I3 => \addressM[29]\(14),
      I4 => \addressM[0]_1\,
      I5 => \addressM[0]_2\,
      O => \ALUResult[14]_INST_0_i_3_n_0\
    );
\ALUResult[14]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A88A888A888A888"
    )
        port map (
      I0 => \addressM[16]_0\,
      I1 => \ALUResult[14]_INST_0_i_7_n_0\,
      I2 => SrcB(14),
      I3 => \addressM[16]\,
      I4 => rd10(14),
      I5 => rd11,
      O => \ALUResult[14]_INST_0_i_4_n_0\
    );
\ALUResult[14]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult[14]_INST_0_i_8_n_0\,
      I1 => SrcB(1),
      I2 => \ALUResult[14]_INST_0_i_9_n_0\,
      O => \ALUResult[14]_INST_0_i_5_n_0\
    );
\ALUResult[14]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF8F8800000000"
    )
        port map (
      I0 => \ALUResult[7]_INST_0_i_7_n_0\,
      I1 => \ALUResult[15]_INST_0_i_12_n_0\,
      I2 => \ALUResult[30]_INST_0_i_7_n_0\,
      I3 => \ALUResult[14]_INST_0_i_10_n_0\,
      I4 => \ALUResult[0]_INST_0_i_3_n_0\,
      I5 => \addressM[0]\,
      O => \ALUResult[14]_INST_0_i_6_n_0\
    );
\ALUResult[14]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F2000000220000"
    )
        port map (
      I0 => \ALUResult[15]_INST_0_i_13_n_0\,
      I1 => \ALUResult[30]_INST_0_i_7_n_0\,
      I2 => \ALUResult[14]_INST_0_i_11_n_0\,
      I3 => ALUControl(0),
      I4 => \ALUControl__0\(0),
      I5 => \ALUResult[7]_INST_0_i_7_n_0\,
      O => \ALUResult[14]_INST_0_i_7_n_0\
    );
\ALUResult[14]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00CAFFFF00CA0000"
    )
        port map (
      I0 => \^srca\(20),
      I1 => \^srca\(28),
      I2 => SrcB(3),
      I3 => SrcB(4),
      I4 => SrcB(2),
      I5 => \ALUResult[16]_INST_0_i_11_n_0\,
      O => \ALUResult[14]_INST_0_i_8_n_0\
    );
\ALUResult[14]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00CAFFFF00CA0000"
    )
        port map (
      I0 => \^srca\(18),
      I1 => \^srca\(26),
      I2 => SrcB(3),
      I3 => SrcB(4),
      I4 => SrcB(2),
      I5 => \ALUResult[8]_INST_0_i_8_n_0\,
      O => \ALUResult[14]_INST_0_i_9_n_0\
    );
\ALUResult[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0CCCCAAAACCCC"
    )
        port map (
      I0 => SrcB(15),
      I1 => \ALUResult[15]_INST_0_i_2_n_0\,
      I2 => \ALUResult[15]_INST_0_i_3_n_0\,
      I3 => \ALUResult[15]_INST_0_i_4_n_0\,
      I4 => \addressM[0]_0\,
      I5 => \addressM[0]\,
      O => \^aluresult\(10)
    );
\ALUResult[15]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F8F8F8F8080808"
    )
        port map (
      I0 => rd20(15),
      I1 => rd21,
      I2 => \addressM[1]\,
      I3 => Instr(11),
      I4 => \q_reg[19]_1\,
      I5 => \q_reg[19]_0\,
      O => SrcB(15)
    );
\ALUResult[15]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000C088"
    )
        port map (
      I0 => rd10(19),
      I1 => rd11,
      I2 => rd10(27),
      I3 => SrcB(3),
      I4 => SrcB(4),
      O => \ALUResult[15]_INST_0_i_10_n_0\
    );
\ALUResult[15]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000C0C0F000A0A0"
    )
        port map (
      I0 => rd10(15),
      I1 => rd10(31),
      I2 => rd11,
      I3 => rd10(23),
      I4 => SrcB(3),
      I5 => SrcB(4),
      O => \ALUResult[15]_INST_0_i_11_n_0\
    );
\ALUResult[15]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[21]_INST_0_i_12_n_0\,
      I1 => \ALUResult[17]_INST_0_i_11_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[19]_INST_0_i_15_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[15]_INST_0_i_14_n_0\,
      O => \ALUResult[15]_INST_0_i_12_n_0\
    );
\ALUResult[15]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[15]_INST_0_i_15_n_0\,
      I1 => \ALUResult[19]_INST_0_i_16_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[17]_INST_0_i_12_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[21]_INST_0_i_13_n_0\,
      O => \ALUResult[15]_INST_0_i_13_n_0\
    );
\ALUResult[15]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFB8000000B80000"
    )
        port map (
      I0 => rd10(23),
      I1 => SrcB(3),
      I2 => rd10(15),
      I3 => SrcB(4),
      I4 => rd11,
      I5 => rd10(31),
      O => \ALUResult[15]_INST_0_i_14_n_0\
    );
\ALUResult[15]_INST_0_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000C088"
    )
        port map (
      I0 => rd10(8),
      I1 => rd11,
      I2 => rd10(0),
      I3 => SrcB(3),
      I4 => SrcB(4),
      O => \ALUResult[15]_INST_0_i_15_n_0\
    );
\ALUResult[15]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \ALUResult[29]_INST_0_i_8_n_0\,
      I1 => \ALUResult[16]_INST_0_i_5_n_0\,
      I2 => \ALUResult[31]_INST_0_i_11_n_0\,
      I3 => \ALUResult[15]_INST_0_i_5_n_0\,
      I4 => \ALUResult[15]_INST_0_i_6_n_0\,
      O => \ALUResult[15]_INST_0_i_2_n_0\
    );
\ALUResult[15]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000EAEAFF008080"
    )
        port map (
      I0 => SrcB(15),
      I1 => rd11,
      I2 => rd10(15),
      I3 => \addressM[29]\(15),
      I4 => \addressM[0]_1\,
      I5 => \addressM[0]_2\,
      O => \ALUResult[15]_INST_0_i_3_n_0\
    );
\ALUResult[15]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A88A888A888A888"
    )
        port map (
      I0 => \addressM[16]_0\,
      I1 => \ALUResult[15]_INST_0_i_7_n_0\,
      I2 => SrcB(15),
      I3 => \addressM[16]\,
      I4 => rd10(15),
      I5 => rd11,
      O => \ALUResult[15]_INST_0_i_4_n_0\
    );
\ALUResult[15]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[15]_INST_0_i_8_n_0\,
      I1 => \ALUResult[15]_INST_0_i_9_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[15]_INST_0_i_10_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[15]_INST_0_i_11_n_0\,
      O => \ALUResult[15]_INST_0_i_5_n_0\
    );
\ALUResult[15]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF8F8800000000"
    )
        port map (
      I0 => \ALUResult[7]_INST_0_i_7_n_0\,
      I1 => \ALUResult[16]_INST_0_i_12_n_0\,
      I2 => \ALUResult[30]_INST_0_i_7_n_0\,
      I3 => \ALUResult[15]_INST_0_i_12_n_0\,
      I4 => \ALUResult[0]_INST_0_i_3_n_0\,
      I5 => \addressM[0]\,
      O => \ALUResult[15]_INST_0_i_6_n_0\
    );
\ALUResult[15]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F2000000220000"
    )
        port map (
      I0 => \ALUResult[16]_INST_0_i_13_n_0\,
      I1 => \ALUResult[30]_INST_0_i_7_n_0\,
      I2 => \ALUResult[15]_INST_0_i_13_n_0\,
      I3 => ALUControl(0),
      I4 => \ALUControl__0\(0),
      I5 => \ALUResult[7]_INST_0_i_7_n_0\,
      O => \ALUResult[15]_INST_0_i_7_n_0\
    );
\ALUResult[15]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000C088"
    )
        port map (
      I0 => rd10(21),
      I1 => rd11,
      I2 => rd10(29),
      I3 => SrcB(3),
      I4 => SrcB(4),
      O => \ALUResult[15]_INST_0_i_8_n_0\
    );
\ALUResult[15]_INST_0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000C088"
    )
        port map (
      I0 => rd10(17),
      I1 => rd11,
      I2 => rd10(25),
      I3 => SrcB(3),
      I4 => SrcB(4),
      O => \ALUResult[15]_INST_0_i_9_n_0\
    );
\ALUResult[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0CCCCAAAACCCC"
    )
        port map (
      I0 => SrcB(16),
      I1 => \ALUResult[16]_INST_0_i_2_n_0\,
      I2 => \ALUResult[16]_INST_0_i_3_n_0\,
      I3 => \ALUResult[16]_INST_0_i_4_n_0\,
      I4 => \addressM[0]_0\,
      I5 => \addressM[0]\,
      O => \^aluresult\(11)
    );
\ALUResult[16]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F8F8F8F8080808"
    )
        port map (
      I0 => rd20(16),
      I1 => rd21,
      I2 => \addressM[1]\,
      I3 => Instr(12),
      I4 => \q_reg[19]_1\,
      I5 => \q_reg[19]_0\,
      O => SrcB(16)
    );
\ALUResult[16]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000C088"
    )
        port map (
      I0 => rd10(20),
      I1 => rd11,
      I2 => rd10(28),
      I3 => SrcB(3),
      I4 => SrcB(4),
      O => \ALUResult[16]_INST_0_i_10_n_0\
    );
\ALUResult[16]_INST_0_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000C088"
    )
        port map (
      I0 => rd10(16),
      I1 => rd11,
      I2 => rd10(24),
      I3 => SrcB(3),
      I4 => SrcB(4),
      O => \ALUResult[16]_INST_0_i_11_n_0\
    );
\ALUResult[16]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[22]_INST_0_i_12_n_0\,
      I1 => \ALUResult[18]_INST_0_i_11_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[20]_INST_0_i_12_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[16]_INST_0_i_14_n_0\,
      O => \ALUResult[16]_INST_0_i_12_n_0\
    );
\ALUResult[16]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[16]_INST_0_i_15_n_0\,
      I1 => \ALUResult[20]_INST_0_i_13_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[18]_INST_0_i_12_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[22]_INST_0_i_13_n_0\,
      O => \ALUResult[16]_INST_0_i_13_n_0\
    );
\ALUResult[16]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFB8000000B80000"
    )
        port map (
      I0 => rd10(24),
      I1 => SrcB(3),
      I2 => rd10(16),
      I3 => SrcB(4),
      I4 => rd11,
      I5 => rd10(31),
      O => \ALUResult[16]_INST_0_i_14_n_0\
    );
\ALUResult[16]_INST_0_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000C088"
    )
        port map (
      I0 => rd10(9),
      I1 => rd11,
      I2 => rd10(1),
      I3 => SrcB(3),
      I4 => SrcB(4),
      O => \ALUResult[16]_INST_0_i_15_n_0\
    );
\ALUResult[16]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \ALUResult[29]_INST_0_i_8_n_0\,
      I1 => \ALUResult[17]_INST_0_i_5_n_0\,
      I2 => \ALUResult[31]_INST_0_i_11_n_0\,
      I3 => \ALUResult[16]_INST_0_i_5_n_0\,
      I4 => \ALUResult[16]_INST_0_i_6_n_0\,
      O => \ALUResult[16]_INST_0_i_2_n_0\
    );
\ALUResult[16]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000EAEAFF008080"
    )
        port map (
      I0 => SrcB(16),
      I1 => rd11,
      I2 => rd10(16),
      I3 => \addressM[29]\(16),
      I4 => \addressM[0]_1\,
      I5 => \addressM[0]_2\,
      O => \ALUResult[16]_INST_0_i_3_n_0\
    );
\ALUResult[16]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A88A888A888A888"
    )
        port map (
      I0 => \addressM[16]_0\,
      I1 => \ALUResult[16]_INST_0_i_7_n_0\,
      I2 => SrcB(16),
      I3 => \addressM[16]\,
      I4 => rd10(16),
      I5 => rd11,
      O => \ALUResult[16]_INST_0_i_4_n_0\
    );
\ALUResult[16]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[16]_INST_0_i_8_n_0\,
      I1 => \ALUResult[16]_INST_0_i_9_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[16]_INST_0_i_10_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[16]_INST_0_i_11_n_0\,
      O => \ALUResult[16]_INST_0_i_5_n_0\
    );
\ALUResult[16]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF8F8800000000"
    )
        port map (
      I0 => \ALUResult[7]_INST_0_i_7_n_0\,
      I1 => \ALUResult[17]_INST_0_i_9_n_0\,
      I2 => \ALUResult[30]_INST_0_i_7_n_0\,
      I3 => \ALUResult[16]_INST_0_i_12_n_0\,
      I4 => \ALUResult[0]_INST_0_i_3_n_0\,
      I5 => \addressM[0]\,
      O => \ALUResult[16]_INST_0_i_6_n_0\
    );
\ALUResult[16]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F2000000220000"
    )
        port map (
      I0 => \ALUResult[17]_INST_0_i_10_n_0\,
      I1 => \ALUResult[30]_INST_0_i_7_n_0\,
      I2 => \ALUResult[16]_INST_0_i_13_n_0\,
      I3 => ALUControl(0),
      I4 => \ALUControl__0\(0),
      I5 => \ALUResult[7]_INST_0_i_7_n_0\,
      O => \ALUResult[16]_INST_0_i_7_n_0\
    );
\ALUResult[16]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000C088"
    )
        port map (
      I0 => rd10(22),
      I1 => rd11,
      I2 => rd10(30),
      I3 => SrcB(3),
      I4 => SrcB(4),
      O => \ALUResult[16]_INST_0_i_8_n_0\
    );
\ALUResult[16]_INST_0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000C088"
    )
        port map (
      I0 => rd10(18),
      I1 => rd11,
      I2 => rd10(26),
      I3 => SrcB(3),
      I4 => SrcB(4),
      O => \ALUResult[16]_INST_0_i_9_n_0\
    );
\ALUResult[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0CCCCAAAACCCC"
    )
        port map (
      I0 => SrcB(17),
      I1 => \ALUResult[17]_INST_0_i_2_n_0\,
      I2 => \ALUResult[17]_INST_0_i_3_n_0\,
      I3 => \ALUResult[17]_INST_0_i_4_n_0\,
      I4 => \addressM[0]_0\,
      I5 => \addressM[0]\,
      O => \^aluresult\(12)
    );
\ALUResult[17]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F8F8F8F8080808"
    )
        port map (
      I0 => rd20(17),
      I1 => rd21,
      I2 => \addressM[1]\,
      I3 => Instr(13),
      I4 => \q_reg[19]_1\,
      I5 => \q_reg[19]_0\,
      O => SrcB(17)
    );
\ALUResult[17]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[17]_INST_0_i_12_n_0\,
      I1 => \ALUResult[21]_INST_0_i_13_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[19]_INST_0_i_16_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[23]_INST_0_i_12_n_0\,
      O => \ALUResult[17]_INST_0_i_10_n_0\
    );
\ALUResult[17]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFB8000000B80000"
    )
        port map (
      I0 => rd10(25),
      I1 => SrcB(3),
      I2 => rd10(17),
      I3 => SrcB(4),
      I4 => rd11,
      I5 => rd10(31),
      O => \ALUResult[17]_INST_0_i_11_n_0\
    );
\ALUResult[17]_INST_0_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000C088"
    )
        port map (
      I0 => rd10(10),
      I1 => rd11,
      I2 => rd10(2),
      I3 => SrcB(3),
      I4 => SrcB(4),
      O => \ALUResult[17]_INST_0_i_12_n_0\
    );
\ALUResult[17]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \ALUResult[29]_INST_0_i_8_n_0\,
      I1 => \ALUResult[18]_INST_0_i_5_n_0\,
      I2 => \ALUResult[31]_INST_0_i_11_n_0\,
      I3 => \ALUResult[17]_INST_0_i_5_n_0\,
      I4 => \ALUResult[17]_INST_0_i_6_n_0\,
      O => \ALUResult[17]_INST_0_i_2_n_0\
    );
\ALUResult[17]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000EAEAFF008080"
    )
        port map (
      I0 => SrcB(17),
      I1 => rd11,
      I2 => rd10(17),
      I3 => \addressM[29]\(17),
      I4 => \addressM[0]_1\,
      I5 => \addressM[0]_2\,
      O => \ALUResult[17]_INST_0_i_3_n_0\
    );
\ALUResult[17]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A88A888A888A888"
    )
        port map (
      I0 => \addressM[16]_0\,
      I1 => \ALUResult[17]_INST_0_i_7_n_0\,
      I2 => SrcB(17),
      I3 => \addressM[16]\,
      I4 => rd10(17),
      I5 => rd11,
      O => \ALUResult[17]_INST_0_i_4_n_0\
    );
\ALUResult[17]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult[19]_INST_0_i_11_n_0\,
      I1 => SrcB(1),
      I2 => \ALUResult[17]_INST_0_i_8_n_0\,
      O => \ALUResult[17]_INST_0_i_5_n_0\
    );
\ALUResult[17]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF8F8800000000"
    )
        port map (
      I0 => \ALUResult[7]_INST_0_i_7_n_0\,
      I1 => \ALUResult[18]_INST_0_i_9_n_0\,
      I2 => \ALUResult[30]_INST_0_i_7_n_0\,
      I3 => \ALUResult[17]_INST_0_i_9_n_0\,
      I4 => \ALUResult[0]_INST_0_i_3_n_0\,
      I5 => \addressM[0]\,
      O => \ALUResult[17]_INST_0_i_6_n_0\
    );
\ALUResult[17]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F2000000220000"
    )
        port map (
      I0 => \ALUResult[18]_INST_0_i_10_n_0\,
      I1 => \ALUResult[30]_INST_0_i_7_n_0\,
      I2 => \ALUResult[17]_INST_0_i_10_n_0\,
      I3 => ALUControl(0),
      I4 => \ALUControl__0\(0),
      I5 => \ALUResult[7]_INST_0_i_7_n_0\,
      O => \ALUResult[17]_INST_0_i_7_n_0\
    );
\ALUResult[17]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00CAFFFF00CA0000"
    )
        port map (
      I0 => \^srca\(21),
      I1 => \^srca\(29),
      I2 => SrcB(3),
      I3 => SrcB(4),
      I4 => SrcB(2),
      I5 => \ALUResult[15]_INST_0_i_9_n_0\,
      O => \ALUResult[17]_INST_0_i_8_n_0\
    );
\ALUResult[17]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[19]_INST_0_i_14_n_0\,
      I1 => \ALUResult[19]_INST_0_i_15_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[21]_INST_0_i_12_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[17]_INST_0_i_11_n_0\,
      O => \ALUResult[17]_INST_0_i_9_n_0\
    );
\ALUResult[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0CCCCAAAACCCC"
    )
        port map (
      I0 => SrcB(18),
      I1 => \ALUResult[18]_INST_0_i_2_n_0\,
      I2 => \ALUResult[18]_INST_0_i_3_n_0\,
      I3 => \ALUResult[18]_INST_0_i_4_n_0\,
      I4 => \addressM[0]_0\,
      I5 => \addressM[0]\,
      O => \^aluresult\(13)
    );
\ALUResult[18]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F8F8F8F8080808"
    )
        port map (
      I0 => rd20(18),
      I1 => rd21,
      I2 => \addressM[1]\,
      I3 => Instr(14),
      I4 => \q_reg[19]_1\,
      I5 => \q_reg[19]_0\,
      O => SrcB(18)
    );
\ALUResult[18]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[18]_INST_0_i_12_n_0\,
      I1 => \ALUResult[22]_INST_0_i_13_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[20]_INST_0_i_13_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[24]_INST_0_i_12_n_0\,
      O => \ALUResult[18]_INST_0_i_10_n_0\
    );
\ALUResult[18]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFB8000000B80000"
    )
        port map (
      I0 => rd10(26),
      I1 => SrcB(3),
      I2 => rd10(18),
      I3 => SrcB(4),
      I4 => rd11,
      I5 => rd10(31),
      O => \ALUResult[18]_INST_0_i_11_n_0\
    );
\ALUResult[18]_INST_0_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000C088"
    )
        port map (
      I0 => rd10(11),
      I1 => rd11,
      I2 => rd10(3),
      I3 => SrcB(3),
      I4 => SrcB(4),
      O => \ALUResult[18]_INST_0_i_12_n_0\
    );
\ALUResult[18]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \ALUResult[29]_INST_0_i_8_n_0\,
      I1 => \ALUResult[19]_INST_0_i_7_n_0\,
      I2 => \ALUResult[31]_INST_0_i_11_n_0\,
      I3 => \ALUResult[18]_INST_0_i_5_n_0\,
      I4 => \ALUResult[18]_INST_0_i_6_n_0\,
      O => \ALUResult[18]_INST_0_i_2_n_0\
    );
\ALUResult[18]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000EAEAFF008080"
    )
        port map (
      I0 => SrcB(18),
      I1 => rd11,
      I2 => rd10(18),
      I3 => \addressM[29]\(18),
      I4 => \addressM[0]_1\,
      I5 => \addressM[0]_2\,
      O => \ALUResult[18]_INST_0_i_3_n_0\
    );
\ALUResult[18]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A88A888A888A888"
    )
        port map (
      I0 => \addressM[16]_0\,
      I1 => \ALUResult[18]_INST_0_i_7_n_0\,
      I2 => SrcB(18),
      I3 => \addressM[16]\,
      I4 => rd10(18),
      I5 => rd11,
      O => \ALUResult[18]_INST_0_i_4_n_0\
    );
\ALUResult[18]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult[20]_INST_0_i_8_n_0\,
      I1 => SrcB(1),
      I2 => \ALUResult[18]_INST_0_i_8_n_0\,
      O => \ALUResult[18]_INST_0_i_5_n_0\
    );
\ALUResult[18]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF8F8800000000"
    )
        port map (
      I0 => \ALUResult[7]_INST_0_i_7_n_0\,
      I1 => \ALUResult[19]_INST_0_i_12_n_0\,
      I2 => \ALUResult[30]_INST_0_i_7_n_0\,
      I3 => \ALUResult[18]_INST_0_i_9_n_0\,
      I4 => \ALUResult[0]_INST_0_i_3_n_0\,
      I5 => \addressM[0]\,
      O => \ALUResult[18]_INST_0_i_6_n_0\
    );
\ALUResult[18]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F2000000220000"
    )
        port map (
      I0 => \ALUResult[19]_INST_0_i_13_n_0\,
      I1 => \ALUResult[30]_INST_0_i_7_n_0\,
      I2 => \ALUResult[18]_INST_0_i_10_n_0\,
      I3 => ALUControl(0),
      I4 => \ALUControl__0\(0),
      I5 => \ALUResult[7]_INST_0_i_7_n_0\,
      O => \ALUResult[18]_INST_0_i_7_n_0\
    );
\ALUResult[18]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00CAFFFF00CA0000"
    )
        port map (
      I0 => \^srca\(22),
      I1 => \^srca\(30),
      I2 => SrcB(3),
      I3 => SrcB(4),
      I4 => SrcB(2),
      I5 => \ALUResult[16]_INST_0_i_9_n_0\,
      O => \ALUResult[18]_INST_0_i_8_n_0\
    );
\ALUResult[18]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[20]_INST_0_i_11_n_0\,
      I1 => \ALUResult[20]_INST_0_i_12_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[22]_INST_0_i_12_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[18]_INST_0_i_11_n_0\,
      O => \ALUResult[18]_INST_0_i_9_n_0\
    );
\ALUResult[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0CCCCAAAACCCC"
    )
        port map (
      I0 => SrcB(19),
      I1 => \ALUResult[19]_INST_0_i_2_n_0\,
      I2 => \ALUResult[19]_INST_0_i_3_n_0\,
      I3 => \ALUResult[19]_INST_0_i_4_n_0\,
      I4 => \addressM[0]_0\,
      I5 => \addressM[0]\,
      O => \^aluresult\(14)
    );
\ALUResult[19]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F8F8F8F8080808"
    )
        port map (
      I0 => rd20(19),
      I1 => rd21,
      I2 => \addressM[1]\,
      I3 => Instr(15),
      I4 => \q_reg[19]_1\,
      I5 => \q_reg[19]_0\,
      O => SrcB(19)
    );
\ALUResult[19]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00CAFFFF00CA0000"
    )
        port map (
      I0 => \^srca\(23),
      I1 => \^srca\(31),
      I2 => SrcB(3),
      I3 => SrcB(4),
      I4 => SrcB(2),
      I5 => \ALUResult[15]_INST_0_i_10_n_0\,
      O => \ALUResult[19]_INST_0_i_11_n_0\
    );
\ALUResult[19]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[21]_INST_0_i_11_n_0\,
      I1 => \ALUResult[21]_INST_0_i_12_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[19]_INST_0_i_14_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[19]_INST_0_i_15_n_0\,
      O => \ALUResult[19]_INST_0_i_12_n_0\
    );
\ALUResult[19]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[19]_INST_0_i_16_n_0\,
      I1 => \ALUResult[23]_INST_0_i_12_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[21]_INST_0_i_13_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[25]_INST_0_i_12_n_0\,
      O => \ALUResult[19]_INST_0_i_13_n_0\
    );
\ALUResult[19]_INST_0_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE000200"
    )
        port map (
      I0 => rd10(23),
      I1 => SrcB(4),
      I2 => SrcB(3),
      I3 => rd11,
      I4 => rd10(31),
      O => \ALUResult[19]_INST_0_i_14_n_0\
    );
\ALUResult[19]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFB8000000B80000"
    )
        port map (
      I0 => rd10(27),
      I1 => SrcB(3),
      I2 => rd10(19),
      I3 => SrcB(4),
      I4 => rd11,
      I5 => rd10(31),
      O => \ALUResult[19]_INST_0_i_15_n_0\
    );
\ALUResult[19]_INST_0_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000C088"
    )
        port map (
      I0 => rd10(12),
      I1 => rd11,
      I2 => rd10(4),
      I3 => SrcB(3),
      I4 => SrcB(4),
      O => \ALUResult[19]_INST_0_i_16_n_0\
    );
\ALUResult[19]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \ALUResult[29]_INST_0_i_8_n_0\,
      I1 => \ALUResult[20]_INST_0_i_5_n_0\,
      I2 => \ALUResult[31]_INST_0_i_11_n_0\,
      I3 => \ALUResult[19]_INST_0_i_7_n_0\,
      I4 => \ALUResult[19]_INST_0_i_8_n_0\,
      O => \ALUResult[19]_INST_0_i_2_n_0\
    );
\ALUResult[19]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000EAEAFF008080"
    )
        port map (
      I0 => SrcB(19),
      I1 => rd11,
      I2 => rd10(19),
      I3 => \addressM[29]\(19),
      I4 => \addressM[0]_1\,
      I5 => \addressM[0]_2\,
      O => \ALUResult[19]_INST_0_i_3_n_0\
    );
\ALUResult[19]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A88A888A888A888"
    )
        port map (
      I0 => \addressM[16]_0\,
      I1 => \ALUResult[19]_INST_0_i_9_n_0\,
      I2 => SrcB(19),
      I3 => \addressM[16]\,
      I4 => rd10(19),
      I5 => rd11,
      O => \ALUResult[19]_INST_0_i_4_n_0\
    );
\ALUResult[19]_INST_0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult[21]_INST_0_i_8_n_0\,
      I1 => SrcB(1),
      I2 => \ALUResult[19]_INST_0_i_11_n_0\,
      O => \ALUResult[19]_INST_0_i_7_n_0\
    );
\ALUResult[19]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF8F8800000000"
    )
        port map (
      I0 => \ALUResult[7]_INST_0_i_7_n_0\,
      I1 => \ALUResult[20]_INST_0_i_9_n_0\,
      I2 => \ALUResult[30]_INST_0_i_7_n_0\,
      I3 => \ALUResult[19]_INST_0_i_12_n_0\,
      I4 => \ALUResult[0]_INST_0_i_3_n_0\,
      I5 => \addressM[0]\,
      O => \ALUResult[19]_INST_0_i_8_n_0\
    );
\ALUResult[19]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F2000000220000"
    )
        port map (
      I0 => \ALUResult[20]_INST_0_i_10_n_0\,
      I1 => \ALUResult[30]_INST_0_i_7_n_0\,
      I2 => \ALUResult[19]_INST_0_i_13_n_0\,
      I3 => ALUControl(0),
      I4 => \ALUControl__0\(0),
      I5 => \ALUResult[7]_INST_0_i_7_n_0\,
      O => \ALUResult[19]_INST_0_i_9_n_0\
    );
\ALUResult[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE4FFFFEEE40000"
    )
        port map (
      I0 => \addressM[0]\,
      I1 => SrcB(1),
      I2 => \ALUResult[1]_INST_0_i_2_n_0\,
      I3 => \ALUResult[1]_INST_0_i_3_n_0\,
      I4 => \addressM[0]_0\,
      I5 => \ALUResult[1]_INST_0_i_4_n_0\,
      O => \^aluresult[1]_inst_0_i_4_0\
    );
\ALUResult[1]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F808"
    )
        port map (
      I0 => rd20(1),
      I1 => rd21,
      I2 => \addressM[1]\,
      I3 => immext(1),
      O => SrcB(1)
    );
\ALUResult[1]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA20808080"
    )
        port map (
      I0 => \addressM[16]_0\,
      I1 => SrcB(1),
      I2 => \addressM[16]\,
      I3 => rd10(1),
      I4 => rd11,
      I5 => \ALUResult[1]_INST_0_i_6_n_0\,
      O => \ALUResult[1]_INST_0_i_2_n_0\
    );
\ALUResult[1]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000EAEAFF008080"
    )
        port map (
      I0 => SrcB(1),
      I1 => rd11,
      I2 => rd10(1),
      I3 => \addressM[29]\(1),
      I4 => \addressM[0]_1\,
      I5 => \addressM[0]_2\,
      O => \ALUResult[1]_INST_0_i_3_n_0\
    );
\ALUResult[1]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888FFFFF888F888"
    )
        port map (
      I0 => \ALUResult[29]_INST_0_i_8_n_0\,
      I1 => \ALUResult[2]_INST_0_i_6_n_0\,
      I2 => \addressM[0]\,
      I3 => \ALUResult[1]_INST_0_i_7_n_0\,
      I4 => \ALUResult[30]_INST_0_i_7_n_0\,
      I5 => \ALUResult[1]_INST_0_i_8_n_0\,
      O => \ALUResult[1]_INST_0_i_4_n_0\
    );
\ALUResult[1]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888000000000000"
    )
        port map (
      I0 => \ALUResult[7]_INST_0_i_12_n_0\,
      I1 => \^srca\(1),
      I2 => \ALUResult[31]_INST_0_i_19_n_0\,
      I3 => \^srca\(0),
      I4 => \ALUResult[31]_INST_0_i_10_n_0\,
      I5 => \ALUResult[29]_INST_0_i_6_n_0\,
      O => \ALUResult[1]_INST_0_i_6_n_0\
    );
\ALUResult[1]_INST_0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \ALUResult[2]_INST_0_i_11_n_0\,
      I1 => \ALUResult[7]_INST_0_i_7_n_0\,
      I2 => \ALUResult[0]_INST_0_i_3_n_0\,
      O => \ALUResult[1]_INST_0_i_7_n_0\
    );
\ALUResult[1]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8FF33CC00"
    )
        port map (
      I0 => \ALUResult[7]_INST_0_i_17_n_0\,
      I1 => SrcB(2),
      I2 => \ALUResult[3]_INST_0_i_12_n_0\,
      I3 => \ALUResult[5]_INST_0_i_11_n_0\,
      I4 => \ALUResult[1]_INST_0_i_9_n_0\,
      I5 => SrcB(1),
      O => \ALUResult[1]_INST_0_i_8_n_0\
    );
\ALUResult[1]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \^srca\(1),
      I1 => \^srca\(17),
      I2 => SrcB(3),
      I3 => \^srca\(25),
      I4 => SrcB(4),
      I5 => \^srca\(9),
      O => \ALUResult[1]_INST_0_i_9_n_0\
    );
\ALUResult[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0CCCCAAAACCCC"
    )
        port map (
      I0 => SrcB(20),
      I1 => \ALUResult[20]_INST_0_i_2_n_0\,
      I2 => \ALUResult[20]_INST_0_i_3_n_0\,
      I3 => \ALUResult[20]_INST_0_i_4_n_0\,
      I4 => \addressM[0]_0\,
      I5 => \addressM[0]\,
      O => \^aluresult\(15)
    );
\ALUResult[20]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F8F8F8F8080808"
    )
        port map (
      I0 => rd20(20),
      I1 => rd21,
      I2 => \addressM[1]\,
      I3 => Instr(16),
      I4 => \q_reg[31]_0\,
      I5 => \addressM[20]\,
      O => SrcB(20)
    );
\ALUResult[20]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[20]_INST_0_i_13_n_0\,
      I1 => \ALUResult[24]_INST_0_i_12_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[22]_INST_0_i_13_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[26]_INST_0_i_11_n_0\,
      O => \ALUResult[20]_INST_0_i_10_n_0\
    );
\ALUResult[20]_INST_0_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE000200"
    )
        port map (
      I0 => rd10(24),
      I1 => SrcB(4),
      I2 => SrcB(3),
      I3 => rd11,
      I4 => rd10(31),
      O => \ALUResult[20]_INST_0_i_11_n_0\
    );
\ALUResult[20]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFB8000000B80000"
    )
        port map (
      I0 => rd10(28),
      I1 => SrcB(3),
      I2 => rd10(20),
      I3 => SrcB(4),
      I4 => rd11,
      I5 => rd10(31),
      O => \ALUResult[20]_INST_0_i_12_n_0\
    );
\ALUResult[20]_INST_0_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000C088"
    )
        port map (
      I0 => rd10(13),
      I1 => rd11,
      I2 => rd10(5),
      I3 => SrcB(3),
      I4 => SrcB(4),
      O => \ALUResult[20]_INST_0_i_13_n_0\
    );
\ALUResult[20]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \ALUResult[29]_INST_0_i_8_n_0\,
      I1 => \ALUResult[21]_INST_0_i_5_n_0\,
      I2 => \ALUResult[31]_INST_0_i_11_n_0\,
      I3 => \ALUResult[20]_INST_0_i_5_n_0\,
      I4 => \ALUResult[20]_INST_0_i_6_n_0\,
      O => \ALUResult[20]_INST_0_i_2_n_0\
    );
\ALUResult[20]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000EAEAFF008080"
    )
        port map (
      I0 => SrcB(20),
      I1 => rd11,
      I2 => rd10(20),
      I3 => \addressM[29]\(20),
      I4 => \addressM[0]_1\,
      I5 => \addressM[0]_2\,
      O => \ALUResult[20]_INST_0_i_3_n_0\
    );
\ALUResult[20]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A88A888A888A888"
    )
        port map (
      I0 => \addressM[16]_0\,
      I1 => \ALUResult[20]_INST_0_i_7_n_0\,
      I2 => SrcB(20),
      I3 => \addressM[16]\,
      I4 => rd10(20),
      I5 => rd11,
      O => \ALUResult[20]_INST_0_i_4_n_0\
    );
\ALUResult[20]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult[22]_INST_0_i_8_n_0\,
      I1 => SrcB(1),
      I2 => \ALUResult[20]_INST_0_i_8_n_0\,
      O => \ALUResult[20]_INST_0_i_5_n_0\
    );
\ALUResult[20]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF8F8800000000"
    )
        port map (
      I0 => \ALUResult[7]_INST_0_i_7_n_0\,
      I1 => \ALUResult[21]_INST_0_i_9_n_0\,
      I2 => \ALUResult[30]_INST_0_i_7_n_0\,
      I3 => \ALUResult[20]_INST_0_i_9_n_0\,
      I4 => \ALUResult[0]_INST_0_i_3_n_0\,
      I5 => \addressM[0]\,
      O => \ALUResult[20]_INST_0_i_6_n_0\
    );
\ALUResult[20]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F2000000220000"
    )
        port map (
      I0 => \ALUResult[21]_INST_0_i_10_n_0\,
      I1 => \ALUResult[30]_INST_0_i_7_n_0\,
      I2 => \ALUResult[20]_INST_0_i_10_n_0\,
      I3 => ALUControl(0),
      I4 => \ALUControl__0\(0),
      I5 => \ALUResult[7]_INST_0_i_7_n_0\,
      O => \ALUResult[20]_INST_0_i_7_n_0\
    );
\ALUResult[20]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003300B8B8"
    )
        port map (
      I0 => \^srca\(24),
      I1 => SrcB(2),
      I2 => \^srca\(20),
      I3 => \^srca\(28),
      I4 => SrcB(3),
      I5 => SrcB(4),
      O => \ALUResult[20]_INST_0_i_8_n_0\
    );
\ALUResult[20]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[22]_INST_0_i_11_n_0\,
      I1 => \ALUResult[22]_INST_0_i_12_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[20]_INST_0_i_11_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[20]_INST_0_i_12_n_0\,
      O => \ALUResult[20]_INST_0_i_9_n_0\
    );
\ALUResult[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0CCCCAAAACCCC"
    )
        port map (
      I0 => SrcB(21),
      I1 => \ALUResult[21]_INST_0_i_2_n_0\,
      I2 => \ALUResult[21]_INST_0_i_3_n_0\,
      I3 => \ALUResult[21]_INST_0_i_4_n_0\,
      I4 => \addressM[0]_0\,
      I5 => \addressM[0]\,
      O => \^aluresult\(16)
    );
\ALUResult[21]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F8F8F8F8080808"
    )
        port map (
      I0 => rd20(21),
      I1 => rd21,
      I2 => \addressM[1]\,
      I3 => Instr(17),
      I4 => \q_reg[31]_0\,
      I5 => \addressM[20]\,
      O => SrcB(21)
    );
\ALUResult[21]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[21]_INST_0_i_13_n_0\,
      I1 => \ALUResult[25]_INST_0_i_12_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[23]_INST_0_i_12_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[27]_INST_0_i_12_n_0\,
      O => \ALUResult[21]_INST_0_i_10_n_0\
    );
\ALUResult[21]_INST_0_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE000200"
    )
        port map (
      I0 => rd10(25),
      I1 => SrcB(4),
      I2 => SrcB(3),
      I3 => rd11,
      I4 => rd10(31),
      O => \ALUResult[21]_INST_0_i_11_n_0\
    );
\ALUResult[21]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFB8000000B80000"
    )
        port map (
      I0 => rd10(29),
      I1 => SrcB(3),
      I2 => rd10(21),
      I3 => SrcB(4),
      I4 => rd11,
      I5 => rd10(31),
      O => \ALUResult[21]_INST_0_i_12_n_0\
    );
\ALUResult[21]_INST_0_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000C088"
    )
        port map (
      I0 => rd10(14),
      I1 => rd11,
      I2 => rd10(6),
      I3 => SrcB(3),
      I4 => SrcB(4),
      O => \ALUResult[21]_INST_0_i_13_n_0\
    );
\ALUResult[21]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \ALUResult[29]_INST_0_i_8_n_0\,
      I1 => \ALUResult[22]_INST_0_i_5_n_0\,
      I2 => \ALUResult[31]_INST_0_i_11_n_0\,
      I3 => \ALUResult[21]_INST_0_i_5_n_0\,
      I4 => \ALUResult[21]_INST_0_i_6_n_0\,
      O => \ALUResult[21]_INST_0_i_2_n_0\
    );
\ALUResult[21]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000EAEAFF008080"
    )
        port map (
      I0 => SrcB(21),
      I1 => rd11,
      I2 => rd10(21),
      I3 => \addressM[29]\(21),
      I4 => \addressM[0]_1\,
      I5 => \addressM[0]_2\,
      O => \ALUResult[21]_INST_0_i_3_n_0\
    );
\ALUResult[21]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A88A888A888A888"
    )
        port map (
      I0 => \addressM[16]_0\,
      I1 => \ALUResult[21]_INST_0_i_7_n_0\,
      I2 => SrcB(21),
      I3 => \addressM[16]\,
      I4 => rd10(21),
      I5 => rd11,
      O => \ALUResult[21]_INST_0_i_4_n_0\
    );
\ALUResult[21]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult[23]_INST_0_i_8_n_0\,
      I1 => SrcB(1),
      I2 => \ALUResult[21]_INST_0_i_8_n_0\,
      O => \ALUResult[21]_INST_0_i_5_n_0\
    );
\ALUResult[21]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF8F8800000000"
    )
        port map (
      I0 => \ALUResult[7]_INST_0_i_7_n_0\,
      I1 => \ALUResult[22]_INST_0_i_9_n_0\,
      I2 => \ALUResult[30]_INST_0_i_7_n_0\,
      I3 => \ALUResult[21]_INST_0_i_9_n_0\,
      I4 => \ALUResult[0]_INST_0_i_3_n_0\,
      I5 => \addressM[0]\,
      O => \ALUResult[21]_INST_0_i_6_n_0\
    );
\ALUResult[21]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F2000000220000"
    )
        port map (
      I0 => \ALUResult[22]_INST_0_i_10_n_0\,
      I1 => \ALUResult[30]_INST_0_i_7_n_0\,
      I2 => \ALUResult[21]_INST_0_i_10_n_0\,
      I3 => ALUControl(0),
      I4 => \ALUControl__0\(0),
      I5 => \ALUResult[7]_INST_0_i_7_n_0\,
      O => \ALUResult[21]_INST_0_i_7_n_0\
    );
\ALUResult[21]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003300B8B8"
    )
        port map (
      I0 => \^srca\(25),
      I1 => SrcB(2),
      I2 => \^srca\(21),
      I3 => \^srca\(29),
      I4 => SrcB(3),
      I5 => SrcB(4),
      O => \ALUResult[21]_INST_0_i_8_n_0\
    );
\ALUResult[21]_INST_0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \ALUResult[23]_INST_0_i_11_n_0\,
      I1 => SrcB(1),
      I2 => \ALUResult[21]_INST_0_i_11_n_0\,
      I3 => SrcB(2),
      I4 => \ALUResult[21]_INST_0_i_12_n_0\,
      O => \ALUResult[21]_INST_0_i_9_n_0\
    );
\ALUResult[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0CCCCAAAACCCC"
    )
        port map (
      I0 => SrcB(22),
      I1 => \ALUResult[22]_INST_0_i_2_n_0\,
      I2 => \ALUResult[22]_INST_0_i_3_n_0\,
      I3 => \ALUResult[22]_INST_0_i_4_n_0\,
      I4 => \addressM[0]_0\,
      I5 => \addressM[0]\,
      O => \^aluresult\(17)
    );
\ALUResult[22]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F8F8F8F8080808"
    )
        port map (
      I0 => rd20(22),
      I1 => rd21,
      I2 => \addressM[1]\,
      I3 => Instr(18),
      I4 => \q_reg[31]_0\,
      I5 => \addressM[20]\,
      O => SrcB(22)
    );
\ALUResult[22]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[22]_INST_0_i_13_n_0\,
      I1 => \ALUResult[26]_INST_0_i_11_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[24]_INST_0_i_12_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[28]_INST_0_i_12_n_0\,
      O => \ALUResult[22]_INST_0_i_10_n_0\
    );
\ALUResult[22]_INST_0_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE000200"
    )
        port map (
      I0 => rd10(26),
      I1 => SrcB(4),
      I2 => SrcB(3),
      I3 => rd11,
      I4 => rd10(31),
      O => \ALUResult[22]_INST_0_i_11_n_0\
    );
\ALUResult[22]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFB8000000B80000"
    )
        port map (
      I0 => rd10(30),
      I1 => SrcB(3),
      I2 => rd10(22),
      I3 => SrcB(4),
      I4 => rd11,
      I5 => rd10(31),
      O => \ALUResult[22]_INST_0_i_12_n_0\
    );
\ALUResult[22]_INST_0_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000C088"
    )
        port map (
      I0 => rd10(15),
      I1 => rd11,
      I2 => rd10(7),
      I3 => SrcB(3),
      I4 => SrcB(4),
      O => \ALUResult[22]_INST_0_i_13_n_0\
    );
\ALUResult[22]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \ALUResult[29]_INST_0_i_8_n_0\,
      I1 => \ALUResult[23]_INST_0_i_5_n_0\,
      I2 => \ALUResult[31]_INST_0_i_11_n_0\,
      I3 => \ALUResult[22]_INST_0_i_5_n_0\,
      I4 => \ALUResult[22]_INST_0_i_6_n_0\,
      O => \ALUResult[22]_INST_0_i_2_n_0\
    );
\ALUResult[22]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000EAEAFF008080"
    )
        port map (
      I0 => SrcB(22),
      I1 => rd11,
      I2 => rd10(22),
      I3 => \addressM[29]\(22),
      I4 => \addressM[0]_1\,
      I5 => \addressM[0]_2\,
      O => \ALUResult[22]_INST_0_i_3_n_0\
    );
\ALUResult[22]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A88A888A888A888"
    )
        port map (
      I0 => \addressM[16]_0\,
      I1 => \ALUResult[22]_INST_0_i_7_n_0\,
      I2 => SrcB(22),
      I3 => \addressM[16]\,
      I4 => rd10(22),
      I5 => rd11,
      O => \ALUResult[22]_INST_0_i_4_n_0\
    );
\ALUResult[22]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B080FFFFB0800000"
    )
        port map (
      I0 => \^srca\(28),
      I1 => SrcB(2),
      I2 => \ALUResult[31]_INST_0_i_10_n_0\,
      I3 => \^srca\(24),
      I4 => SrcB(1),
      I5 => \ALUResult[22]_INST_0_i_8_n_0\,
      O => \ALUResult[22]_INST_0_i_5_n_0\
    );
\ALUResult[22]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF8F8800000000"
    )
        port map (
      I0 => \ALUResult[7]_INST_0_i_7_n_0\,
      I1 => \ALUResult[23]_INST_0_i_9_n_0\,
      I2 => \ALUResult[30]_INST_0_i_7_n_0\,
      I3 => \ALUResult[22]_INST_0_i_9_n_0\,
      I4 => \ALUResult[0]_INST_0_i_3_n_0\,
      I5 => \addressM[0]\,
      O => \ALUResult[22]_INST_0_i_6_n_0\
    );
\ALUResult[22]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F2000000220000"
    )
        port map (
      I0 => \ALUResult[23]_INST_0_i_10_n_0\,
      I1 => \ALUResult[30]_INST_0_i_7_n_0\,
      I2 => \ALUResult[22]_INST_0_i_10_n_0\,
      I3 => ALUControl(0),
      I4 => \ALUControl__0\(0),
      I5 => \ALUResult[7]_INST_0_i_7_n_0\,
      O => \ALUResult[22]_INST_0_i_7_n_0\
    );
\ALUResult[22]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003300B8B8"
    )
        port map (
      I0 => \^srca\(26),
      I1 => SrcB(2),
      I2 => \^srca\(22),
      I3 => \^srca\(30),
      I4 => SrcB(3),
      I5 => SrcB(4),
      O => \ALUResult[22]_INST_0_i_8_n_0\
    );
\ALUResult[22]_INST_0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \ALUResult[24]_INST_0_i_11_n_0\,
      I1 => SrcB(1),
      I2 => \ALUResult[22]_INST_0_i_11_n_0\,
      I3 => SrcB(2),
      I4 => \ALUResult[22]_INST_0_i_12_n_0\,
      O => \ALUResult[22]_INST_0_i_9_n_0\
    );
\ALUResult[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0CCCCAAAACCCC"
    )
        port map (
      I0 => SrcB(23),
      I1 => \ALUResult[23]_INST_0_i_2_n_0\,
      I2 => \ALUResult[23]_INST_0_i_3_n_0\,
      I3 => \ALUResult[23]_INST_0_i_4_n_0\,
      I4 => \addressM[0]_0\,
      I5 => \addressM[0]\,
      O => \^aluresult\(18)
    );
\ALUResult[23]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F8F8F8F8080808"
    )
        port map (
      I0 => rd20(23),
      I1 => rd21,
      I2 => \addressM[1]\,
      I3 => Instr(19),
      I4 => \q_reg[31]_0\,
      I5 => \addressM[20]\,
      O => SrcB(23)
    );
\ALUResult[23]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[23]_INST_0_i_12_n_0\,
      I1 => \ALUResult[27]_INST_0_i_12_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[25]_INST_0_i_12_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[29]_INST_0_i_20_n_0\,
      O => \ALUResult[23]_INST_0_i_10_n_0\
    );
\ALUResult[23]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFB8000000B8"
    )
        port map (
      I0 => \^srca\(27),
      I1 => SrcB(2),
      I2 => \^srca\(23),
      I3 => SrcB(4),
      I4 => SrcB(3),
      I5 => \^srca\(31),
      O => \ALUResult[23]_INST_0_i_11_n_0\
    );
\ALUResult[23]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A0A0F000C0C0"
    )
        port map (
      I0 => rd10(0),
      I1 => rd10(16),
      I2 => rd11,
      I3 => rd10(8),
      I4 => SrcB(3),
      I5 => SrcB(4),
      O => \ALUResult[23]_INST_0_i_12_n_0\
    );
\ALUResult[23]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \ALUResult[29]_INST_0_i_8_n_0\,
      I1 => \ALUResult[24]_INST_0_i_5_n_0\,
      I2 => \ALUResult[31]_INST_0_i_11_n_0\,
      I3 => \ALUResult[23]_INST_0_i_5_n_0\,
      I4 => \ALUResult[23]_INST_0_i_6_n_0\,
      O => \ALUResult[23]_INST_0_i_2_n_0\
    );
\ALUResult[23]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000EAEAFF008080"
    )
        port map (
      I0 => SrcB(23),
      I1 => rd11,
      I2 => rd10(23),
      I3 => \addressM[29]\(23),
      I4 => \addressM[0]_1\,
      I5 => \addressM[0]_2\,
      O => \ALUResult[23]_INST_0_i_3_n_0\
    );
\ALUResult[23]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A88A888A888A888"
    )
        port map (
      I0 => \addressM[16]_0\,
      I1 => \ALUResult[23]_INST_0_i_7_n_0\,
      I2 => SrcB(23),
      I3 => \addressM[16]\,
      I4 => rd10(23),
      I5 => rd11,
      O => \ALUResult[23]_INST_0_i_4_n_0\
    );
\ALUResult[23]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B080FFFFB0800000"
    )
        port map (
      I0 => \^srca\(29),
      I1 => SrcB(2),
      I2 => \ALUResult[31]_INST_0_i_10_n_0\,
      I3 => \^srca\(25),
      I4 => SrcB(1),
      I5 => \ALUResult[23]_INST_0_i_8_n_0\,
      O => \ALUResult[23]_INST_0_i_5_n_0\
    );
\ALUResult[23]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF8F8800000000"
    )
        port map (
      I0 => \ALUResult[7]_INST_0_i_7_n_0\,
      I1 => \ALUResult[24]_INST_0_i_9_n_0\,
      I2 => \ALUResult[30]_INST_0_i_7_n_0\,
      I3 => \ALUResult[23]_INST_0_i_9_n_0\,
      I4 => \ALUResult[0]_INST_0_i_3_n_0\,
      I5 => \addressM[0]\,
      O => \ALUResult[23]_INST_0_i_6_n_0\
    );
\ALUResult[23]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F2000000220000"
    )
        port map (
      I0 => \ALUResult[24]_INST_0_i_10_n_0\,
      I1 => \ALUResult[30]_INST_0_i_7_n_0\,
      I2 => \ALUResult[23]_INST_0_i_10_n_0\,
      I3 => ALUControl(0),
      I4 => \ALUControl__0\(0),
      I5 => \ALUResult[7]_INST_0_i_7_n_0\,
      O => \ALUResult[23]_INST_0_i_7_n_0\
    );
\ALUResult[23]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003300B8B8"
    )
        port map (
      I0 => \^srca\(27),
      I1 => SrcB(2),
      I2 => \^srca\(23),
      I3 => \^srca\(31),
      I4 => SrcB(3),
      I5 => SrcB(4),
      O => \ALUResult[23]_INST_0_i_8_n_0\
    );
\ALUResult[23]_INST_0_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult[25]_INST_0_i_11_n_0\,
      I1 => SrcB(1),
      I2 => \ALUResult[23]_INST_0_i_11_n_0\,
      O => \ALUResult[23]_INST_0_i_9_n_0\
    );
\ALUResult[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0CCCCAAAACCCC"
    )
        port map (
      I0 => SrcB(24),
      I1 => \ALUResult[24]_INST_0_i_2_n_0\,
      I2 => \ALUResult[24]_INST_0_i_3_n_0\,
      I3 => \ALUResult[24]_INST_0_i_4_n_0\,
      I4 => \addressM[0]_0\,
      I5 => \addressM[0]\,
      O => \^aluresult\(19)
    );
\ALUResult[24]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F8F8F8F8080808"
    )
        port map (
      I0 => rd20(24),
      I1 => rd21,
      I2 => \addressM[1]\,
      I3 => Instr(20),
      I4 => \q_reg[31]_0\,
      I5 => \addressM[20]\,
      O => SrcB(24)
    );
\ALUResult[24]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[24]_INST_0_i_12_n_0\,
      I1 => \ALUResult[28]_INST_0_i_12_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[26]_INST_0_i_11_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[29]_INST_0_i_17_n_0\,
      O => \ALUResult[24]_INST_0_i_10_n_0\
    );
\ALUResult[24]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFB8000000B8"
    )
        port map (
      I0 => \^srca\(28),
      I1 => SrcB(2),
      I2 => \^srca\(24),
      I3 => SrcB(4),
      I4 => SrcB(3),
      I5 => \^srca\(31),
      O => \ALUResult[24]_INST_0_i_11_n_0\
    );
\ALUResult[24]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A0A0F000C0C0"
    )
        port map (
      I0 => rd10(1),
      I1 => rd10(17),
      I2 => rd11,
      I3 => rd10(9),
      I4 => SrcB(3),
      I5 => SrcB(4),
      O => \ALUResult[24]_INST_0_i_12_n_0\
    );
\ALUResult[24]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \ALUResult[29]_INST_0_i_8_n_0\,
      I1 => \ALUResult[25]_INST_0_i_5_n_0\,
      I2 => \ALUResult[31]_INST_0_i_11_n_0\,
      I3 => \ALUResult[24]_INST_0_i_5_n_0\,
      I4 => \ALUResult[24]_INST_0_i_6_n_0\,
      O => \ALUResult[24]_INST_0_i_2_n_0\
    );
\ALUResult[24]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000EAEAFF008080"
    )
        port map (
      I0 => SrcB(24),
      I1 => rd11,
      I2 => rd10(24),
      I3 => \addressM[29]\(24),
      I4 => \addressM[0]_1\,
      I5 => \addressM[0]_2\,
      O => \ALUResult[24]_INST_0_i_3_n_0\
    );
\ALUResult[24]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A88A888A888A888"
    )
        port map (
      I0 => \addressM[16]_0\,
      I1 => \ALUResult[24]_INST_0_i_7_n_0\,
      I2 => SrcB(24),
      I3 => \addressM[16]\,
      I4 => rd10(24),
      I5 => rd11,
      O => \ALUResult[24]_INST_0_i_4_n_0\
    );
\ALUResult[24]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B080FFFFB0800000"
    )
        port map (
      I0 => \^srca\(30),
      I1 => SrcB(2),
      I2 => \ALUResult[31]_INST_0_i_10_n_0\,
      I3 => \^srca\(26),
      I4 => SrcB(1),
      I5 => \ALUResult[24]_INST_0_i_8_n_0\,
      O => \ALUResult[24]_INST_0_i_5_n_0\
    );
\ALUResult[24]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF8F8800000000"
    )
        port map (
      I0 => \ALUResult[7]_INST_0_i_7_n_0\,
      I1 => \ALUResult[25]_INST_0_i_9_n_0\,
      I2 => \ALUResult[30]_INST_0_i_7_n_0\,
      I3 => \ALUResult[24]_INST_0_i_9_n_0\,
      I4 => \ALUResult[0]_INST_0_i_3_n_0\,
      I5 => \addressM[0]\,
      O => \ALUResult[24]_INST_0_i_6_n_0\
    );
\ALUResult[24]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F2000000220000"
    )
        port map (
      I0 => \ALUResult[25]_INST_0_i_10_n_0\,
      I1 => \ALUResult[30]_INST_0_i_7_n_0\,
      I2 => \ALUResult[24]_INST_0_i_10_n_0\,
      I3 => ALUControl(0),
      I4 => \ALUControl__0\(0),
      I5 => \ALUResult[7]_INST_0_i_7_n_0\,
      O => \ALUResult[24]_INST_0_i_7_n_0\
    );
\ALUResult[24]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000B000800000000"
    )
        port map (
      I0 => rd10(28),
      I1 => SrcB(2),
      I2 => SrcB(4),
      I3 => SrcB(3),
      I4 => rd10(24),
      I5 => rd11,
      O => \ALUResult[24]_INST_0_i_8_n_0\
    );
\ALUResult[24]_INST_0_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult[26]_INST_0_i_10_n_0\,
      I1 => SrcB(1),
      I2 => \ALUResult[24]_INST_0_i_11_n_0\,
      O => \ALUResult[24]_INST_0_i_9_n_0\
    );
\ALUResult[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0CCCCAAAACCCC"
    )
        port map (
      I0 => SrcB(25),
      I1 => \ALUResult[25]_INST_0_i_2_n_0\,
      I2 => \ALUResult[25]_INST_0_i_3_n_0\,
      I3 => \ALUResult[25]_INST_0_i_4_n_0\,
      I4 => \addressM[0]_0\,
      I5 => \addressM[0]\,
      O => \^aluresult\(20)
    );
\ALUResult[25]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F8F8F8F8080808"
    )
        port map (
      I0 => rd20(25),
      I1 => rd21,
      I2 => \addressM[1]\,
      I3 => Instr(21),
      I4 => \q_reg[31]_0\,
      I5 => \addressM[20]\,
      O => SrcB(25)
    );
\ALUResult[25]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[25]_INST_0_i_12_n_0\,
      I1 => \ALUResult[29]_INST_0_i_20_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[27]_INST_0_i_12_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[31]_INST_0_i_26_n_0\,
      O => \ALUResult[25]_INST_0_i_10_n_0\
    );
\ALUResult[25]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFB8000000B8"
    )
        port map (
      I0 => \^srca\(29),
      I1 => SrcB(2),
      I2 => \^srca\(25),
      I3 => SrcB(4),
      I4 => SrcB(3),
      I5 => \^srca\(31),
      O => \ALUResult[25]_INST_0_i_11_n_0\
    );
\ALUResult[25]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A0A0F000C0C0"
    )
        port map (
      I0 => rd10(2),
      I1 => rd10(18),
      I2 => rd11,
      I3 => rd10(10),
      I4 => SrcB(3),
      I5 => SrcB(4),
      O => \ALUResult[25]_INST_0_i_12_n_0\
    );
\ALUResult[25]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \ALUResult[29]_INST_0_i_8_n_0\,
      I1 => \ALUResult[26]_INST_0_i_5_n_0\,
      I2 => \ALUResult[31]_INST_0_i_11_n_0\,
      I3 => \ALUResult[25]_INST_0_i_5_n_0\,
      I4 => \ALUResult[25]_INST_0_i_6_n_0\,
      O => \ALUResult[25]_INST_0_i_2_n_0\
    );
\ALUResult[25]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000EAEAFF008080"
    )
        port map (
      I0 => SrcB(25),
      I1 => rd11,
      I2 => rd10(25),
      I3 => \addressM[29]\(25),
      I4 => \addressM[0]_1\,
      I5 => \addressM[0]_2\,
      O => \ALUResult[25]_INST_0_i_3_n_0\
    );
\ALUResult[25]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A88A888A888A888"
    )
        port map (
      I0 => \addressM[16]_0\,
      I1 => \ALUResult[25]_INST_0_i_7_n_0\,
      I2 => SrcB(25),
      I3 => \addressM[16]\,
      I4 => rd10(25),
      I5 => rd11,
      O => \ALUResult[25]_INST_0_i_4_n_0\
    );
\ALUResult[25]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B080FFFFB0800000"
    )
        port map (
      I0 => \^srca\(31),
      I1 => SrcB(2),
      I2 => \ALUResult[31]_INST_0_i_10_n_0\,
      I3 => \^srca\(27),
      I4 => SrcB(1),
      I5 => \ALUResult[25]_INST_0_i_8_n_0\,
      O => \ALUResult[25]_INST_0_i_5_n_0\
    );
\ALUResult[25]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF8F8800000000"
    )
        port map (
      I0 => \ALUResult[7]_INST_0_i_7_n_0\,
      I1 => \ALUResult[26]_INST_0_i_8_n_0\,
      I2 => \ALUResult[30]_INST_0_i_7_n_0\,
      I3 => \ALUResult[25]_INST_0_i_9_n_0\,
      I4 => \ALUResult[0]_INST_0_i_3_n_0\,
      I5 => \addressM[0]\,
      O => \ALUResult[25]_INST_0_i_6_n_0\
    );
\ALUResult[25]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F2000000220000"
    )
        port map (
      I0 => \ALUResult[26]_INST_0_i_9_n_0\,
      I1 => \ALUResult[30]_INST_0_i_7_n_0\,
      I2 => \ALUResult[25]_INST_0_i_10_n_0\,
      I3 => ALUControl(0),
      I4 => \ALUControl__0\(0),
      I5 => \ALUResult[7]_INST_0_i_7_n_0\,
      O => \ALUResult[25]_INST_0_i_7_n_0\
    );
\ALUResult[25]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000B000800000000"
    )
        port map (
      I0 => rd10(29),
      I1 => SrcB(2),
      I2 => SrcB(4),
      I3 => SrcB(3),
      I4 => rd10(25),
      I5 => rd11,
      O => \ALUResult[25]_INST_0_i_8_n_0\
    );
\ALUResult[25]_INST_0_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult[27]_INST_0_i_11_n_0\,
      I1 => SrcB(1),
      I2 => \ALUResult[25]_INST_0_i_11_n_0\,
      O => \ALUResult[25]_INST_0_i_9_n_0\
    );
\ALUResult[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0CCCCAAAACCCC"
    )
        port map (
      I0 => SrcB(26),
      I1 => \ALUResult[26]_INST_0_i_2_n_0\,
      I2 => \ALUResult[26]_INST_0_i_3_n_0\,
      I3 => \ALUResult[26]_INST_0_i_4_n_0\,
      I4 => \addressM[0]_0\,
      I5 => \addressM[0]\,
      O => \^aluresult\(21)
    );
\ALUResult[26]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F8F8F8F8080808"
    )
        port map (
      I0 => rd20(26),
      I1 => rd21,
      I2 => \addressM[1]\,
      I3 => Instr(22),
      I4 => \q_reg[31]_0\,
      I5 => \addressM[20]\,
      O => SrcB(26)
    );
\ALUResult[26]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFB8000000B8"
    )
        port map (
      I0 => \^srca\(30),
      I1 => SrcB(2),
      I2 => \^srca\(26),
      I3 => SrcB(4),
      I4 => SrcB(3),
      I5 => \^srca\(31),
      O => \ALUResult[26]_INST_0_i_10_n_0\
    );
\ALUResult[26]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A0A0F000C0C0"
    )
        port map (
      I0 => rd10(3),
      I1 => rd10(19),
      I2 => rd11,
      I3 => rd10(11),
      I4 => SrcB(3),
      I5 => SrcB(4),
      O => \ALUResult[26]_INST_0_i_11_n_0\
    );
\ALUResult[26]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \ALUResult[29]_INST_0_i_8_n_0\,
      I1 => \ALUResult[27]_INST_0_i_5_n_0\,
      I2 => \ALUResult[31]_INST_0_i_11_n_0\,
      I3 => \ALUResult[26]_INST_0_i_5_n_0\,
      I4 => \ALUResult[26]_INST_0_i_6_n_0\,
      O => \ALUResult[26]_INST_0_i_2_n_0\
    );
\ALUResult[26]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000EAEAFF008080"
    )
        port map (
      I0 => SrcB(26),
      I1 => rd11,
      I2 => rd10(26),
      I3 => \addressM[29]\(26),
      I4 => \addressM[0]_1\,
      I5 => \addressM[0]_2\,
      O => \ALUResult[26]_INST_0_i_3_n_0\
    );
\ALUResult[26]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A88A888A888A888"
    )
        port map (
      I0 => \addressM[16]_0\,
      I1 => \ALUResult[26]_INST_0_i_7_n_0\,
      I2 => SrcB(26),
      I3 => \addressM[16]\,
      I4 => rd10(26),
      I5 => rd11,
      O => \ALUResult[26]_INST_0_i_4_n_0\
    );
\ALUResult[26]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A0A0F000C0C0"
    )
        port map (
      I0 => \^srca\(30),
      I1 => \^srca\(26),
      I2 => \ALUResult[31]_INST_0_i_10_n_0\,
      I3 => \^srca\(28),
      I4 => SrcB(1),
      I5 => SrcB(2),
      O => \ALUResult[26]_INST_0_i_5_n_0\
    );
\ALUResult[26]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF8F8800000000"
    )
        port map (
      I0 => \ALUResult[7]_INST_0_i_7_n_0\,
      I1 => \ALUResult[27]_INST_0_i_8_n_0\,
      I2 => \ALUResult[30]_INST_0_i_7_n_0\,
      I3 => \ALUResult[26]_INST_0_i_8_n_0\,
      I4 => \ALUResult[0]_INST_0_i_3_n_0\,
      I5 => \addressM[0]\,
      O => \ALUResult[26]_INST_0_i_6_n_0\
    );
\ALUResult[26]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F2000000220000"
    )
        port map (
      I0 => \ALUResult[27]_INST_0_i_9_n_0\,
      I1 => \ALUResult[30]_INST_0_i_7_n_0\,
      I2 => \ALUResult[26]_INST_0_i_9_n_0\,
      I3 => ALUControl(0),
      I4 => \ALUControl__0\(0),
      I5 => \ALUResult[7]_INST_0_i_7_n_0\,
      O => \ALUResult[26]_INST_0_i_7_n_0\
    );
\ALUResult[26]_INST_0_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult[28]_INST_0_i_11_n_0\,
      I1 => SrcB(1),
      I2 => \ALUResult[26]_INST_0_i_10_n_0\,
      O => \ALUResult[26]_INST_0_i_8_n_0\
    );
\ALUResult[26]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[26]_INST_0_i_11_n_0\,
      I1 => \ALUResult[29]_INST_0_i_17_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[28]_INST_0_i_12_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[29]_INST_0_i_18_n_0\,
      O => \ALUResult[26]_INST_0_i_9_n_0\
    );
\ALUResult[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0CCCCAAAACCCC"
    )
        port map (
      I0 => SrcB(27),
      I1 => \ALUResult[27]_INST_0_i_2_n_0\,
      I2 => \ALUResult[27]_INST_0_i_3_n_0\,
      I3 => \ALUResult[27]_INST_0_i_4_n_0\,
      I4 => \addressM[0]_0\,
      I5 => \addressM[0]\,
      O => \^aluresult\(22)
    );
\ALUResult[27]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F8F8F8F8080808"
    )
        port map (
      I0 => rd20(27),
      I1 => rd21,
      I2 => \addressM[1]\,
      I3 => Instr(23),
      I4 => \q_reg[31]_0\,
      I5 => \addressM[20]\,
      O => SrcB(27)
    );
\ALUResult[27]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFE000000020000"
    )
        port map (
      I0 => rd10(29),
      I1 => SrcB(4),
      I2 => SrcB(3),
      I3 => SrcB(2),
      I4 => rd11,
      I5 => rd10(31),
      O => \ALUResult[27]_INST_0_i_10_n_0\
    );
\ALUResult[27]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFE000000020000"
    )
        port map (
      I0 => rd10(27),
      I1 => SrcB(4),
      I2 => SrcB(3),
      I3 => SrcB(2),
      I4 => rd11,
      I5 => rd10(31),
      O => \ALUResult[27]_INST_0_i_11_n_0\
    );
\ALUResult[27]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A0A0F000C0C0"
    )
        port map (
      I0 => rd10(4),
      I1 => rd10(20),
      I2 => rd11,
      I3 => rd10(12),
      I4 => SrcB(3),
      I5 => SrcB(4),
      O => \ALUResult[27]_INST_0_i_12_n_0\
    );
\ALUResult[27]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \ALUResult[29]_INST_0_i_8_n_0\,
      I1 => \ALUResult[28]_INST_0_i_5_n_0\,
      I2 => \ALUResult[31]_INST_0_i_11_n_0\,
      I3 => \ALUResult[27]_INST_0_i_5_n_0\,
      I4 => \ALUResult[27]_INST_0_i_6_n_0\,
      O => \ALUResult[27]_INST_0_i_2_n_0\
    );
\ALUResult[27]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000EAEAFF008080"
    )
        port map (
      I0 => SrcB(27),
      I1 => rd11,
      I2 => rd10(27),
      I3 => \addressM[29]\(27),
      I4 => \addressM[0]_1\,
      I5 => \addressM[0]_2\,
      O => \ALUResult[27]_INST_0_i_3_n_0\
    );
\ALUResult[27]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A88A888A888A888"
    )
        port map (
      I0 => \addressM[16]_0\,
      I1 => \ALUResult[27]_INST_0_i_7_n_0\,
      I2 => SrcB(27),
      I3 => \addressM[16]\,
      I4 => rd10(27),
      I5 => rd11,
      O => \ALUResult[27]_INST_0_i_4_n_0\
    );
\ALUResult[27]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A0A0F000C0C0"
    )
        port map (
      I0 => \^srca\(31),
      I1 => \^srca\(27),
      I2 => \ALUResult[31]_INST_0_i_10_n_0\,
      I3 => \^srca\(29),
      I4 => SrcB(1),
      I5 => SrcB(2),
      O => \ALUResult[27]_INST_0_i_5_n_0\
    );
\ALUResult[27]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF8F8800000000"
    )
        port map (
      I0 => \ALUResult[7]_INST_0_i_7_n_0\,
      I1 => \ALUResult[28]_INST_0_i_8_n_0\,
      I2 => \ALUResult[30]_INST_0_i_7_n_0\,
      I3 => \ALUResult[27]_INST_0_i_8_n_0\,
      I4 => \ALUResult[0]_INST_0_i_3_n_0\,
      I5 => \addressM[0]\,
      O => \ALUResult[27]_INST_0_i_6_n_0\
    );
\ALUResult[27]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F2000000220000"
    )
        port map (
      I0 => \ALUResult[28]_INST_0_i_9_n_0\,
      I1 => \ALUResult[30]_INST_0_i_7_n_0\,
      I2 => \ALUResult[27]_INST_0_i_9_n_0\,
      I3 => ALUControl(0),
      I4 => \ALUControl__0\(0),
      I5 => \ALUResult[7]_INST_0_i_7_n_0\,
      O => \ALUResult[27]_INST_0_i_7_n_0\
    );
\ALUResult[27]_INST_0_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult[27]_INST_0_i_10_n_0\,
      I1 => SrcB(1),
      I2 => \ALUResult[27]_INST_0_i_11_n_0\,
      O => \ALUResult[27]_INST_0_i_8_n_0\
    );
\ALUResult[27]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[27]_INST_0_i_12_n_0\,
      I1 => \ALUResult[31]_INST_0_i_26_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[29]_INST_0_i_20_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[31]_INST_0_i_28_n_0\,
      O => \ALUResult[27]_INST_0_i_9_n_0\
    );
\ALUResult[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0CCCCAAAACCCC"
    )
        port map (
      I0 => SrcB(28),
      I1 => \ALUResult[28]_INST_0_i_2_n_0\,
      I2 => \ALUResult[28]_INST_0_i_3_n_0\,
      I3 => \ALUResult[28]_INST_0_i_4_n_0\,
      I4 => \addressM[0]_0\,
      I5 => \addressM[0]\,
      O => \^aluresult\(23)
    );
\ALUResult[28]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F8F8F8F8080808"
    )
        port map (
      I0 => rd20(28),
      I1 => rd21,
      I2 => \addressM[1]\,
      I3 => Instr(24),
      I4 => \q_reg[31]_0\,
      I5 => \addressM[20]\,
      O => SrcB(28)
    );
\ALUResult[28]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFE000000020000"
    )
        port map (
      I0 => rd10(30),
      I1 => SrcB(4),
      I2 => SrcB(3),
      I3 => SrcB(2),
      I4 => rd11,
      I5 => rd10(31),
      O => \ALUResult[28]_INST_0_i_10_n_0\
    );
\ALUResult[28]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFE000000020000"
    )
        port map (
      I0 => rd10(28),
      I1 => SrcB(4),
      I2 => SrcB(3),
      I3 => SrcB(2),
      I4 => rd11,
      I5 => rd10(31),
      O => \ALUResult[28]_INST_0_i_11_n_0\
    );
\ALUResult[28]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A0A0F000C0C0"
    )
        port map (
      I0 => rd10(5),
      I1 => rd10(21),
      I2 => rd11,
      I3 => rd10(13),
      I4 => SrcB(3),
      I5 => SrcB(4),
      O => \ALUResult[28]_INST_0_i_12_n_0\
    );
\ALUResult[28]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \ALUResult[29]_INST_0_i_8_n_0\,
      I1 => \ALUResult[29]_INST_0_i_5_n_0\,
      I2 => \ALUResult[31]_INST_0_i_11_n_0\,
      I3 => \ALUResult[28]_INST_0_i_5_n_0\,
      I4 => \ALUResult[28]_INST_0_i_6_n_0\,
      O => \ALUResult[28]_INST_0_i_2_n_0\
    );
\ALUResult[28]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000EAEAFF008080"
    )
        port map (
      I0 => SrcB(28),
      I1 => rd11,
      I2 => rd10(28),
      I3 => \addressM[29]\(28),
      I4 => \addressM[0]_1\,
      I5 => \addressM[0]_2\,
      O => \ALUResult[28]_INST_0_i_3_n_0\
    );
\ALUResult[28]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A88A888A888A888"
    )
        port map (
      I0 => \addressM[16]_0\,
      I1 => \ALUResult[28]_INST_0_i_7_n_0\,
      I2 => SrcB(28),
      I3 => \addressM[16]\,
      I4 => rd10(28),
      I5 => rd11,
      O => \ALUResult[28]_INST_0_i_4_n_0\
    );
\ALUResult[28]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000C0008800"
    )
        port map (
      I0 => rd10(28),
      I1 => \ALUResult[31]_INST_0_i_10_n_0\,
      I2 => rd10(30),
      I3 => rd11,
      I4 => SrcB(1),
      I5 => SrcB(2),
      O => \ALUResult[28]_INST_0_i_5_n_0\
    );
\ALUResult[28]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF8F8800000000"
    )
        port map (
      I0 => \ALUResult[7]_INST_0_i_7_n_0\,
      I1 => \ALUResult[29]_INST_0_i_14_n_0\,
      I2 => \ALUResult[30]_INST_0_i_7_n_0\,
      I3 => \ALUResult[28]_INST_0_i_8_n_0\,
      I4 => \ALUResult[0]_INST_0_i_3_n_0\,
      I5 => \addressM[0]\,
      O => \ALUResult[28]_INST_0_i_6_n_0\
    );
\ALUResult[28]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F2000000220000"
    )
        port map (
      I0 => \ALUResult[29]_INST_0_i_16_n_0\,
      I1 => \ALUResult[30]_INST_0_i_7_n_0\,
      I2 => \ALUResult[28]_INST_0_i_9_n_0\,
      I3 => ALUControl(0),
      I4 => \ALUControl__0\(0),
      I5 => \ALUResult[7]_INST_0_i_7_n_0\,
      O => \ALUResult[28]_INST_0_i_7_n_0\
    );
\ALUResult[28]_INST_0_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult[28]_INST_0_i_10_n_0\,
      I1 => SrcB(1),
      I2 => \ALUResult[28]_INST_0_i_11_n_0\,
      O => \ALUResult[28]_INST_0_i_8_n_0\
    );
\ALUResult[28]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[28]_INST_0_i_12_n_0\,
      I1 => \ALUResult[29]_INST_0_i_18_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[29]_INST_0_i_17_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[31]_INST_0_i_32_n_0\,
      O => \ALUResult[28]_INST_0_i_9_n_0\
    );
\ALUResult[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0CCCCAAAACCCC"
    )
        port map (
      I0 => SrcB(29),
      I1 => \ALUResult[29]_INST_0_i_2_n_0\,
      I2 => \ALUResult[29]_INST_0_i_3_n_0\,
      I3 => \ALUResult[29]_INST_0_i_4_n_0\,
      I4 => \addressM[0]_0\,
      I5 => \addressM[0]\,
      O => \^aluresult\(24)
    );
\ALUResult[29]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F8F8F8F8080808"
    )
        port map (
      I0 => rd20(29),
      I1 => rd21,
      I2 => \addressM[1]\,
      I3 => Instr(25),
      I4 => \q_reg[31]_0\,
      I5 => \addressM[20]\,
      O => SrcB(29)
    );
\ALUResult[29]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F2000000220000"
    )
        port map (
      I0 => \ALUResult[29]_INST_0_i_15_n_0\,
      I1 => \ALUResult[30]_INST_0_i_7_n_0\,
      I2 => \ALUResult[29]_INST_0_i_16_n_0\,
      I3 => ALUControl(0),
      I4 => \ALUControl__0\(0),
      I5 => \ALUResult[7]_INST_0_i_7_n_0\,
      O => \ALUResult[29]_INST_0_i_12_n_0\
    );
\ALUResult[29]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000004"
    )
        port map (
      I0 => SrcB(1),
      I1 => \^srca\(29),
      I2 => SrcB(4),
      I3 => SrcB(3),
      I4 => SrcB(2),
      I5 => \^srca\(31),
      O => \ALUResult[29]_INST_0_i_14_n_0\
    );
\ALUResult[29]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[29]_INST_0_i_17_n_0\,
      I1 => \ALUResult[31]_INST_0_i_32_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[29]_INST_0_i_18_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[29]_INST_0_i_19_n_0\,
      O => \ALUResult[29]_INST_0_i_15_n_0\
    );
\ALUResult[29]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[29]_INST_0_i_20_n_0\,
      I1 => \ALUResult[31]_INST_0_i_28_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[31]_INST_0_i_26_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[31]_INST_0_i_27_n_0\,
      O => \ALUResult[29]_INST_0_i_16_n_0\
    );
\ALUResult[29]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A0A0F000C0C0"
    )
        port map (
      I0 => rd10(7),
      I1 => rd10(23),
      I2 => rd11,
      I3 => rd10(15),
      I4 => SrcB(3),
      I5 => SrcB(4),
      O => \ALUResult[29]_INST_0_i_17_n_0\
    );
\ALUResult[29]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \^srca\(25),
      I1 => \^srca\(9),
      I2 => SrcB(3),
      I3 => \^srca\(1),
      I4 => SrcB(4),
      I5 => \^srca\(17),
      O => \ALUResult[29]_INST_0_i_18_n_0\
    );
\ALUResult[29]_INST_0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \^srca\(29),
      I1 => \^srca\(13),
      I2 => SrcB(3),
      I3 => \^srca\(5),
      I4 => SrcB(4),
      I5 => \^srca\(21),
      O => \ALUResult[29]_INST_0_i_19_n_0\
    );
\ALUResult[29]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF8888888"
    )
        port map (
      I0 => \ALUResult[31]_INST_0_i_11_n_0\,
      I1 => \ALUResult[29]_INST_0_i_5_n_0\,
      I2 => \ALUResult[29]_INST_0_i_6_n_0\,
      I3 => \ALUResult[29]_INST_0_i_7_n_0\,
      I4 => \ALUResult[29]_INST_0_i_8_n_0\,
      I5 => \ALUResult[29]_INST_0_i_9_n_0\,
      O => \ALUResult[29]_INST_0_i_2_n_0\
    );
\ALUResult[29]_INST_0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A0A0F000C0C0"
    )
        port map (
      I0 => rd10(6),
      I1 => rd10(22),
      I2 => rd11,
      I3 => rd10(14),
      I4 => SrcB(3),
      I5 => SrcB(4),
      O => \ALUResult[29]_INST_0_i_20_n_0\
    );
\ALUResult[29]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000EAEAFF008080"
    )
        port map (
      I0 => SrcB(29),
      I1 => rd11,
      I2 => rd10(29),
      I3 => \addressM[29]\(29),
      I4 => \addressM[0]_1\,
      I5 => \addressM[0]_2\,
      O => \ALUResult[29]_INST_0_i_3_n_0\
    );
\ALUResult[29]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A88A888A888A888"
    )
        port map (
      I0 => \addressM[16]_0\,
      I1 => \ALUResult[29]_INST_0_i_12_n_0\,
      I2 => SrcB(29),
      I3 => \addressM[16]\,
      I4 => rd10(29),
      I5 => rd11,
      O => \ALUResult[29]_INST_0_i_4_n_0\
    );
\ALUResult[29]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000C0008800"
    )
        port map (
      I0 => rd10(29),
      I1 => \ALUResult[31]_INST_0_i_10_n_0\,
      I2 => rd10(31),
      I3 => rd11,
      I4 => SrcB(1),
      I5 => SrcB(2),
      O => \ALUResult[29]_INST_0_i_5_n_0\
    );
\ALUResult[29]_INST_0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => SrcB(1),
      I1 => SrcB(2),
      O => \ALUResult[29]_INST_0_i_6_n_0\
    );
\ALUResult[29]_INST_0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => SrcB(4),
      I1 => SrcB(3),
      I2 => rd10(30),
      I3 => rd11,
      O => \ALUResult[29]_INST_0_i_7_n_0\
    );
\ALUResult[29]_INST_0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \ALUResult[7]_INST_0_i_7_n_0\,
      I1 => \addressM[0]\,
      O => \ALUResult[29]_INST_0_i_8_n_0\
    );
\ALUResult[29]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF8F8800000000"
    )
        port map (
      I0 => \ALUResult[7]_INST_0_i_7_n_0\,
      I1 => \ALUResult[30]_INST_0_i_8_n_0\,
      I2 => \ALUResult[30]_INST_0_i_7_n_0\,
      I3 => \ALUResult[29]_INST_0_i_14_n_0\,
      I4 => \ALUResult[0]_INST_0_i_3_n_0\,
      I5 => \addressM[0]\,
      O => \ALUResult[29]_INST_0_i_9_n_0\
    );
\ALUResult[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0CCCCAAAACCCC"
    )
        port map (
      I0 => SrcB(2),
      I1 => \ALUResult[2]_INST_0_i_2_n_0\,
      I2 => \ALUResult[2]_INST_0_i_3_n_0\,
      I3 => \ALUResult[2]_INST_0_i_4_n_0\,
      I4 => \addressM[0]_0\,
      I5 => \addressM[0]\,
      O => \^aluresult\(0)
    );
\ALUResult[2]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F808"
    )
        port map (
      I0 => rd20(2),
      I1 => rd21,
      I2 => \addressM[1]\,
      I3 => immext(2),
      O => SrcB(2)
    );
\ALUResult[2]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \^srca\(2),
      I1 => \^srca\(18),
      I2 => SrcB(3),
      I3 => \^srca\(26),
      I4 => SrcB(4),
      I5 => \^srca\(10),
      O => \ALUResult[2]_INST_0_i_10_n_0\
    );
\ALUResult[2]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[7]_INST_0_i_21_n_0\,
      I1 => \ALUResult[4]_INST_0_i_12_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[6]_INST_0_i_11_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[2]_INST_0_i_10_n_0\,
      O => \ALUResult[2]_INST_0_i_11_n_0\
    );
\ALUResult[2]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \ALUResult[29]_INST_0_i_8_n_0\,
      I1 => \ALUResult[3]_INST_0_i_7_n_0\,
      I2 => \ALUResult[31]_INST_0_i_11_n_0\,
      I3 => \ALUResult[2]_INST_0_i_6_n_0\,
      I4 => \ALUResult[2]_INST_0_i_7_n_0\,
      O => \ALUResult[2]_INST_0_i_2_n_0\
    );
\ALUResult[2]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000EAEAFF008080"
    )
        port map (
      I0 => SrcB(2),
      I1 => rd11,
      I2 => rd10(2),
      I3 => \addressM[29]\(2),
      I4 => \addressM[0]_1\,
      I5 => \addressM[0]_2\,
      O => \ALUResult[2]_INST_0_i_3_n_0\
    );
\ALUResult[2]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAA2080"
    )
        port map (
      I0 => \addressM[16]_0\,
      I1 => SrcB(2),
      I2 => \addressM[16]\,
      I3 => \^srca\(2),
      I4 => \ALUResult[2]_INST_0_i_8_n_0\,
      I5 => \ALUResult[2]_INST_0_i_9_n_0\,
      O => \ALUResult[2]_INST_0_i_4_n_0\
    );
\ALUResult[2]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[8]_INST_0_i_11_n_0\,
      I1 => \ALUResult[4]_INST_0_i_12_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[6]_INST_0_i_11_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[2]_INST_0_i_10_n_0\,
      O => \ALUResult[2]_INST_0_i_6_n_0\
    );
\ALUResult[2]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF8F8800000000"
    )
        port map (
      I0 => \ALUResult[7]_INST_0_i_7_n_0\,
      I1 => \ALUResult[3]_INST_0_i_6_n_0\,
      I2 => \ALUResult[30]_INST_0_i_7_n_0\,
      I3 => \ALUResult[2]_INST_0_i_11_n_0\,
      I4 => \ALUResult[0]_INST_0_i_3_n_0\,
      I5 => \addressM[0]\,
      O => \ALUResult[2]_INST_0_i_7_n_0\
    );
\ALUResult[2]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2202000020000000"
    )
        port map (
      I0 => \ALUResult[7]_INST_0_i_12_n_0\,
      I1 => SrcB(2),
      I2 => SrcB(1),
      I3 => \^srca\(0),
      I4 => \ALUResult[31]_INST_0_i_10_n_0\,
      I5 => \^srca\(2),
      O => \ALUResult[2]_INST_0_i_8_n_0\
    );
\ALUResult[2]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => SrcB(1),
      I1 => SrcB(2),
      I2 => \ALUResult[31]_INST_0_i_10_n_0\,
      I3 => rd10(1),
      I4 => rd11,
      I5 => \ALUResult[31]_INST_0_i_19_n_0\,
      O => \ALUResult[2]_INST_0_i_9_n_0\
    );
\ALUResult[30]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F8F8F8F8080808"
    )
        port map (
      I0 => rd20(30),
      I1 => rd21,
      I2 => \addressM[1]\,
      I3 => Instr(26),
      I4 => \q_reg[31]_0\,
      I5 => \addressM[20]\,
      O => \^clk_0\(0)
    );
\ALUResult[30]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8FFF8F8FFF8F8F8"
    )
        port map (
      I0 => \ALUResult[7]_INST_0_i_12_n_0\,
      I1 => \ALUResult[31]_INST_0_i_20_n_0\,
      I2 => \ALUResult[30]_INST_0_i_11_n_0\,
      I3 => \^srca\(30),
      I4 => \addressM[16]\,
      I5 => \^clk_0\(0),
      O => \ALUResult[30]_INST_0_i_1_0\
    );
\ALUResult[30]_INST_0_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ALUResult[31]_INST_0_i_19_n_0\,
      I1 => \ALUResult[29]_INST_0_i_15_n_0\,
      O => \ALUResult[30]_INST_0_i_11_n_0\
    );
\ALUResult[30]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFCF0AC00A"
    )
        port map (
      I0 => \ALUResult[30]_INST_0_i_6_n_0\,
      I1 => \^srca\(31),
      I2 => \ALUResult[30]_INST_0_i_7_n_0\,
      I3 => \addressM[0]\,
      I4 => \ALUResult[30]_INST_0_i_8_n_0\,
      I5 => \ALUResult[30]_INST_0_i_9_n_0\,
      O => \ALUResult[30]_INST_0_i_9_0\
    );
\ALUResult[30]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => rd11,
      I1 => rd10(30),
      I2 => SrcB(3),
      I3 => SrcB(4),
      I4 => SrcB(2),
      I5 => SrcB(1),
      O => \ALUResult[30]_INST_0_i_6_n_0\
    );
\ALUResult[30]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFFFFFFFFFF"
    )
        port map (
      I0 => SrcB(0),
      I1 => \ALUResult[0]_INST_0_i_8_n_0\,
      I2 => \ALUResult[0]_INST_0_i_9_n_0\,
      I3 => \ALUResult[0]_INST_0_i_10_n_0\,
      I4 => \ALUResult[0]_INST_0_i_11_n_0\,
      I5 => \ALUResult[0]_INST_0_i_12_n_0\,
      O => \ALUResult[30]_INST_0_i_7_n_0\
    );
\ALUResult[30]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000004"
    )
        port map (
      I0 => SrcB(1),
      I1 => \^srca\(30),
      I2 => SrcB(4),
      I3 => SrcB(3),
      I4 => SrcB(2),
      I5 => \^srca\(31),
      O => \ALUResult[30]_INST_0_i_8_n_0\
    );
\ALUResult[30]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => SrcB(1),
      I1 => SrcB(2),
      I2 => \ALUResult[31]_INST_0_i_10_n_0\,
      I3 => rd10(31),
      I4 => rd11,
      I5 => \ALUResult[29]_INST_0_i_8_n_0\,
      O => \ALUResult[30]_INST_0_i_9_n_0\
    );
\ALUResult[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFCECFCEFCCECCC"
    )
        port map (
      I0 => \ALUResult[31]_INST_0_i_1_n_0\,
      I1 => \ALUResult[31]_INST_0_i_2_n_0\,
      I2 => \addressM[0]\,
      I3 => \addressM[0]_0\,
      I4 => \^clk_0\(1),
      I5 => \^srca\(31),
      O => \^aluresult[31]_inst_0_i_6_0\
    );
\ALUResult[31]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FCFCAAAAC0C0"
    )
        port map (
      I0 => O(0),
      I1 => \^srca\(31),
      I2 => \^clk_0\(1),
      I3 => \ALUResult[31]_INST_0_i_7_n_0\,
      I4 => \addressM[0]_1\,
      I5 => \addressM[0]_2\,
      O => \ALUResult[31]_INST_0_i_1_n_0\
    );
\ALUResult[31]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"050005FF053305FF"
    )
        port map (
      I0 => immext(3),
      I1 => rd20(3),
      I2 => immext(4),
      I3 => \addressM[1]\,
      I4 => rd21,
      I5 => rd20(4),
      O => \ALUResult[31]_INST_0_i_10_n_0\
    );
\ALUResult[31]_INST_0_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \ALUResult[30]_INST_0_i_7_n_0\,
      I1 => \addressM[0]\,
      O => \ALUResult[31]_INST_0_i_11_n_0\
    );
\ALUResult[31]_INST_0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \ALUResult[30]_INST_0_i_10_0\,
      I1 => SrcB(0),
      I2 => \ALUResult[7]_INST_0_i_26_n_0\,
      I3 => \ALUResult[0]_INST_0_i_10_n_0\,
      I4 => \ALUResult[0]_INST_0_i_9_n_0\,
      I5 => \ALUResult[0]_INST_0_i_8_n_0\,
      O => \ALUResult[31]_INST_0_i_19_n_0\
    );
\ALUResult[31]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \ALUResult[31]_INST_0_i_10_n_0\,
      I1 => \^srca\(31),
      I2 => SrcB(2),
      I3 => SrcB(1),
      I4 => \addressM[0]_0\,
      I5 => \ALUResult[31]_INST_0_i_11_n_0\,
      O => \ALUResult[31]_INST_0_i_2_n_0\
    );
\ALUResult[31]_INST_0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8FF33CC00"
    )
        port map (
      I0 => \ALUResult[31]_INST_0_i_26_n_0\,
      I1 => SrcB(2),
      I2 => \ALUResult[31]_INST_0_i_27_n_0\,
      I3 => \ALUResult[31]_INST_0_i_28_n_0\,
      I4 => \ALUResult[31]_INST_0_i_29_n_0\,
      I5 => SrcB(1),
      O => \ALUResult[31]_INST_0_i_20_n_0\
    );
\ALUResult[31]_INST_0_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A8A80808A808A80"
    )
        port map (
      I0 => \ALUResult[7]_INST_0_i_12_n_0\,
      I1 => \ALUResult[31]_INST_0_i_30_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[31]_INST_0_i_31_n_0\,
      I4 => \ALUResult[31]_INST_0_i_32_n_0\,
      I5 => SrcB(2),
      O => \ALUResult[31]_INST_0_i_21_n_0\
    );
\ALUResult[31]_INST_0_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \^srca\(24),
      I1 => \^srca\(8),
      I2 => SrcB(3),
      I3 => \^srca\(0),
      I4 => SrcB(4),
      I5 => \^srca\(16),
      O => \ALUResult[31]_INST_0_i_26_n_0\
    );
\ALUResult[31]_INST_0_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \^srca\(28),
      I1 => \^srca\(12),
      I2 => SrcB(3),
      I3 => \^srca\(4),
      I4 => SrcB(4),
      I5 => \^srca\(20),
      O => \ALUResult[31]_INST_0_i_27_n_0\
    );
\ALUResult[31]_INST_0_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \^srca\(26),
      I1 => \^srca\(10),
      I2 => SrcB(3),
      I3 => \^srca\(2),
      I4 => SrcB(4),
      I5 => \^srca\(18),
      O => \ALUResult[31]_INST_0_i_28_n_0\
    );
\ALUResult[31]_INST_0_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \^srca\(30),
      I1 => \^srca\(14),
      I2 => SrcB(3),
      I3 => \^srca\(6),
      I4 => SrcB(4),
      I5 => \^srca\(22),
      O => \ALUResult[31]_INST_0_i_29_n_0\
    );
\ALUResult[31]_INST_0_i_30\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult[29]_INST_0_i_18_n_0\,
      I1 => SrcB(2),
      I2 => \ALUResult[29]_INST_0_i_19_n_0\,
      O => \ALUResult[31]_INST_0_i_30_n_0\
    );
\ALUResult[31]_INST_0_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \^srca\(31),
      I1 => \^srca\(15),
      I2 => SrcB(3),
      I3 => \^srca\(7),
      I4 => SrcB(4),
      I5 => \^srca\(23),
      O => \ALUResult[31]_INST_0_i_31_n_0\
    );
\ALUResult[31]_INST_0_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \^srca\(27),
      I1 => \^srca\(11),
      I2 => SrcB(3),
      I3 => \^srca\(3),
      I4 => SrcB(4),
      I5 => \^srca\(19),
      O => \ALUResult[31]_INST_0_i_32_n_0\
    );
\ALUResult[31]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08F8F8F808080808"
    )
        port map (
      I0 => rd20(31),
      I1 => rd21,
      I2 => \addressM[1]\,
      I3 => sel0(0),
      I4 => sel0(2),
      I5 => Instr(27),
      O => \^clk_0\(1)
    );
\ALUResult[31]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(13),
      I1 => Instr(15),
      I2 => Instr(12),
      I3 => Instr(11),
      I4 => Instr(14),
      I5 => rd10(31),
      O => \^srca\(31)
    );
\ALUResult[31]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF484848"
    )
        port map (
      I0 => \^srca\(31),
      I1 => \addressM[16]\,
      I2 => \^clk_0\(1),
      I3 => \ALUResult[31]_INST_0_i_19_n_0\,
      I4 => \ALUResult[31]_INST_0_i_20_n_0\,
      I5 => \ALUResult[31]_INST_0_i_21_n_0\,
      O => \ALUResult[31]_INST_0_i_7_n_0\
    );
\ALUResult[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FCFCAAAAF0F0"
    )
        port map (
      I0 => SrcB(3),
      I1 => data8(3),
      I2 => \ALUResult[3]_INST_0_i_3_n_0\,
      I3 => \ALUResult[3]_INST_0_i_4_n_0\,
      I4 => \addressM[0]_0\,
      I5 => \addressM[0]\,
      O => \^aluresult\(1)
    );
\ALUResult[3]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F808"
    )
        port map (
      I0 => rd20(3),
      I1 => rd21,
      I2 => \addressM[1]\,
      I3 => immext(3),
      O => SrcB(3)
    );
\ALUResult[3]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \ALUResult[7]_INST_0_i_25_n_0\,
      I1 => \ALUResult[0]_INST_0_i_10_n_0\,
      I2 => \ALUResult[7]_INST_0_i_26_n_0\,
      I3 => SrcB(0),
      I4 => \ALUResult[30]_INST_0_i_10_0\,
      I5 => \ALUResult[3]_INST_0_i_13_n_0\,
      O => \ALUResult[3]_INST_0_i_10_n_0\
    );
\ALUResult[3]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000C0008800"
    )
        port map (
      I0 => rd10(3),
      I1 => \ALUResult[31]_INST_0_i_10_n_0\,
      I2 => rd10(1),
      I3 => rd11,
      I4 => SrcB(1),
      I5 => SrcB(2),
      O => \ALUResult[3]_INST_0_i_11_n_0\
    );
\ALUResult[3]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \^srca\(3),
      I1 => \^srca\(19),
      I2 => SrcB(3),
      I3 => \^srca\(27),
      I4 => SrcB(4),
      I5 => \^srca\(11),
      O => \ALUResult[3]_INST_0_i_12_n_0\
    );
\ALUResult[3]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000C0008800"
    )
        port map (
      I0 => rd10(2),
      I1 => \ALUResult[31]_INST_0_i_10_n_0\,
      I2 => rd10(0),
      I3 => rd11,
      I4 => SrcB(1),
      I5 => SrcB(2),
      O => \ALUResult[3]_INST_0_i_13_n_0\
    );
\ALUResult[3]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAEAEAE"
    )
        port map (
      I0 => \ALUResult[0]_INST_0_i_3_n_0\,
      I1 => \ALUResult[3]_INST_0_i_6_n_0\,
      I2 => \ALUResult[30]_INST_0_i_7_n_0\,
      I3 => \ALUResult[4]_INST_0_i_6_n_0\,
      I4 => \ALUResult[7]_INST_0_i_7_n_0\,
      O => data8(3)
    );
\ALUResult[3]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F222"
    )
        port map (
      I0 => \ALUResult[3]_INST_0_i_7_n_0\,
      I1 => \ALUResult[30]_INST_0_i_7_n_0\,
      I2 => \ALUResult[4]_INST_0_i_7_n_0\,
      I3 => \ALUResult[7]_INST_0_i_7_n_0\,
      I4 => \addressM[0]\,
      O => \ALUResult[3]_INST_0_i_3_n_0\
    );
\ALUResult[3]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFEFEAAAAAAAA"
    )
        port map (
      I0 => \ALUResult[3]_INST_0_i_8_n_0\,
      I1 => \ALUResult[3]_INST_0_i_9_n_0\,
      I2 => \ALUResult[3]_INST_0_i_10_n_0\,
      I3 => \ALUResult[7]_INST_0_i_12_n_0\,
      I4 => \ALUResult[3]_INST_0_i_11_n_0\,
      I5 => \addressM[16]_0\,
      O => \ALUResult[3]_INST_0_i_4_n_0\
    );
\ALUResult[3]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[7]_INST_0_i_15_n_0\,
      I1 => \ALUResult[5]_INST_0_i_11_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[7]_INST_0_i_17_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[3]_INST_0_i_12_n_0\,
      O => \ALUResult[3]_INST_0_i_6_n_0\
    );
\ALUResult[3]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[7]_INST_0_i_23_n_0\,
      I1 => \ALUResult[5]_INST_0_i_11_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[7]_INST_0_i_17_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[3]_INST_0_i_12_n_0\,
      O => \ALUResult[3]_INST_0_i_7_n_0\
    );
\ALUResult[3]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000EAEAFF008080"
    )
        port map (
      I0 => SrcB(3),
      I1 => rd11,
      I2 => rd10(3),
      I3 => \addressM[29]\(3),
      I4 => \addressM[0]_1\,
      I5 => \addressM[0]_2\,
      O => \ALUResult[3]_INST_0_i_8_n_0\
    );
\ALUResult[3]_INST_0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4888"
    )
        port map (
      I0 => SrcB(3),
      I1 => \addressM[16]\,
      I2 => rd10(3),
      I3 => rd11,
      O => \ALUResult[3]_INST_0_i_9_n_0\
    );
\ALUResult[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FCFCAAAAF0F0"
    )
        port map (
      I0 => SrcB(4),
      I1 => data8(4),
      I2 => \ALUResult[4]_INST_0_i_3_n_0\,
      I3 => \ALUResult[4]_INST_0_i_4_n_0\,
      I4 => \addressM[0]_0\,
      I5 => \addressM[0]\,
      O => \^aluresult\(2)
    );
\ALUResult[4]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F808"
    )
        port map (
      I0 => rd20(4),
      I1 => rd21,
      I2 => \addressM[1]\,
      I3 => immext(4),
      O => SrcB(4)
    );
\ALUResult[4]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \ALUResult[7]_INST_0_i_25_n_0\,
      I1 => \ALUResult[0]_INST_0_i_10_n_0\,
      I2 => \ALUResult[7]_INST_0_i_26_n_0\,
      I3 => SrcB(0),
      I4 => \ALUResult[30]_INST_0_i_10_0\,
      I5 => \ALUResult[3]_INST_0_i_11_n_0\,
      O => \ALUResult[4]_INST_0_i_10_n_0\
    );
\ALUResult[4]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A0A0F000C0C0"
    )
        port map (
      I0 => \^srca\(0),
      I1 => \^srca\(4),
      I2 => \ALUResult[31]_INST_0_i_10_n_0\,
      I3 => \^srca\(2),
      I4 => SrcB(1),
      I5 => SrcB(2),
      O => \ALUResult[4]_INST_0_i_11_n_0\
    );
\ALUResult[4]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \^srca\(4),
      I1 => \^srca\(20),
      I2 => SrcB(3),
      I3 => \^srca\(28),
      I4 => SrcB(4),
      I5 => \^srca\(12),
      O => \ALUResult[4]_INST_0_i_12_n_0\
    );
\ALUResult[4]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAEAEAE"
    )
        port map (
      I0 => \ALUResult[0]_INST_0_i_3_n_0\,
      I1 => \ALUResult[4]_INST_0_i_6_n_0\,
      I2 => \ALUResult[30]_INST_0_i_7_n_0\,
      I3 => \ALUResult[5]_INST_0_i_5_n_0\,
      I4 => \ALUResult[7]_INST_0_i_7_n_0\,
      O => data8(4)
    );
\ALUResult[4]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F222"
    )
        port map (
      I0 => \ALUResult[4]_INST_0_i_7_n_0\,
      I1 => \ALUResult[30]_INST_0_i_7_n_0\,
      I2 => \ALUResult[5]_INST_0_i_6_n_0\,
      I3 => \ALUResult[7]_INST_0_i_7_n_0\,
      I4 => \addressM[0]\,
      O => \ALUResult[4]_INST_0_i_3_n_0\
    );
\ALUResult[4]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFEFEAAAAAAAA"
    )
        port map (
      I0 => \ALUResult[4]_INST_0_i_8_n_0\,
      I1 => \ALUResult[4]_INST_0_i_9_n_0\,
      I2 => \ALUResult[4]_INST_0_i_10_n_0\,
      I3 => \ALUResult[7]_INST_0_i_12_n_0\,
      I4 => \ALUResult[4]_INST_0_i_11_n_0\,
      I5 => \addressM[16]_0\,
      O => \ALUResult[4]_INST_0_i_4_n_0\
    );
\ALUResult[4]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[7]_INST_0_i_19_n_0\,
      I1 => \ALUResult[6]_INST_0_i_11_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[7]_INST_0_i_21_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[4]_INST_0_i_12_n_0\,
      O => \ALUResult[4]_INST_0_i_6_n_0\
    );
\ALUResult[4]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[8]_INST_0_i_9_n_0\,
      I1 => \ALUResult[6]_INST_0_i_11_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[8]_INST_0_i_11_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[4]_INST_0_i_12_n_0\,
      O => \ALUResult[4]_INST_0_i_7_n_0\
    );
\ALUResult[4]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000EAEAFF008080"
    )
        port map (
      I0 => SrcB(4),
      I1 => rd11,
      I2 => rd10(4),
      I3 => \addressM[29]\(4),
      I4 => \addressM[0]_1\,
      I5 => \addressM[0]_2\,
      O => \ALUResult[4]_INST_0_i_8_n_0\
    );
\ALUResult[4]_INST_0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4888"
    )
        port map (
      I0 => SrcB(4),
      I1 => \addressM[16]\,
      I2 => rd10(4),
      I3 => rd11,
      O => \ALUResult[4]_INST_0_i_9_n_0\
    );
\ALUResult[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FCFCAAAAF0F0"
    )
        port map (
      I0 => SrcB(5),
      I1 => data8(5),
      I2 => \ALUResult[5]_INST_0_i_3_n_0\,
      I3 => \ALUResult[5]_INST_0_i_4_n_0\,
      I4 => \addressM[0]_0\,
      I5 => \addressM[0]\,
      O => \^aluresult\(3)
    );
\ALUResult[5]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0808F808"
    )
        port map (
      I0 => rd20(5),
      I1 => rd21,
      I2 => \addressM[1]\,
      I3 => Instr(21),
      I4 => sel0(2),
      O => SrcB(5)
    );
\ALUResult[5]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A0A0F000C0C0"
    )
        port map (
      I0 => \^srca\(1),
      I1 => \^srca\(5),
      I2 => \ALUResult[31]_INST_0_i_10_n_0\,
      I3 => \^srca\(3),
      I4 => SrcB(1),
      I5 => SrcB(2),
      O => \ALUResult[5]_INST_0_i_10_n_0\
    );
\ALUResult[5]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \^srca\(5),
      I1 => \^srca\(21),
      I2 => SrcB(3),
      I3 => \^srca\(29),
      I4 => SrcB(4),
      I5 => \^srca\(13),
      O => \ALUResult[5]_INST_0_i_11_n_0\
    );
\ALUResult[5]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAEAEAE"
    )
        port map (
      I0 => \ALUResult[0]_INST_0_i_3_n_0\,
      I1 => \ALUResult[5]_INST_0_i_5_n_0\,
      I2 => \ALUResult[30]_INST_0_i_7_n_0\,
      I3 => \ALUResult[6]_INST_0_i_5_n_0\,
      I4 => \ALUResult[7]_INST_0_i_7_n_0\,
      O => data8(5)
    );
\ALUResult[5]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F222"
    )
        port map (
      I0 => \ALUResult[5]_INST_0_i_6_n_0\,
      I1 => \ALUResult[30]_INST_0_i_7_n_0\,
      I2 => \ALUResult[6]_INST_0_i_6_n_0\,
      I3 => \ALUResult[7]_INST_0_i_7_n_0\,
      I4 => \addressM[0]\,
      O => \ALUResult[5]_INST_0_i_3_n_0\
    );
\ALUResult[5]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFEFEAAAAAAAA"
    )
        port map (
      I0 => \ALUResult[5]_INST_0_i_7_n_0\,
      I1 => \ALUResult[5]_INST_0_i_8_n_0\,
      I2 => \ALUResult[5]_INST_0_i_9_n_0\,
      I3 => \ALUResult[7]_INST_0_i_12_n_0\,
      I4 => \ALUResult[5]_INST_0_i_10_n_0\,
      I5 => \addressM[16]_0\,
      O => \ALUResult[5]_INST_0_i_4_n_0\
    );
\ALUResult[5]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[7]_INST_0_i_16_n_0\,
      I1 => \ALUResult[7]_INST_0_i_17_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[7]_INST_0_i_15_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[5]_INST_0_i_11_n_0\,
      O => \ALUResult[5]_INST_0_i_5_n_0\
    );
\ALUResult[5]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[7]_INST_0_i_24_n_0\,
      I1 => \ALUResult[7]_INST_0_i_17_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[7]_INST_0_i_23_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[5]_INST_0_i_11_n_0\,
      O => \ALUResult[5]_INST_0_i_6_n_0\
    );
\ALUResult[5]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000EAEAFF008080"
    )
        port map (
      I0 => SrcB(5),
      I1 => rd11,
      I2 => rd10(5),
      I3 => \addressM[29]\(5),
      I4 => \addressM[0]_1\,
      I5 => \addressM[0]_2\,
      O => \ALUResult[5]_INST_0_i_7_n_0\
    );
\ALUResult[5]_INST_0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4888"
    )
        port map (
      I0 => SrcB(5),
      I1 => \addressM[16]\,
      I2 => rd10(5),
      I3 => rd11,
      O => \ALUResult[5]_INST_0_i_8_n_0\
    );
\ALUResult[5]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \ALUResult[7]_INST_0_i_25_n_0\,
      I1 => \ALUResult[0]_INST_0_i_10_n_0\,
      I2 => \ALUResult[7]_INST_0_i_26_n_0\,
      I3 => SrcB(0),
      I4 => \ALUResult[30]_INST_0_i_10_0\,
      I5 => \ALUResult[4]_INST_0_i_11_n_0\,
      O => \ALUResult[5]_INST_0_i_9_n_0\
    );
\ALUResult[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FCFCAAAAF0F0"
    )
        port map (
      I0 => SrcB(6),
      I1 => data8(6),
      I2 => \ALUResult[6]_INST_0_i_3_n_0\,
      I3 => \ALUResult[6]_INST_0_i_4_n_0\,
      I4 => \addressM[0]_0\,
      I5 => \addressM[0]\,
      O => \^aluresult\(4)
    );
\ALUResult[6]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0808F808"
    )
        port map (
      I0 => rd20(6),
      I1 => rd21,
      I2 => \addressM[1]\,
      I3 => Instr(22),
      I4 => sel0(2),
      O => SrcB(6)
    );
\ALUResult[6]_INST_0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4888"
    )
        port map (
      I0 => SrcB(6),
      I1 => \addressM[16]\,
      I2 => rd10(6),
      I3 => rd11,
      O => \ALUResult[6]_INST_0_i_10_n_0\
    );
\ALUResult[6]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \^srca\(6),
      I1 => \^srca\(22),
      I2 => SrcB(3),
      I3 => \^srca\(30),
      I4 => SrcB(4),
      I5 => \^srca\(14),
      O => \ALUResult[6]_INST_0_i_11_n_0\
    );
\ALUResult[6]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0011001500000000"
    )
        port map (
      I0 => \ALUResult[6]_INST_0_i_16_n_0\,
      I1 => \addressM[1]\,
      I2 => immext(4),
      I3 => \ALUResult[6]_INST_0_i_17_n_0\,
      I4 => immext(3),
      I5 => \^srca\(0),
      O => \ALUResult[6]_INST_0_i_12_n_0\
    );
\ALUResult[6]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0011001500000000"
    )
        port map (
      I0 => \ALUResult[6]_INST_0_i_16_n_0\,
      I1 => \addressM[1]\,
      I2 => immext(4),
      I3 => \ALUResult[6]_INST_0_i_17_n_0\,
      I4 => immext(3),
      I5 => \^srca\(4),
      O => \ALUResult[6]_INST_0_i_13_n_0\
    );
\ALUResult[6]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0011001500000000"
    )
        port map (
      I0 => \ALUResult[6]_INST_0_i_16_n_0\,
      I1 => \addressM[1]\,
      I2 => immext(4),
      I3 => \ALUResult[6]_INST_0_i_17_n_0\,
      I4 => immext(3),
      I5 => \^srca\(2),
      O => \ALUResult[6]_INST_0_i_14_n_0\
    );
\ALUResult[6]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0011001500000000"
    )
        port map (
      I0 => \ALUResult[6]_INST_0_i_16_n_0\,
      I1 => \addressM[1]\,
      I2 => immext(4),
      I3 => \ALUResult[6]_INST_0_i_17_n_0\,
      I4 => immext(3),
      I5 => \^srca\(6),
      O => \ALUResult[6]_INST_0_i_15_n_0\
    );
\ALUResult[6]_INST_0_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \addressM[1]\,
      I1 => rd21,
      I2 => rd20(4),
      O => \ALUResult[6]_INST_0_i_16_n_0\
    );
\ALUResult[6]_INST_0_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \addressM[1]\,
      I1 => rd21,
      I2 => rd20(3),
      O => \ALUResult[6]_INST_0_i_17_n_0\
    );
\ALUResult[6]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAEAEAE"
    )
        port map (
      I0 => \ALUResult[0]_INST_0_i_3_n_0\,
      I1 => \ALUResult[6]_INST_0_i_5_n_0\,
      I2 => \ALUResult[30]_INST_0_i_7_n_0\,
      I3 => \ALUResult[7]_INST_0_i_5_n_0\,
      I4 => \ALUResult[7]_INST_0_i_7_n_0\,
      O => data8(6)
    );
\ALUResult[6]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F222"
    )
        port map (
      I0 => \ALUResult[6]_INST_0_i_6_n_0\,
      I1 => \ALUResult[30]_INST_0_i_7_n_0\,
      I2 => \ALUResult[7]_INST_0_i_8_n_0\,
      I3 => \ALUResult[7]_INST_0_i_7_n_0\,
      I4 => \addressM[0]\,
      O => \ALUResult[6]_INST_0_i_3_n_0\
    );
\ALUResult[6]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEAAAAAAAAA"
    )
        port map (
      I0 => \ALUResult[6]_INST_0_i_7_n_0\,
      I1 => \ALUResult[7]_INST_0_i_12_n_0\,
      I2 => \ALUResult[6]_INST_0_i_8_n_0\,
      I3 => \ALUResult[6]_INST_0_i_9_n_0\,
      I4 => \ALUResult[6]_INST_0_i_10_n_0\,
      I5 => \addressM[16]_0\,
      O => \ALUResult[6]_INST_0_i_4_n_0\
    );
\ALUResult[6]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[7]_INST_0_i_20_n_0\,
      I1 => \ALUResult[7]_INST_0_i_21_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[7]_INST_0_i_19_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[6]_INST_0_i_11_n_0\,
      O => \ALUResult[6]_INST_0_i_5_n_0\
    );
\ALUResult[6]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[8]_INST_0_i_10_n_0\,
      I1 => \ALUResult[8]_INST_0_i_11_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[8]_INST_0_i_9_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[6]_INST_0_i_11_n_0\,
      O => \ALUResult[6]_INST_0_i_6_n_0\
    );
\ALUResult[6]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000EAEAFF008080"
    )
        port map (
      I0 => SrcB(6),
      I1 => rd11,
      I2 => rd10(6),
      I3 => \addressM[29]\(6),
      I4 => \addressM[0]_1\,
      I5 => \addressM[0]_2\,
      O => \ALUResult[6]_INST_0_i_7_n_0\
    );
\ALUResult[6]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[6]_INST_0_i_12_n_0\,
      I1 => \ALUResult[6]_INST_0_i_13_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[6]_INST_0_i_14_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[6]_INST_0_i_15_n_0\,
      O => \ALUResult[6]_INST_0_i_8_n_0\
    );
\ALUResult[6]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \ALUResult[7]_INST_0_i_25_n_0\,
      I1 => \ALUResult[0]_INST_0_i_10_n_0\,
      I2 => \ALUResult[7]_INST_0_i_26_n_0\,
      I3 => SrcB(0),
      I4 => \ALUResult[30]_INST_0_i_10_0\,
      I5 => \ALUResult[5]_INST_0_i_10_n_0\,
      O => \ALUResult[6]_INST_0_i_9_n_0\
    );
\ALUResult[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FCFCAAAAF0F0"
    )
        port map (
      I0 => SrcB(7),
      I1 => data8(7),
      I2 => \ALUResult[7]_INST_0_i_3_n_0\,
      I3 => \ALUResult[7]_INST_0_i_4_n_0\,
      I4 => \addressM[0]_0\,
      I5 => \addressM[0]\,
      O => \^aluresult\(5)
    );
\ALUResult[7]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0808F808"
    )
        port map (
      I0 => rd20(7),
      I1 => rd21,
      I2 => \addressM[1]\,
      I3 => Instr(23),
      I4 => sel0(2),
      O => SrcB(7)
    );
\ALUResult[7]_INST_0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4888"
    )
        port map (
      I0 => SrcB(7),
      I1 => \addressM[16]\,
      I2 => rd10(7),
      I3 => rd11,
      O => \ALUResult[7]_INST_0_i_10_n_0\
    );
\ALUResult[7]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \ALUResult[7]_INST_0_i_25_n_0\,
      I1 => \ALUResult[0]_INST_0_i_10_n_0\,
      I2 => \ALUResult[7]_INST_0_i_26_n_0\,
      I3 => SrcB(0),
      I4 => \ALUResult[30]_INST_0_i_10_0\,
      I5 => \ALUResult[6]_INST_0_i_8_n_0\,
      O => \ALUResult[7]_INST_0_i_11_n_0\
    );
\ALUResult[7]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \ALUResult[30]_INST_0_i_10_0\,
      I1 => \ALUResult[7]_INST_0_i_26_n_0\,
      I2 => \ALUResult[0]_INST_0_i_10_n_0\,
      I3 => \ALUResult[0]_INST_0_i_9_n_0\,
      I4 => \ALUResult[0]_INST_0_i_8_n_0\,
      I5 => SrcB(0),
      O => \ALUResult[7]_INST_0_i_12_n_0\
    );
\ALUResult[7]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B080FFFFB0800000"
    )
        port map (
      I0 => \^srca\(1),
      I1 => SrcB(2),
      I2 => \ALUResult[31]_INST_0_i_10_n_0\,
      I3 => \^srca\(5),
      I4 => SrcB(1),
      I5 => \ALUResult[7]_INST_0_i_28_n_0\,
      O => \ALUResult[7]_INST_0_i_13_n_0\
    );
\ALUResult[7]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \^srca\(21),
      I1 => \^srca\(31),
      I2 => SrcB(3),
      I3 => \^srca\(29),
      I4 => SrcB(4),
      I5 => \^srca\(13),
      O => \ALUResult[7]_INST_0_i_14_n_0\
    );
\ALUResult[7]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \^srca\(17),
      I1 => \^srca\(31),
      I2 => SrcB(3),
      I3 => \^srca\(25),
      I4 => SrcB(4),
      I5 => \^srca\(9),
      O => \ALUResult[7]_INST_0_i_15_n_0\
    );
\ALUResult[7]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \^srca\(19),
      I1 => \^srca\(31),
      I2 => SrcB(3),
      I3 => \^srca\(27),
      I4 => SrcB(4),
      I5 => \^srca\(11),
      O => \ALUResult[7]_INST_0_i_16_n_0\
    );
\ALUResult[7]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFCFA0A0C0CFA0A"
    )
        port map (
      I0 => \^srca\(7),
      I1 => \^srca\(23),
      I2 => SrcB(3),
      I3 => \^srca\(15),
      I4 => SrcB(4),
      I5 => \^srca\(31),
      O => \ALUResult[7]_INST_0_i_17_n_0\
    );
\ALUResult[7]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \^srca\(22),
      I1 => \^srca\(31),
      I2 => SrcB(3),
      I3 => \^srca\(30),
      I4 => SrcB(4),
      I5 => \^srca\(14),
      O => \ALUResult[7]_INST_0_i_18_n_0\
    );
\ALUResult[7]_INST_0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \^srca\(18),
      I1 => \^srca\(31),
      I2 => SrcB(3),
      I3 => \^srca\(26),
      I4 => SrcB(4),
      I5 => \^srca\(10),
      O => \ALUResult[7]_INST_0_i_19_n_0\
    );
\ALUResult[7]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAEAEAE"
    )
        port map (
      I0 => \ALUResult[0]_INST_0_i_3_n_0\,
      I1 => \ALUResult[7]_INST_0_i_5_n_0\,
      I2 => \ALUResult[30]_INST_0_i_7_n_0\,
      I3 => \ALUResult[7]_INST_0_i_6_n_0\,
      I4 => \ALUResult[7]_INST_0_i_7_n_0\,
      O => data8(7)
    );
\ALUResult[7]_INST_0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \^srca\(20),
      I1 => \^srca\(31),
      I2 => SrcB(3),
      I3 => \^srca\(28),
      I4 => SrcB(4),
      I5 => \^srca\(12),
      O => \ALUResult[7]_INST_0_i_20_n_0\
    );
\ALUResult[7]_INST_0_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \^srca\(16),
      I1 => \^srca\(31),
      I2 => SrcB(3),
      I3 => \^srca\(24),
      I4 => SrcB(4),
      I5 => \^srca\(8),
      O => \ALUResult[7]_INST_0_i_21_n_0\
    );
\ALUResult[7]_INST_0_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A0A0F000C0C0"
    )
        port map (
      I0 => rd10(29),
      I1 => rd10(13),
      I2 => rd11,
      I3 => rd10(21),
      I4 => SrcB(3),
      I5 => SrcB(4),
      O => \ALUResult[7]_INST_0_i_22_n_0\
    );
\ALUResult[7]_INST_0_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A0A0F000C0C0"
    )
        port map (
      I0 => rd10(25),
      I1 => rd10(9),
      I2 => rd11,
      I3 => rd10(17),
      I4 => SrcB(3),
      I5 => SrcB(4),
      O => \ALUResult[7]_INST_0_i_23_n_0\
    );
\ALUResult[7]_INST_0_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A0A0F000C0C0"
    )
        port map (
      I0 => rd10(27),
      I1 => rd10(11),
      I2 => rd11,
      I3 => rd10(19),
      I4 => SrcB(3),
      I5 => SrcB(4),
      O => \ALUResult[7]_INST_0_i_24_n_0\
    );
\ALUResult[7]_INST_0_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => \ALUResult[7]_INST_0_i_29_n_0\,
      I1 => \ALUResult[0]_INST_0_i_16_n_0\,
      I2 => \ALUResult[7]_INST_0_i_30_n_0\,
      I3 => SrcB(16),
      I4 => \ALUResult[7]_INST_0_i_31_n_0\,
      I5 => \ALUResult[7]_INST_0_i_32_n_0\,
      O => \ALUResult[7]_INST_0_i_25_n_0\
    );
\ALUResult[7]_INST_0_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000002000000"
    )
        port map (
      I0 => \ALUResult[7]_INST_0_i_33_n_0\,
      I1 => SrcB(15),
      I2 => SrcB(17),
      I3 => \ALUResult[0]_INST_0_i_17_n_0\,
      I4 => \ALUResult[7]_INST_0_i_34_n_0\,
      I5 => SrcB(11),
      O => \ALUResult[7]_INST_0_i_26_n_0\
    );
\ALUResult[7]_INST_0_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000B000800000000"
    )
        port map (
      I0 => rd10(3),
      I1 => SrcB(2),
      I2 => SrcB(4),
      I3 => SrcB(3),
      I4 => rd10(7),
      I5 => rd11,
      O => \ALUResult[7]_INST_0_i_28_n_0\
    );
\ALUResult[7]_INST_0_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"050005FF053305FF"
    )
        port map (
      I0 => immext(27),
      I1 => rd20(27),
      I2 => immext(28),
      I3 => \addressM[1]\,
      I4 => rd21,
      I5 => rd20(28),
      O => \ALUResult[7]_INST_0_i_29_n_0\
    );
\ALUResult[7]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F222"
    )
        port map (
      I0 => \ALUResult[7]_INST_0_i_8_n_0\,
      I1 => \ALUResult[30]_INST_0_i_7_n_0\,
      I2 => \ALUResult[8]_INST_0_i_5_n_0\,
      I3 => \ALUResult[7]_INST_0_i_7_n_0\,
      I4 => \addressM[0]\,
      O => \ALUResult[7]_INST_0_i_3_n_0\
    );
\ALUResult[7]_INST_0_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \ALUResult[7]_INST_0_i_35_n_0\,
      I1 => \ALUResult[7]_INST_0_i_25_0\,
      I2 => \ALUResult[7]_INST_0_i_37_n_0\,
      I3 => \ALUResult[7]_INST_0_i_25_1\,
      I4 => \ALUResult[7]_INST_0_i_25_2\,
      I5 => \ALUResult[7]_INST_0_i_40_n_0\,
      O => \ALUResult[7]_INST_0_i_30_n_0\
    );
\ALUResult[7]_INST_0_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"050005FF053305FF"
    )
        port map (
      I0 => immext(21),
      I1 => rd20(21),
      I2 => immext(22),
      I3 => \addressM[1]\,
      I4 => rd21,
      I5 => rd20(22),
      O => \ALUResult[7]_INST_0_i_31_n_0\
    );
\ALUResult[7]_INST_0_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"050005FF053305FF"
    )
        port map (
      I0 => immext(23),
      I1 => rd20(23),
      I2 => immext(24),
      I3 => \addressM[1]\,
      I4 => rd21,
      I5 => rd20(24),
      O => \ALUResult[7]_INST_0_i_32_n_0\
    );
\ALUResult[7]_INST_0_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"050005FF053305FF"
    )
        port map (
      I0 => immext(18),
      I1 => rd20(18),
      I2 => immext(19),
      I3 => \addressM[1]\,
      I4 => rd21,
      I5 => rd20(19),
      O => \ALUResult[7]_INST_0_i_33_n_0\
    );
\ALUResult[7]_INST_0_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100011101110111"
    )
        port map (
      I0 => SrcB(10),
      I1 => SrcB(9),
      I2 => immext(20),
      I3 => \addressM[1]\,
      I4 => rd21,
      I5 => rd20(20),
      O => \ALUResult[7]_INST_0_i_34_n_0\
    );
\ALUResult[7]_INST_0_i_35\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \addressM[1]\,
      I1 => rd21,
      I2 => rd20(30),
      O => \ALUResult[7]_INST_0_i_35_n_0\
    );
\ALUResult[7]_INST_0_i_37\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \addressM[1]\,
      I1 => rd21,
      I2 => rd20(29),
      O => \ALUResult[7]_INST_0_i_37_n_0\
    );
\ALUResult[7]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFEFEAAAAAAAA"
    )
        port map (
      I0 => \ALUResult[7]_INST_0_i_9_n_0\,
      I1 => \ALUResult[7]_INST_0_i_10_n_0\,
      I2 => \ALUResult[7]_INST_0_i_11_n_0\,
      I3 => \ALUResult[7]_INST_0_i_12_n_0\,
      I4 => \ALUResult[7]_INST_0_i_13_n_0\,
      I5 => \addressM[16]_0\,
      O => \ALUResult[7]_INST_0_i_4_n_0\
    );
\ALUResult[7]_INST_0_i_40\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \addressM[1]\,
      I1 => rd21,
      I2 => rd20(31),
      O => \ALUResult[7]_INST_0_i_40_n_0\
    );
\ALUResult[7]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[7]_INST_0_i_14_n_0\,
      I1 => \ALUResult[7]_INST_0_i_15_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[7]_INST_0_i_16_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[7]_INST_0_i_17_n_0\,
      O => \ALUResult[7]_INST_0_i_5_n_0\
    );
\ALUResult[7]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[7]_INST_0_i_18_n_0\,
      I1 => \ALUResult[7]_INST_0_i_19_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[7]_INST_0_i_20_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[7]_INST_0_i_21_n_0\,
      O => \ALUResult[7]_INST_0_i_6_n_0\
    );
\ALUResult[7]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \ALUResult[0]_INST_0_i_8_n_0\,
      I1 => \ALUResult[0]_INST_0_i_9_n_0\,
      I2 => \ALUResult[0]_INST_0_i_10_n_0\,
      I3 => \ALUResult[0]_INST_0_i_11_n_0\,
      I4 => \ALUResult[0]_INST_0_i_12_n_0\,
      I5 => SrcB(0),
      O => \ALUResult[7]_INST_0_i_7_n_0\
    );
\ALUResult[7]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[7]_INST_0_i_22_n_0\,
      I1 => \ALUResult[7]_INST_0_i_23_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[7]_INST_0_i_24_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[7]_INST_0_i_17_n_0\,
      O => \ALUResult[7]_INST_0_i_8_n_0\
    );
\ALUResult[7]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000EAEAFF008080"
    )
        port map (
      I0 => SrcB(7),
      I1 => rd11,
      I2 => rd10(7),
      I3 => \addressM[29]\(7),
      I4 => \addressM[0]_1\,
      I5 => \addressM[0]_2\,
      O => \ALUResult[7]_INST_0_i_9_n_0\
    );
\ALUResult[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0CCCCAAAACCCC"
    )
        port map (
      I0 => SrcB(8),
      I1 => \ALUResult[8]_INST_0_i_2_n_0\,
      I2 => \ALUResult[8]_INST_0_i_3_n_0\,
      I3 => \ALUResult[8]_INST_0_i_4_n_0\,
      I4 => \addressM[0]_0\,
      I5 => \addressM[0]\,
      O => \^aluresult[31]_inst_0_i_3\
    );
\ALUResult[8]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0808F808"
    )
        port map (
      I0 => rd20(8),
      I1 => rd21,
      I2 => \addressM[1]\,
      I3 => Instr(24),
      I4 => sel0(2),
      O => SrcB(8)
    );
\ALUResult[8]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A0A0F000C0C0"
    )
        port map (
      I0 => rd10(28),
      I1 => rd10(12),
      I2 => rd11,
      I3 => rd10(20),
      I4 => SrcB(3),
      I5 => SrcB(4),
      O => \ALUResult[8]_INST_0_i_10_n_0\
    );
\ALUResult[8]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A0A0F000C0C0"
    )
        port map (
      I0 => rd10(24),
      I1 => rd10(8),
      I2 => rd11,
      I3 => rd10(16),
      I4 => SrcB(3),
      I5 => SrcB(4),
      O => \ALUResult[8]_INST_0_i_11_n_0\
    );
\ALUResult[8]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \ALUResult[29]_INST_0_i_8_n_0\,
      I1 => \ALUResult[9]_INST_0_i_5_n_0\,
      I2 => \ALUResult[31]_INST_0_i_11_n_0\,
      I3 => \ALUResult[8]_INST_0_i_5_n_0\,
      I4 => \ALUResult[8]_INST_0_i_6_n_0\,
      O => \ALUResult[8]_INST_0_i_2_n_0\
    );
\ALUResult[8]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000EAEAFF008080"
    )
        port map (
      I0 => SrcB(8),
      I1 => rd11,
      I2 => rd10(8),
      I3 => \addressM[29]\(8),
      I4 => \addressM[0]_1\,
      I5 => \addressM[0]_2\,
      O => \ALUResult[8]_INST_0_i_3_n_0\
    );
\ALUResult[8]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A88A888A888A888"
    )
        port map (
      I0 => \addressM[16]_0\,
      I1 => \ALUResult[8]_INST_0_i_7_n_0\,
      I2 => SrcB(8),
      I3 => \addressM[16]\,
      I4 => rd10(8),
      I5 => rd11,
      O => \ALUResult[8]_INST_0_i_4_n_0\
    );
\ALUResult[8]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[8]_INST_0_i_8_n_0\,
      I1 => \ALUResult[8]_INST_0_i_9_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[8]_INST_0_i_10_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[8]_INST_0_i_11_n_0\,
      O => \ALUResult[8]_INST_0_i_5_n_0\
    );
\ALUResult[8]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF8F8800000000"
    )
        port map (
      I0 => \ALUResult[7]_INST_0_i_7_n_0\,
      I1 => \ALUResult[9]_INST_0_i_9_n_0\,
      I2 => \ALUResult[30]_INST_0_i_7_n_0\,
      I3 => \ALUResult[7]_INST_0_i_6_n_0\,
      I4 => \ALUResult[0]_INST_0_i_3_n_0\,
      I5 => \addressM[0]\,
      O => \ALUResult[8]_INST_0_i_6_n_0\
    );
\ALUResult[8]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F2000000220000"
    )
        port map (
      I0 => \ALUResult[9]_INST_0_i_10_n_0\,
      I1 => \ALUResult[30]_INST_0_i_7_n_0\,
      I2 => \ALUResult[7]_INST_0_i_13_n_0\,
      I3 => ALUControl(0),
      I4 => \ALUControl__0\(0),
      I5 => \ALUResult[7]_INST_0_i_7_n_0\,
      O => \ALUResult[8]_INST_0_i_7_n_0\
    );
\ALUResult[8]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A0A0F000C0C0"
    )
        port map (
      I0 => rd10(30),
      I1 => rd10(14),
      I2 => rd11,
      I3 => rd10(22),
      I4 => SrcB(3),
      I5 => SrcB(4),
      O => \ALUResult[8]_INST_0_i_8_n_0\
    );
\ALUResult[8]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A0A0F000C0C0"
    )
        port map (
      I0 => rd10(26),
      I1 => rd10(10),
      I2 => rd11,
      I3 => rd10(18),
      I4 => SrcB(3),
      I5 => SrcB(4),
      O => \ALUResult[8]_INST_0_i_9_n_0\
    );
\ALUResult[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0CCCCAAAACCCC"
    )
        port map (
      I0 => SrcB(9),
      I1 => \ALUResult[9]_INST_0_i_2_n_0\,
      I2 => \ALUResult[9]_INST_0_i_3_n_0\,
      I3 => \ALUResult[9]_INST_0_i_4_n_0\,
      I4 => \addressM[0]_0\,
      I5 => \addressM[0]\,
      O => \^aluresult\(6)
    );
\ALUResult[9]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0808F808"
    )
        port map (
      I0 => rd20(9),
      I1 => rd21,
      I2 => \addressM[1]\,
      I3 => Instr(25),
      I4 => sel0(2),
      O => SrcB(9)
    );
\ALUResult[9]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B080FFFFB0800000"
    )
        port map (
      I0 => \^srca\(2),
      I1 => SrcB(2),
      I2 => \ALUResult[31]_INST_0_i_10_n_0\,
      I3 => \^srca\(6),
      I4 => SrcB(1),
      I5 => \ALUResult[11]_INST_0_i_14_n_0\,
      O => \ALUResult[9]_INST_0_i_10_n_0\
    );
\ALUResult[9]_INST_0_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => rd10(29),
      I1 => SrcB(4),
      I2 => rd11,
      I3 => rd10(13),
      O => \ALUResult[9]_INST_0_i_11_n_0\
    );
\ALUResult[9]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \ALUResult[29]_INST_0_i_8_n_0\,
      I1 => \ALUResult[10]_INST_0_i_5_n_0\,
      I2 => \ALUResult[31]_INST_0_i_11_n_0\,
      I3 => \ALUResult[9]_INST_0_i_5_n_0\,
      I4 => \ALUResult[9]_INST_0_i_6_n_0\,
      O => \ALUResult[9]_INST_0_i_2_n_0\
    );
\ALUResult[9]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000EAEAFF008080"
    )
        port map (
      I0 => SrcB(9),
      I1 => rd11,
      I2 => rd10(9),
      I3 => \addressM[29]\(9),
      I4 => \addressM[0]_1\,
      I5 => \addressM[0]_2\,
      O => \ALUResult[9]_INST_0_i_3_n_0\
    );
\ALUResult[9]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A88A888A888A888"
    )
        port map (
      I0 => \addressM[16]_0\,
      I1 => \ALUResult[9]_INST_0_i_7_n_0\,
      I2 => SrcB(9),
      I3 => \addressM[16]\,
      I4 => rd10(9),
      I5 => rd11,
      O => \ALUResult[9]_INST_0_i_4_n_0\
    );
\ALUResult[9]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult[11]_INST_0_i_10_n_0\,
      I1 => SrcB(1),
      I2 => \ALUResult[9]_INST_0_i_8_n_0\,
      O => \ALUResult[9]_INST_0_i_5_n_0\
    );
\ALUResult[9]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF8F8800000000"
    )
        port map (
      I0 => \ALUResult[7]_INST_0_i_7_n_0\,
      I1 => \ALUResult[10]_INST_0_i_9_n_0\,
      I2 => \ALUResult[30]_INST_0_i_7_n_0\,
      I3 => \ALUResult[9]_INST_0_i_9_n_0\,
      I4 => \ALUResult[0]_INST_0_i_3_n_0\,
      I5 => \addressM[0]\,
      O => \ALUResult[9]_INST_0_i_6_n_0\
    );
\ALUResult[9]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F2000000220000"
    )
        port map (
      I0 => \ALUResult[10]_INST_0_i_10_n_0\,
      I1 => \ALUResult[30]_INST_0_i_7_n_0\,
      I2 => \ALUResult[9]_INST_0_i_10_n_0\,
      I3 => ALUControl(0),
      I4 => \ALUControl__0\(0),
      I5 => \ALUResult[7]_INST_0_i_7_n_0\,
      O => \ALUResult[9]_INST_0_i_7_n_0\
    );
\ALUResult[9]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7250FFFF72500000"
    )
        port map (
      I0 => SrcB(3),
      I1 => SrcB(4),
      I2 => \ALUResult[9]_INST_0_i_11_n_0\,
      I3 => \^srca\(21),
      I4 => SrcB(2),
      I5 => \ALUResult[7]_INST_0_i_23_n_0\,
      O => \ALUResult[9]_INST_0_i_8_n_0\
    );
\ALUResult[9]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALUResult[15]_INST_0_i_14_n_0\,
      I1 => \ALUResult[7]_INST_0_i_16_n_0\,
      I2 => SrcB(1),
      I3 => \ALUResult[7]_INST_0_i_14_n_0\,
      I4 => SrcB(2),
      I5 => \ALUResult[7]_INST_0_i_15_n_0\,
      O => \ALUResult[9]_INST_0_i_9_n_0\
    );
\WriteData[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(18),
      I1 => Instr(20),
      I2 => Instr(17),
      I3 => Instr(16),
      I4 => Instr(19),
      I5 => rd20(0),
      O => WriteData(0)
    );
\WriteData[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(18),
      I1 => Instr(20),
      I2 => Instr(17),
      I3 => Instr(16),
      I4 => Instr(19),
      I5 => rd20(10),
      O => WriteData(10)
    );
\WriteData[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(18),
      I1 => Instr(20),
      I2 => Instr(17),
      I3 => Instr(16),
      I4 => Instr(19),
      I5 => rd20(11),
      O => WriteData(11)
    );
\WriteData[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(18),
      I1 => Instr(20),
      I2 => Instr(17),
      I3 => Instr(16),
      I4 => Instr(19),
      I5 => rd20(12),
      O => WriteData(12)
    );
\WriteData[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(18),
      I1 => Instr(20),
      I2 => Instr(17),
      I3 => Instr(16),
      I4 => Instr(19),
      I5 => rd20(13),
      O => WriteData(13)
    );
\WriteData[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(18),
      I1 => Instr(20),
      I2 => Instr(17),
      I3 => Instr(16),
      I4 => Instr(19),
      I5 => rd20(14),
      O => WriteData(14)
    );
\WriteData[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(18),
      I1 => Instr(20),
      I2 => Instr(17),
      I3 => Instr(16),
      I4 => Instr(19),
      I5 => rd20(15),
      O => WriteData(15)
    );
\WriteData[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(18),
      I1 => Instr(20),
      I2 => Instr(17),
      I3 => Instr(16),
      I4 => Instr(19),
      I5 => rd20(16),
      O => WriteData(16)
    );
\WriteData[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(18),
      I1 => Instr(20),
      I2 => Instr(17),
      I3 => Instr(16),
      I4 => Instr(19),
      I5 => rd20(17),
      O => WriteData(17)
    );
\WriteData[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(18),
      I1 => Instr(20),
      I2 => Instr(17),
      I3 => Instr(16),
      I4 => Instr(19),
      I5 => rd20(18),
      O => WriteData(18)
    );
\WriteData[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(18),
      I1 => Instr(20),
      I2 => Instr(17),
      I3 => Instr(16),
      I4 => Instr(19),
      I5 => rd20(19),
      O => WriteData(19)
    );
\WriteData[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(18),
      I1 => Instr(20),
      I2 => Instr(17),
      I3 => Instr(16),
      I4 => Instr(19),
      I5 => rd20(1),
      O => WriteData(1)
    );
\WriteData[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(18),
      I1 => Instr(20),
      I2 => Instr(17),
      I3 => Instr(16),
      I4 => Instr(19),
      I5 => rd20(20),
      O => WriteData(20)
    );
\WriteData[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(18),
      I1 => Instr(20),
      I2 => Instr(17),
      I3 => Instr(16),
      I4 => Instr(19),
      I5 => rd20(21),
      O => WriteData(21)
    );
\WriteData[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(18),
      I1 => Instr(20),
      I2 => Instr(17),
      I3 => Instr(16),
      I4 => Instr(19),
      I5 => rd20(22),
      O => WriteData(22)
    );
\WriteData[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(18),
      I1 => Instr(20),
      I2 => Instr(17),
      I3 => Instr(16),
      I4 => Instr(19),
      I5 => rd20(23),
      O => WriteData(23)
    );
\WriteData[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(18),
      I1 => Instr(20),
      I2 => Instr(17),
      I3 => Instr(16),
      I4 => Instr(19),
      I5 => rd20(24),
      O => WriteData(24)
    );
\WriteData[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(18),
      I1 => Instr(20),
      I2 => Instr(17),
      I3 => Instr(16),
      I4 => Instr(19),
      I5 => rd20(25),
      O => WriteData(25)
    );
\WriteData[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(18),
      I1 => Instr(20),
      I2 => Instr(17),
      I3 => Instr(16),
      I4 => Instr(19),
      I5 => rd20(26),
      O => WriteData(26)
    );
\WriteData[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(18),
      I1 => Instr(20),
      I2 => Instr(17),
      I3 => Instr(16),
      I4 => Instr(19),
      I5 => rd20(27),
      O => WriteData(27)
    );
\WriteData[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(18),
      I1 => Instr(20),
      I2 => Instr(17),
      I3 => Instr(16),
      I4 => Instr(19),
      I5 => rd20(28),
      O => WriteData(28)
    );
\WriteData[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(18),
      I1 => Instr(20),
      I2 => Instr(17),
      I3 => Instr(16),
      I4 => Instr(19),
      I5 => rd20(29),
      O => WriteData(29)
    );
\WriteData[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(18),
      I1 => Instr(20),
      I2 => Instr(17),
      I3 => Instr(16),
      I4 => Instr(19),
      I5 => rd20(2),
      O => WriteData(2)
    );
\WriteData[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(18),
      I1 => Instr(20),
      I2 => Instr(17),
      I3 => Instr(16),
      I4 => Instr(19),
      I5 => rd20(30),
      O => WriteData(30)
    );
\WriteData[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(18),
      I1 => Instr(20),
      I2 => Instr(17),
      I3 => Instr(16),
      I4 => Instr(19),
      I5 => rd20(31),
      O => WriteData(31)
    );
\WriteData[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(18),
      I1 => Instr(20),
      I2 => Instr(17),
      I3 => Instr(16),
      I4 => Instr(19),
      I5 => rd20(3),
      O => WriteData(3)
    );
\WriteData[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(18),
      I1 => Instr(20),
      I2 => Instr(17),
      I3 => Instr(16),
      I4 => Instr(19),
      I5 => rd20(4),
      O => WriteData(4)
    );
\WriteData[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(18),
      I1 => Instr(20),
      I2 => Instr(17),
      I3 => Instr(16),
      I4 => Instr(19),
      I5 => rd20(5),
      O => WriteData(5)
    );
\WriteData[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(18),
      I1 => Instr(20),
      I2 => Instr(17),
      I3 => Instr(16),
      I4 => Instr(19),
      I5 => rd20(6),
      O => WriteData(6)
    );
\WriteData[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(18),
      I1 => Instr(20),
      I2 => Instr(17),
      I3 => Instr(16),
      I4 => Instr(19),
      I5 => rd20(7),
      O => WriteData(7)
    );
\WriteData[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(18),
      I1 => Instr(20),
      I2 => Instr(17),
      I3 => Instr(16),
      I4 => Instr(19),
      I5 => rd20(8),
      O => WriteData(8)
    );
\WriteData[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(18),
      I1 => Instr(20),
      I2 => Instr(17),
      I3 => Instr(16),
      I4 => Instr(19),
      I5 => rd20(9),
      O => WriteData(9)
    );
\q[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => immext(11),
      I1 => \^pcsrc\(0),
      O => \q[11]_i_2_n_0\
    );
\q[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7737000000000000"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(1),
      I2 => Instr(8),
      I3 => Instr(9),
      I4 => Instr(26),
      I5 => \^pcsrc\(0),
      O => \q[11]_i_3_n_0\
    );
\q[11]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7737000000000000"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(1),
      I2 => Instr(8),
      I3 => Instr(9),
      I4 => Instr(25),
      I5 => \^pcsrc\(0),
      O => \q[11]_i_4_n_0\
    );
\q[11]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7737000000000000"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(1),
      I2 => Instr(8),
      I3 => Instr(9),
      I4 => Instr(24),
      I5 => \^pcsrc\(0),
      O => \q[11]_i_5_n_0\
    );
\q[11]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F6F6F6060606F60"
    )
        port map (
      I0 => immext(11),
      I1 => \q_reg[11]_0\(3),
      I2 => \^pcsrc\(0),
      I3 => d2(10),
      I4 => \q_reg[3]_0\(0),
      I5 => \^aluresult[31]_inst_0_i_3_0\,
      O => \q[11]_i_6_n_0\
    );
\q[11]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F6F6F6060606F60"
    )
        port map (
      I0 => immext(10),
      I1 => \q_reg[11]_0\(2),
      I2 => \^pcsrc\(0),
      I3 => d2(9),
      I4 => \q_reg[3]_0\(0),
      I5 => \^aluresult[31]_inst_0_i_3_1\,
      O => \q[11]_i_7_n_0\
    );
\q[11]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F6F6F6060606F60"
    )
        port map (
      I0 => immext(9),
      I1 => \q_reg[11]_0\(1),
      I2 => \^pcsrc\(0),
      I3 => d2(8),
      I4 => \q_reg[3]_0\(0),
      I5 => \^aluresult\(6),
      O => \q[11]_i_8_n_0\
    );
\q[11]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F6F6F6060606F60"
    )
        port map (
      I0 => immext(8),
      I1 => \q_reg[11]_0\(0),
      I2 => \^pcsrc\(0),
      I3 => d2(7),
      I4 => \q_reg[3]_0\(0),
      I5 => \^aluresult[31]_inst_0_i_3\,
      O => \q[11]_i_9_n_0\
    );
\q[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA00"
    )
        port map (
      I0 => \q_reg[19]_0\,
      I1 => \q_reg[19]_1\,
      I2 => Instr(11),
      I3 => \^pcsrc\(0),
      O => \q[15]_i_2_n_0\
    );
\q[15]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA00"
    )
        port map (
      I0 => \q_reg[19]_0\,
      I1 => \q_reg[19]_1\,
      I2 => Instr(10),
      I3 => \^pcsrc\(0),
      O => \q[15]_i_3_n_0\
    );
\q[15]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA00"
    )
        port map (
      I0 => \q_reg[19]_0\,
      I1 => \q_reg[19]_1\,
      I2 => Instr(9),
      I3 => \^pcsrc\(0),
      O => \q[15]_i_4_n_0\
    );
\q[15]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA00"
    )
        port map (
      I0 => \q_reg[19]_0\,
      I1 => \q_reg[19]_1\,
      I2 => Instr(8),
      I3 => \^pcsrc\(0),
      O => \q[15]_i_5_n_0\
    );
\q[15]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F6F6F6060606F60"
    )
        port map (
      I0 => immext(15),
      I1 => \q_reg[15]_0\(3),
      I2 => \^pcsrc\(0),
      I3 => d2(14),
      I4 => \q_reg[3]_0\(0),
      I5 => \^aluresult\(10),
      O => \q[15]_i_6_n_0\
    );
\q[15]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F6F6F6060606F60"
    )
        port map (
      I0 => immext(14),
      I1 => \q_reg[15]_0\(2),
      I2 => \^pcsrc\(0),
      I3 => d2(13),
      I4 => \q_reg[3]_0\(0),
      I5 => \^aluresult\(9),
      O => \q[15]_i_7_n_0\
    );
\q[15]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F6F6F6060606F60"
    )
        port map (
      I0 => immext(13),
      I1 => \q_reg[15]_0\(1),
      I2 => \^pcsrc\(0),
      I3 => d2(12),
      I4 => \q_reg[3]_0\(0),
      I5 => \^aluresult\(8),
      O => \q[15]_i_8_n_0\
    );
\q[15]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F6F6F6060606F60"
    )
        port map (
      I0 => immext(12),
      I1 => \q_reg[15]_0\(0),
      I2 => \^pcsrc\(0),
      I3 => d2(11),
      I4 => \q_reg[3]_0\(0),
      I5 => \^aluresult\(7),
      O => \q[15]_i_9_n_0\
    );
\q[19]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA00"
    )
        port map (
      I0 => \q_reg[19]_0\,
      I1 => \q_reg[19]_1\,
      I2 => Instr(15),
      I3 => \^pcsrc\(0),
      O => \q[19]_i_2_n_0\
    );
\q[19]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA00"
    )
        port map (
      I0 => \q_reg[19]_0\,
      I1 => \q_reg[19]_1\,
      I2 => Instr(14),
      I3 => \^pcsrc\(0),
      O => \q[19]_i_3_n_0\
    );
\q[19]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA00"
    )
        port map (
      I0 => \q_reg[19]_0\,
      I1 => \q_reg[19]_1\,
      I2 => Instr(13),
      I3 => \^pcsrc\(0),
      O => \q[19]_i_4_n_0\
    );
\q[19]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA00"
    )
        port map (
      I0 => \q_reg[19]_0\,
      I1 => \q_reg[19]_1\,
      I2 => Instr(12),
      I3 => \^pcsrc\(0),
      O => \q[19]_i_5_n_0\
    );
\q[19]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F6F6F6060606F60"
    )
        port map (
      I0 => immext(19),
      I1 => \q_reg[19]_2\(3),
      I2 => \^pcsrc\(0),
      I3 => d2(18),
      I4 => \q_reg[3]_0\(0),
      I5 => \^aluresult\(14),
      O => \q[19]_i_6_n_0\
    );
\q[19]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F6F6F6060606F60"
    )
        port map (
      I0 => immext(18),
      I1 => \q_reg[19]_2\(2),
      I2 => \^pcsrc\(0),
      I3 => d2(17),
      I4 => \q_reg[3]_0\(0),
      I5 => \^aluresult\(13),
      O => \q[19]_i_7_n_0\
    );
\q[19]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F6F6F6060606F60"
    )
        port map (
      I0 => immext(17),
      I1 => \q_reg[19]_2\(1),
      I2 => \^pcsrc\(0),
      I3 => d2(16),
      I4 => \q_reg[3]_0\(0),
      I5 => \^aluresult\(12),
      O => \q[19]_i_8_n_0\
    );
\q[19]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F6F6F6060606F60"
    )
        port map (
      I0 => immext(16),
      I1 => \q_reg[19]_2\(0),
      I2 => \^pcsrc\(0),
      I3 => d2(15),
      I4 => \q_reg[3]_0\(0),
      I5 => \^aluresult\(11),
      O => \q[19]_i_9_n_0\
    );
\q[23]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F2220000"
    )
        port map (
      I0 => Instr(27),
      I1 => sel0(2),
      I2 => \q_reg[31]_0\,
      I3 => Instr(19),
      I4 => \^pcsrc\(0),
      O => \q[23]_i_2_n_0\
    );
\q[23]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F2220000"
    )
        port map (
      I0 => Instr(27),
      I1 => sel0(2),
      I2 => \q_reg[31]_0\,
      I3 => Instr(18),
      I4 => \^pcsrc\(0),
      O => \q[23]_i_3_n_0\
    );
\q[23]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F2220000"
    )
        port map (
      I0 => Instr(27),
      I1 => sel0(2),
      I2 => \q_reg[31]_0\,
      I3 => Instr(17),
      I4 => \^pcsrc\(0),
      O => \q[23]_i_4_n_0\
    );
\q[23]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F2220000"
    )
        port map (
      I0 => Instr(27),
      I1 => sel0(2),
      I2 => \q_reg[31]_0\,
      I3 => Instr(16),
      I4 => \^pcsrc\(0),
      O => \q[23]_i_5_n_0\
    );
\q[23]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F6F6F6060606F60"
    )
        port map (
      I0 => immext(23),
      I1 => \q_reg[23]_0\(3),
      I2 => \^pcsrc\(0),
      I3 => d2(22),
      I4 => \q_reg[3]_0\(0),
      I5 => \^aluresult\(18),
      O => \q[23]_i_6_n_0\
    );
\q[23]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F6F6F6060606F60"
    )
        port map (
      I0 => immext(22),
      I1 => \q_reg[23]_0\(2),
      I2 => \^pcsrc\(0),
      I3 => d2(21),
      I4 => \q_reg[3]_0\(0),
      I5 => \^aluresult\(17),
      O => \q[23]_i_7_n_0\
    );
\q[23]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F6F6F6060606F60"
    )
        port map (
      I0 => immext(21),
      I1 => \q_reg[23]_0\(1),
      I2 => \^pcsrc\(0),
      I3 => d2(20),
      I4 => \q_reg[3]_0\(0),
      I5 => \^aluresult\(16),
      O => \q[23]_i_8_n_0\
    );
\q[23]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F6F6F6060606F60"
    )
        port map (
      I0 => immext(20),
      I1 => \q_reg[23]_0\(0),
      I2 => \^pcsrc\(0),
      I3 => d2(19),
      I4 => \q_reg[3]_0\(0),
      I5 => \^aluresult\(15),
      O => \q[23]_i_9_n_0\
    );
\q[27]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F2220000"
    )
        port map (
      I0 => Instr(27),
      I1 => sel0(2),
      I2 => \q_reg[31]_0\,
      I3 => Instr(23),
      I4 => \^pcsrc\(0),
      O => \q[27]_i_2_n_0\
    );
\q[27]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F2220000"
    )
        port map (
      I0 => Instr(27),
      I1 => sel0(2),
      I2 => \q_reg[31]_0\,
      I3 => Instr(22),
      I4 => \^pcsrc\(0),
      O => \q[27]_i_3_n_0\
    );
\q[27]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F2220000"
    )
        port map (
      I0 => Instr(27),
      I1 => sel0(2),
      I2 => \q_reg[31]_0\,
      I3 => Instr(21),
      I4 => \^pcsrc\(0),
      O => \q[27]_i_4_n_0\
    );
\q[27]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F2220000"
    )
        port map (
      I0 => Instr(27),
      I1 => sel0(2),
      I2 => \q_reg[31]_0\,
      I3 => Instr(20),
      I4 => \^pcsrc\(0),
      O => \q[27]_i_5_n_0\
    );
\q[27]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F6F6F6060606F60"
    )
        port map (
      I0 => immext(27),
      I1 => \q_reg[27]_0\(3),
      I2 => \^pcsrc\(0),
      I3 => d2(26),
      I4 => \q_reg[3]_0\(0),
      I5 => \^aluresult\(22),
      O => \q[27]_i_6_n_0\
    );
\q[27]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F6F6F6060606F60"
    )
        port map (
      I0 => immext(26),
      I1 => \q_reg[27]_0\(2),
      I2 => \^pcsrc\(0),
      I3 => d2(25),
      I4 => \q_reg[3]_0\(0),
      I5 => \^aluresult\(21),
      O => \q[27]_i_7_n_0\
    );
\q[27]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F6F6F6060606F60"
    )
        port map (
      I0 => immext(25),
      I1 => \q_reg[27]_0\(1),
      I2 => \^pcsrc\(0),
      I3 => d2(24),
      I4 => \q_reg[3]_0\(0),
      I5 => \^aluresult\(20),
      O => \q[27]_i_8_n_0\
    );
\q[27]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F6F6F6060606F60"
    )
        port map (
      I0 => immext(24),
      I1 => \q_reg[27]_0\(0),
      I2 => \^pcsrc\(0),
      I3 => d2(23),
      I4 => \q_reg[3]_0\(0),
      I5 => \^aluresult\(19),
      O => \q[27]_i_9_n_0\
    );
\q[31]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020000000000000"
    )
        port map (
      I0 => \q[31]_i_19_n_0\,
      I1 => \q[31]_i_9_0\,
      I2 => \q[31]_i_20_n_0\,
      I3 => \^aluresult[31]_inst_0_i_6_0\,
      I4 => \q[31]_i_21_n_0\,
      I5 => \q[31]_i_22_n_0\,
      O => \q[31]_i_16_n_0\
    );
\q[31]_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A53C0000"
    )
        port map (
      I0 => CO(0),
      I1 => LT,
      I2 => Instr(8),
      I3 => Instr(9),
      I4 => Instr(10),
      O => \q[31]_i_17_n_0\
    );
\q[31]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000000000"
    )
        port map (
      I0 => \^aluresult\(17),
      I1 => \^aluresult\(18),
      I2 => \q[31]_i_23_n_0\,
      I3 => \^aluresult\(15),
      I4 => \^aluresult\(16),
      I5 => \q[31]_i_24_n_0\,
      O => \q[31]_i_19_n_0\
    );
\q[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F2220000"
    )
        port map (
      I0 => Instr(27),
      I1 => sel0(2),
      I2 => \q_reg[31]_0\,
      I3 => Instr(26),
      I4 => \^pcsrc\(0),
      O => \q[31]_i_2_n_0\
    );
\q[31]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^aluresult\(19),
      I1 => \^aluresult\(20),
      I2 => \^aluresult\(11),
      I3 => \^aluresult\(12),
      I4 => \^aluresult\(14),
      I5 => \^aluresult\(13),
      O => \q[31]_i_20_n_0\
    );
\q[31]_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \^aluresult\(6),
      I1 => \^aluresult\(7),
      I2 => \^aluresult\(8),
      I3 => \^aluresult\(9),
      I4 => \^aluresult[1]_inst_0_i_4_0\,
      O => \q[31]_i_21_n_0\
    );
\q[31]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => \q[31]_i_25_n_0\,
      I1 => \^aluresult[31]_inst_0_i_3\,
      I2 => \^aluresult[31]_inst_0_i_3_0\,
      I3 => \^aluresult[31]_inst_0_i_3_1\,
      I4 => \^aluresult[0]_inst_0_i_3_0\,
      I5 => \q[31]_i_26_n_0\,
      O => \q[31]_i_22_n_0\
    );
\q[31]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000030103"
    )
        port map (
      I0 => \q[31]_i_27_n_0\,
      I1 => \q[31]_i_28_n_0\,
      I2 => \q[31]_i_29_n_0\,
      I3 => \q[31]_i_25_0\,
      I4 => \q[31]_i_31_n_0\,
      I5 => \q[31]_i_32_n_0\,
      O => \q[31]_i_23_n_0\
    );
\q[31]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000030103"
    )
        port map (
      I0 => \q[31]_i_33_n_0\,
      I1 => \q[31]_i_34_n_0\,
      I2 => \q[31]_i_35_n_0\,
      I3 => \q[31]_i_25_0\,
      I4 => \q[31]_i_36_n_0\,
      I5 => \q[31]_i_37_n_0\,
      O => \q[31]_i_24_n_0\
    );
\q[31]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^aluresult\(2),
      I1 => \^aluresult\(1),
      I2 => \q[31]_i_38_n_0\,
      I3 => \q[31]_i_39_n_0\,
      I4 => \q[31]_i_40_n_0\,
      I5 => \q[31]_i_41_n_0\,
      O => \q[31]_i_25_n_0\
    );
\q[31]_i_26\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^aluresult\(5),
      I1 => \^aluresult\(4),
      I2 => \^aluresult\(3),
      O => \q[31]_i_26_n_0\
    );
\q[31]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBAEAAAAAAAAA"
    )
        port map (
      I0 => \ALUResult[28]_INST_0_i_3_n_0\,
      I1 => \^srca\(28),
      I2 => \addressM[16]\,
      I3 => SrcB(28),
      I4 => \ALUResult[28]_INST_0_i_7_n_0\,
      I5 => \addressM[16]_0\,
      O => \q[31]_i_27_n_0\
    );
\q[31]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFEAEAEA"
    )
        port map (
      I0 => \ALUResult[28]_INST_0_i_6_n_0\,
      I1 => \ALUResult[28]_INST_0_i_5_n_0\,
      I2 => \ALUResult[31]_INST_0_i_11_n_0\,
      I3 => \ALUResult[29]_INST_0_i_5_n_0\,
      I4 => \ALUResult[29]_INST_0_i_8_n_0\,
      I5 => \addressM[0]_0\,
      O => \q[31]_i_28_n_0\
    );
\q[31]_i_29\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \addressM[0]_0\,
      I1 => \addressM[0]\,
      I2 => SrcB(28),
      O => \q[31]_i_29_n_0\
    );
\q[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F2220000"
    )
        port map (
      I0 => Instr(27),
      I1 => sel0(2),
      I2 => \q_reg[31]_0\,
      I3 => Instr(25),
      I4 => \^pcsrc\(0),
      O => \q[31]_i_3_n_0\
    );
\q[31]_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBAEAAAAAAAAA"
    )
        port map (
      I0 => \ALUResult[29]_INST_0_i_3_n_0\,
      I1 => \^srca\(29),
      I2 => \addressM[16]\,
      I3 => SrcB(29),
      I4 => \ALUResult[29]_INST_0_i_12_n_0\,
      I5 => \addressM[16]_0\,
      O => \q[31]_i_31_n_0\
    );
\q[31]_i_32\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00EEF0AA"
    )
        port map (
      I0 => \q[31]_i_42_n_0\,
      I1 => data8(29),
      I2 => SrcB(29),
      I3 => \addressM[0]_0\,
      I4 => \addressM[0]\,
      O => \q[31]_i_32_n_0\
    );
\q[31]_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBAEAAAAAAAAA"
    )
        port map (
      I0 => \ALUResult[26]_INST_0_i_3_n_0\,
      I1 => \^srca\(26),
      I2 => \addressM[16]\,
      I3 => SrcB(26),
      I4 => \ALUResult[26]_INST_0_i_7_n_0\,
      I5 => \addressM[16]_0\,
      O => \q[31]_i_33_n_0\
    );
\q[31]_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFEAEAEA"
    )
        port map (
      I0 => \ALUResult[26]_INST_0_i_6_n_0\,
      I1 => \ALUResult[26]_INST_0_i_5_n_0\,
      I2 => \ALUResult[31]_INST_0_i_11_n_0\,
      I3 => \ALUResult[27]_INST_0_i_5_n_0\,
      I4 => \ALUResult[29]_INST_0_i_8_n_0\,
      I5 => \addressM[0]_0\,
      O => \q[31]_i_34_n_0\
    );
\q[31]_i_35\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \addressM[0]_0\,
      I1 => \addressM[0]\,
      I2 => SrcB(26),
      O => \q[31]_i_35_n_0\
    );
\q[31]_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBAEAAAAAAAAA"
    )
        port map (
      I0 => \ALUResult[27]_INST_0_i_3_n_0\,
      I1 => \^srca\(27),
      I2 => \addressM[16]\,
      I3 => SrcB(27),
      I4 => \ALUResult[27]_INST_0_i_7_n_0\,
      I5 => \addressM[16]_0\,
      O => \q[31]_i_36_n_0\
    );
\q[31]_i_37\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00EEF0AA"
    )
        port map (
      I0 => \q[31]_i_44_n_0\,
      I1 => data8(27),
      I2 => SrcB(27),
      I3 => \addressM[0]_0\,
      I4 => \addressM[0]\,
      O => \q[31]_i_37_n_0\
    );
\q[31]_i_38\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00EEF0AA"
    )
        port map (
      I0 => \q[31]_i_46_n_0\,
      I1 => data8(2),
      I2 => SrcB(2),
      I3 => \addressM[0]_0\,
      I4 => \addressM[0]\,
      O => \q[31]_i_38_n_0\
    );
\q[31]_i_39\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA8880"
    )
        port map (
      I0 => \q[31]_i_25_0\,
      I1 => \addressM[16]_0\,
      I2 => \q[31]_i_48_n_0\,
      I3 => \q[31]_i_49_n_0\,
      I4 => \ALUResult[2]_INST_0_i_3_n_0\,
      O => \q[31]_i_39_n_0\
    );
\q[31]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F2220000"
    )
        port map (
      I0 => Instr(27),
      I1 => sel0(2),
      I2 => \q_reg[31]_0\,
      I3 => Instr(24),
      I4 => \^pcsrc\(0),
      O => \q[31]_i_4_n_0\
    );
\q[31]_i_40\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00EEF0AA"
    )
        port map (
      I0 => \q[31]_i_50_n_0\,
      I1 => data8(15),
      I2 => SrcB(15),
      I3 => \addressM[0]_0\,
      I4 => \addressM[0]\,
      O => \q[31]_i_40_n_0\
    );
\q[31]_i_41\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA8880"
    )
        port map (
      I0 => \q[31]_i_25_0\,
      I1 => \addressM[16]_0\,
      I2 => \ALUResult[15]_INST_0_i_7_n_0\,
      I3 => \q[31]_i_52_n_0\,
      I4 => \ALUResult[15]_INST_0_i_3_n_0\,
      O => \q[31]_i_41_n_0\
    );
\q[31]_i_42\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000008080FF80"
    )
        port map (
      I0 => \ALUResult[7]_INST_0_i_7_n_0\,
      I1 => \ALUResult[29]_INST_0_i_7_n_0\,
      I2 => \ALUResult[29]_INST_0_i_6_n_0\,
      I3 => \ALUResult[29]_INST_0_i_5_n_0\,
      I4 => \ALUResult[30]_INST_0_i_7_n_0\,
      I5 => \addressM[0]\,
      O => \q[31]_i_42_n_0\
    );
\q[31]_i_43\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAEAEAE"
    )
        port map (
      I0 => \ALUResult[0]_INST_0_i_3_n_0\,
      I1 => \ALUResult[29]_INST_0_i_14_n_0\,
      I2 => \ALUResult[30]_INST_0_i_7_n_0\,
      I3 => \ALUResult[30]_INST_0_i_8_n_0\,
      I4 => \ALUResult[7]_INST_0_i_7_n_0\,
      O => data8(29)
    );
\q[31]_i_44\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F222"
    )
        port map (
      I0 => \ALUResult[27]_INST_0_i_5_n_0\,
      I1 => \ALUResult[30]_INST_0_i_7_n_0\,
      I2 => \ALUResult[28]_INST_0_i_5_n_0\,
      I3 => \ALUResult[7]_INST_0_i_7_n_0\,
      I4 => \addressM[0]\,
      O => \q[31]_i_44_n_0\
    );
\q[31]_i_45\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAEAEAE"
    )
        port map (
      I0 => \ALUResult[0]_INST_0_i_3_n_0\,
      I1 => \ALUResult[27]_INST_0_i_8_n_0\,
      I2 => \ALUResult[30]_INST_0_i_7_n_0\,
      I3 => \ALUResult[28]_INST_0_i_8_n_0\,
      I4 => \ALUResult[7]_INST_0_i_7_n_0\,
      O => data8(27)
    );
\q[31]_i_46\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F222"
    )
        port map (
      I0 => \ALUResult[2]_INST_0_i_6_n_0\,
      I1 => \ALUResult[30]_INST_0_i_7_n_0\,
      I2 => \ALUResult[3]_INST_0_i_7_n_0\,
      I3 => \ALUResult[7]_INST_0_i_7_n_0\,
      I4 => \addressM[0]\,
      O => \q[31]_i_46_n_0\
    );
\q[31]_i_47\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAEAEAE"
    )
        port map (
      I0 => \ALUResult[0]_INST_0_i_3_n_0\,
      I1 => \ALUResult[2]_INST_0_i_11_n_0\,
      I2 => \ALUResult[30]_INST_0_i_7_n_0\,
      I3 => \ALUResult[3]_INST_0_i_6_n_0\,
      I4 => \ALUResult[7]_INST_0_i_7_n_0\,
      O => data8(2)
    );
\q[31]_i_48\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF088808880888"
    )
        port map (
      I0 => SrcB(2),
      I1 => \addressM[16]\,
      I2 => rd10(2),
      I3 => rd11,
      I4 => \ALUResult[3]_INST_0_i_13_n_0\,
      I5 => \ALUResult[7]_INST_0_i_12_n_0\,
      O => \q[31]_i_48_n_0\
    );
\q[31]_i_49\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000088880000F888"
    )
        port map (
      I0 => \addressM[16]\,
      I1 => \^srca\(2),
      I2 => \ALUResult[31]_INST_0_i_19_n_0\,
      I3 => \q[31]_i_53_n_0\,
      I4 => SrcB(2),
      I5 => SrcB(1),
      O => \q[31]_i_49_n_0\
    );
\q[31]_i_50\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F222"
    )
        port map (
      I0 => \ALUResult[15]_INST_0_i_5_n_0\,
      I1 => \ALUResult[30]_INST_0_i_7_n_0\,
      I2 => \ALUResult[16]_INST_0_i_5_n_0\,
      I3 => \ALUResult[7]_INST_0_i_7_n_0\,
      I4 => \addressM[0]\,
      O => \q[31]_i_50_n_0\
    );
\q[31]_i_51\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAEAEAE"
    )
        port map (
      I0 => \ALUResult[0]_INST_0_i_3_n_0\,
      I1 => \ALUResult[15]_INST_0_i_12_n_0\,
      I2 => \ALUResult[30]_INST_0_i_7_n_0\,
      I3 => \ALUResult[16]_INST_0_i_12_n_0\,
      I4 => \ALUResult[7]_INST_0_i_7_n_0\,
      O => data8(15)
    );
\q[31]_i_52\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4888"
    )
        port map (
      I0 => SrcB(15),
      I1 => \addressM[16]\,
      I2 => rd10(15),
      I3 => rd11,
      O => \q[31]_i_52_n_0\
    );
\q[31]_i_53\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => SrcB(4),
      I1 => SrcB(3),
      I2 => rd10(1),
      I3 => rd11,
      O => \q[31]_i_53_n_0\
    );
\q[31]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F6F6F6060606F60"
    )
        port map (
      I0 => immext(28),
      I1 => \q_reg[31]_1\(0),
      I2 => \^pcsrc\(0),
      I3 => d2(27),
      I4 => \q_reg[3]_0\(0),
      I5 => \^aluresult\(23),
      O => \q[31]_i_8_n_0\
    );
\q[31]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFABAEAAAAAAAA"
    )
        port map (
      I0 => \q[31]_i_5\,
      I1 => Instr(8),
      I2 => Instr(10),
      I3 => \q[31]_i_16_n_0\,
      I4 => \q[31]_i_17_n_0\,
      I5 => \q[31]_i_5_0\,
      O => \^pcsrc\(0)
    );
\q[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD14C90000000000"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => Instr(19),
      I4 => Instr(6),
      I5 => \^pcsrc\(0),
      O => \q[3]_i_2_n_0\
    );
\q[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD14C90000000000"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => Instr(18),
      I4 => Instr(5),
      I5 => \^pcsrc\(0),
      O => \q[3]_i_3_n_0\
    );
\q[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD14C90000000000"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => Instr(17),
      I4 => Instr(4),
      I5 => \^pcsrc\(0),
      O => \q[3]_i_4_n_0\
    );
\q[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80B2809000000000"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(2),
      I2 => Instr(16),
      I3 => sel0(1),
      I4 => Instr(3),
      I5 => \^pcsrc\(0),
      O => \q[3]_i_5_n_0\
    );
\q[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F6F6F6060606F60"
    )
        port map (
      I0 => immext(3),
      I1 => DI(3),
      I2 => \^pcsrc\(0),
      I3 => d2(2),
      I4 => \q_reg[3]_0\(0),
      I5 => \^aluresult\(1),
      O => \q[3]_i_6_n_0\
    );
\q[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F6F6F6060606F60"
    )
        port map (
      I0 => immext(2),
      I1 => DI(2),
      I2 => \^pcsrc\(0),
      I3 => d2(1),
      I4 => \q_reg[3]_0\(0),
      I5 => \^aluresult\(0),
      O => \q[3]_i_7_n_0\
    );
\q[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F6F6F6060606F60"
    )
        port map (
      I0 => immext(1),
      I1 => DI(1),
      I2 => \^pcsrc\(0),
      I3 => d2(0),
      I4 => \q_reg[3]_0\(0),
      I5 => \^aluresult[1]_inst_0_i_4_0\,
      O => \q[3]_i_8_n_0\
    );
\q[3]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55CFAAC0"
    )
        port map (
      I0 => immext(0),
      I1 => \^aluresult[0]_inst_0_i_3_0\,
      I2 => \q_reg[3]_0\(0),
      I3 => \^pcsrc\(0),
      I4 => DI(0),
      O => \q[3]_i_9_n_0\
    );
\q[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7737000000000000"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(1),
      I2 => Instr(8),
      I3 => Instr(9),
      I4 => Instr(23),
      I5 => \^pcsrc\(0),
      O => \q[7]_i_2_n_0\
    );
\q[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7737000000000000"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(1),
      I2 => Instr(8),
      I3 => Instr(9),
      I4 => Instr(22),
      I5 => \^pcsrc\(0),
      O => \q[7]_i_3_n_0\
    );
\q[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7737000000000000"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(1),
      I2 => Instr(8),
      I3 => Instr(9),
      I4 => Instr(21),
      I5 => \^pcsrc\(0),
      O => \q[7]_i_4_n_0\
    );
\q[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD14C90000000000"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => Instr(20),
      I4 => Instr(7),
      I5 => \^pcsrc\(0),
      O => \q[7]_i_5_n_0\
    );
\q[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F6F6F6060606F60"
    )
        port map (
      I0 => immext(7),
      I1 => \q_reg[7]_0\(3),
      I2 => \^pcsrc\(0),
      I3 => d2(6),
      I4 => \q_reg[3]_0\(0),
      I5 => \^aluresult\(5),
      O => \q[7]_i_6_n_0\
    );
\q[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F6F6F6060606F60"
    )
        port map (
      I0 => immext(6),
      I1 => \q_reg[7]_0\(2),
      I2 => \^pcsrc\(0),
      I3 => d2(5),
      I4 => \q_reg[3]_0\(0),
      I5 => \^aluresult\(4),
      O => \q[7]_i_7_n_0\
    );
\q[7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F6F6F6060606F60"
    )
        port map (
      I0 => immext(5),
      I1 => \q_reg[7]_0\(1),
      I2 => \^pcsrc\(0),
      I3 => d2(4),
      I4 => \q_reg[3]_0\(0),
      I5 => \^aluresult\(3),
      O => \q[7]_i_8_n_0\
    );
\q[7]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F6F6F6060606F60"
    )
        port map (
      I0 => immext(4),
      I1 => \q_reg[7]_0\(0),
      I2 => \^pcsrc\(0),
      I3 => d2(3),
      I4 => \q_reg[3]_0\(0),
      I5 => \^aluresult\(2),
      O => \q[7]_i_9_n_0\
    );
\q_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \q_reg[7]_i_1_n_0\,
      CO(3) => \q_reg[11]_i_1_n_0\,
      CO(2) => \q_reg[11]_i_1_n_1\,
      CO(1) => \q_reg[11]_i_1_n_2\,
      CO(0) => \q_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \q[11]_i_2_n_0\,
      DI(2) => \q[11]_i_3_n_0\,
      DI(1) => \q[11]_i_4_n_0\,
      DI(0) => \q[11]_i_5_n_0\,
      O(3 downto 0) => \q_reg[11]\(3 downto 0),
      S(3) => \q[11]_i_6_n_0\,
      S(2) => \q[11]_i_7_n_0\,
      S(1) => \q[11]_i_8_n_0\,
      S(0) => \q[11]_i_9_n_0\
    );
\q_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \q_reg[11]_i_1_n_0\,
      CO(3) => \q_reg[15]_i_1_n_0\,
      CO(2) => \q_reg[15]_i_1_n_1\,
      CO(1) => \q_reg[15]_i_1_n_2\,
      CO(0) => \q_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \q[15]_i_2_n_0\,
      DI(2) => \q[15]_i_3_n_0\,
      DI(1) => \q[15]_i_4_n_0\,
      DI(0) => \q[15]_i_5_n_0\,
      O(3 downto 0) => \q_reg[15]\(3 downto 0),
      S(3) => \q[15]_i_6_n_0\,
      S(2) => \q[15]_i_7_n_0\,
      S(1) => \q[15]_i_8_n_0\,
      S(0) => \q[15]_i_9_n_0\
    );
\q_reg[19]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \q_reg[15]_i_1_n_0\,
      CO(3) => \q_reg[19]_i_1_n_0\,
      CO(2) => \q_reg[19]_i_1_n_1\,
      CO(1) => \q_reg[19]_i_1_n_2\,
      CO(0) => \q_reg[19]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \q[19]_i_2_n_0\,
      DI(2) => \q[19]_i_3_n_0\,
      DI(1) => \q[19]_i_4_n_0\,
      DI(0) => \q[19]_i_5_n_0\,
      O(3 downto 0) => \q_reg[19]\(3 downto 0),
      S(3) => \q[19]_i_6_n_0\,
      S(2) => \q[19]_i_7_n_0\,
      S(1) => \q[19]_i_8_n_0\,
      S(0) => \q[19]_i_9_n_0\
    );
\q_reg[23]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \q_reg[19]_i_1_n_0\,
      CO(3) => \q_reg[23]_i_1_n_0\,
      CO(2) => \q_reg[23]_i_1_n_1\,
      CO(1) => \q_reg[23]_i_1_n_2\,
      CO(0) => \q_reg[23]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \q[23]_i_2_n_0\,
      DI(2) => \q[23]_i_3_n_0\,
      DI(1) => \q[23]_i_4_n_0\,
      DI(0) => \q[23]_i_5_n_0\,
      O(3 downto 0) => \q_reg[23]\(3 downto 0),
      S(3) => \q[23]_i_6_n_0\,
      S(2) => \q[23]_i_7_n_0\,
      S(1) => \q[23]_i_8_n_0\,
      S(0) => \q[23]_i_9_n_0\
    );
\q_reg[27]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \q_reg[23]_i_1_n_0\,
      CO(3) => \q_reg[27]_i_1_n_0\,
      CO(2) => \q_reg[27]_i_1_n_1\,
      CO(1) => \q_reg[27]_i_1_n_2\,
      CO(0) => \q_reg[27]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \q[27]_i_2_n_0\,
      DI(2) => \q[27]_i_3_n_0\,
      DI(1) => \q[27]_i_4_n_0\,
      DI(0) => \q[27]_i_5_n_0\,
      O(3 downto 0) => \q_reg[27]\(3 downto 0),
      S(3) => \q[27]_i_6_n_0\,
      S(2) => \q[27]_i_7_n_0\,
      S(1) => \q[27]_i_8_n_0\,
      S(0) => \q[27]_i_9_n_0\
    );
\q_reg[31]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \q_reg[27]_i_1_n_0\,
      CO(3) => \NLW_q_reg[31]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \q_reg[31]_i_1_n_1\,
      CO(1) => \q_reg[31]_i_1_n_2\,
      CO(0) => \q_reg[31]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \q[31]_i_2_n_0\,
      DI(1) => \q[31]_i_3_n_0\,
      DI(0) => \q[31]_i_4_n_0\,
      O(3 downto 0) => \q_reg[31]\(3 downto 0),
      S(3 downto 1) => S(2 downto 0),
      S(0) => \q[31]_i_8_n_0\
    );
\q_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \q_reg[3]_i_1_n_0\,
      CO(2) => \q_reg[3]_i_1_n_1\,
      CO(1) => \q_reg[3]_i_1_n_2\,
      CO(0) => \q_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \q[3]_i_2_n_0\,
      DI(2) => \q[3]_i_3_n_0\,
      DI(1) => \q[3]_i_4_n_0\,
      DI(0) => \q[3]_i_5_n_0\,
      O(3 downto 0) => \q_reg[3]\(3 downto 0),
      S(3) => \q[3]_i_6_n_0\,
      S(2) => \q[3]_i_7_n_0\,
      S(1) => \q[3]_i_8_n_0\,
      S(0) => \q[3]_i_9_n_0\
    );
\q_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \q_reg[3]_i_1_n_0\,
      CO(3) => \q_reg[7]_i_1_n_0\,
      CO(2) => \q_reg[7]_i_1_n_1\,
      CO(1) => \q_reg[7]_i_1_n_2\,
      CO(0) => \q_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \q[7]_i_2_n_0\,
      DI(2) => \q[7]_i_3_n_0\,
      DI(1) => \q[7]_i_4_n_0\,
      DI(0) => \q[7]_i_5_n_0\,
      O(3 downto 0) => \q_reg[7]\(3 downto 0),
      S(3) => \q[7]_i_6_n_0\,
      S(2) => \q[7]_i_7_n_0\,
      S(1) => \q[7]_i_8_n_0\,
      S(0) => \q[7]_i_9_n_0\
    );
rf_reg_r1_0_31_0_5: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => Instr(15 downto 11),
      ADDRB(4 downto 0) => Instr(15 downto 11),
      ADDRC(4 downto 0) => Instr(15 downto 11),
      ADDRD(4 downto 0) => Instr(7 downto 3),
      DIA(1 downto 0) => \writeDataM[31]\(1 downto 0),
      DIB(1 downto 0) => \writeDataM[31]\(3 downto 2),
      DIC(1 downto 0) => \writeDataM[31]\(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd10(1 downto 0),
      DOB(1 downto 0) => rd10(3 downto 2),
      DOC(1 downto 0) => rd10(5 downto 4),
      DOD(1 downto 0) => NLW_rf_reg_r1_0_31_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => we3
    );
rf_reg_r1_0_31_0_5_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(1),
      I2 => Instr(2),
      O => we3
    );
rf_reg_r1_0_31_0_5_i_10: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAACC"
    )
        port map (
      I0 => \loadext/aligned_data__39\(3),
      I1 => \^aluresult\(1),
      I2 => ReadData(3),
      I3 => \^s_1\(0),
      I4 => Instr(9),
      O => \readDataM[3]\
    );
rf_reg_r1_0_31_0_5_i_11: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAACC"
    )
        port map (
      I0 => \loadext/aligned_data__39\(2),
      I1 => \^aluresult\(0),
      I2 => ReadData(2),
      I3 => \^s_1\(0),
      I4 => Instr(9),
      O => \readDataM[2]\
    );
rf_reg_r1_0_31_0_5_i_12: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAACC"
    )
        port map (
      I0 => \loadext/aligned_data__39\(5),
      I1 => \^aluresult\(3),
      I2 => ReadData(5),
      I3 => \^s_1\(0),
      I4 => Instr(9),
      O => \readDataM[5]\
    );
rf_reg_r1_0_31_0_5_i_13: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAACC"
    )
        port map (
      I0 => \loadext/aligned_data__39\(4),
      I1 => \^aluresult\(2),
      I2 => ReadData(4),
      I3 => \^s_1\(0),
      I4 => Instr(9),
      O => \readDataM[4]\
    );
rf_reg_r1_0_31_0_5_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00CCCCF0F0AAAA"
    )
        port map (
      I0 => ReadData(9),
      I1 => ReadData(25),
      I2 => ReadData(1),
      I3 => ReadData(17),
      I4 => rf_reg_r1_0_31_0_5_i_20_n_0,
      I5 => \^aluresult[1]_inst_0_i_4_0\,
      O => \loadext/aligned_data__39\(1)
    );
rf_reg_r1_0_31_0_5_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00CCCCF0F0AAAA"
    )
        port map (
      I0 => ReadData(8),
      I1 => ReadData(24),
      I2 => ReadData(0),
      I3 => ReadData(16),
      I4 => rf_reg_r1_0_31_0_5_i_20_n_0,
      I5 => \^aluresult[1]_inst_0_i_4_0\,
      O => \loadext/aligned_data__39\(0)
    );
rf_reg_r1_0_31_0_5_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00CCCCF0F0AAAA"
    )
        port map (
      I0 => ReadData(11),
      I1 => ReadData(27),
      I2 => ReadData(3),
      I3 => ReadData(19),
      I4 => rf_reg_r1_0_31_0_5_i_20_n_0,
      I5 => \^aluresult[1]_inst_0_i_4_0\,
      O => \loadext/aligned_data__39\(3)
    );
rf_reg_r1_0_31_0_5_i_17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00CCCCF0F0AAAA"
    )
        port map (
      I0 => ReadData(10),
      I1 => ReadData(26),
      I2 => ReadData(2),
      I3 => ReadData(18),
      I4 => rf_reg_r1_0_31_0_5_i_20_n_0,
      I5 => \^aluresult[1]_inst_0_i_4_0\,
      O => \loadext/aligned_data__39\(2)
    );
rf_reg_r1_0_31_0_5_i_18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00CCCCF0F0AAAA"
    )
        port map (
      I0 => ReadData(13),
      I1 => ReadData(29),
      I2 => ReadData(5),
      I3 => ReadData(21),
      I4 => rf_reg_r1_0_31_0_5_i_20_n_0,
      I5 => \^aluresult[1]_inst_0_i_4_0\,
      O => \loadext/aligned_data__39\(5)
    );
rf_reg_r1_0_31_0_5_i_19: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00CCCCF0F0AAAA"
    )
        port map (
      I0 => ReadData(12),
      I1 => ReadData(28),
      I2 => ReadData(4),
      I3 => ReadData(20),
      I4 => rf_reg_r1_0_31_0_5_i_20_n_0,
      I5 => \^aluresult[1]_inst_0_i_4_0\,
      O => \loadext/aligned_data__39\(4)
    );
rf_reg_r1_0_31_0_5_i_20: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => Instr(8),
      I1 => \^aluresult[0]_inst_0_i_3_0\,
      O => rf_reg_r1_0_31_0_5_i_20_n_0
    );
rf_reg_r1_0_31_0_5_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E4FFE400"
    )
        port map (
      I0 => Instr(9),
      I1 => \loadext/aligned_data__39\(1),
      I2 => ReadData(1),
      I3 => \^s_1\(0),
      I4 => \^aluresult[1]_inst_0_i_4_0\,
      O => \readDataM[1]\
    );
rf_reg_r1_0_31_0_5_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAACC"
    )
        port map (
      I0 => \loadext/aligned_data__39\(0),
      I1 => \^aluresult[0]_inst_0_i_3_0\,
      I2 => ReadData(0),
      I3 => \^s_1\(0),
      I4 => Instr(9),
      O => \readDataM[0]\
    );
rf_reg_r1_0_31_12_17: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => Instr(15 downto 11),
      ADDRB(4 downto 0) => Instr(15 downto 11),
      ADDRC(4 downto 0) => Instr(15 downto 11),
      ADDRD(4 downto 0) => Instr(7 downto 3),
      DIA(1 downto 0) => wd3(13 downto 12),
      DIB(1 downto 0) => wd3(15 downto 14),
      DIC(1 downto 0) => wd3(17 downto 16),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd10(13 downto 12),
      DOB(1 downto 0) => rd10(15 downto 14),
      DOC(1 downto 0) => rd10(17 downto 16),
      DOD(1 downto 0) => NLW_rf_reg_r1_0_31_12_17_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => we3
    );
rf_reg_r1_0_31_12_17_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAC0FACF0AC00AC"
    )
        port map (
      I0 => \loadext/ExtendedReadData__56\(13),
      I1 => \^aluresult\(8),
      I2 => \^s_1\(0),
      I3 => \^s_1\(1),
      I4 => rf_reg_r2_0_31_12_17_0(5),
      I5 => d2(12),
      O => wd3(13)
    );
rf_reg_r1_0_31_12_17_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDC100000DC10"
    )
        port map (
      I0 => Instr(10),
      I1 => Instr(8),
      I2 => \loadext/aligned_data__39\(7),
      I3 => rf_reg_r1_0_31_12_17_i_19_n_0,
      I4 => Instr(9),
      I5 => ReadData(14),
      O => \loadext/ExtendedReadData__56\(14)
    );
rf_reg_r1_0_31_12_17_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0404040000000400"
    )
        port map (
      I0 => Instr(10),
      I1 => \^s_1\(0),
      I2 => Instr(9),
      I3 => \loadext/aligned_data__39\(7),
      I4 => Instr(8),
      I5 => rf_reg_r1_0_31_12_17_i_18_n_0,
      O => \^readdatam[15]\
    );
rf_reg_r1_0_31_12_17_i_13: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A20000"
    )
        port map (
      I0 => Instr(9),
      I1 => Instr(1),
      I2 => Instr(0),
      I3 => Instr(2),
      I4 => ReadData(17),
      O => rf_reg_r1_0_31_12_17_i_13_n_0
    );
rf_reg_r1_0_31_12_17_i_15: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A20000"
    )
        port map (
      I0 => Instr(9),
      I1 => Instr(1),
      I2 => Instr(0),
      I3 => Instr(2),
      I4 => ReadData(16),
      O => rf_reg_r1_0_31_12_17_i_15_n_0
    );
rf_reg_r1_0_31_12_17_i_16: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ReadData(29),
      I1 => \^aluresult[1]_inst_0_i_4_0\,
      I2 => ReadData(13),
      O => rf_reg_r1_0_31_12_17_i_16_n_0
    );
rf_reg_r1_0_31_12_17_i_17: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ReadData(28),
      I1 => \^aluresult[1]_inst_0_i_4_0\,
      I2 => ReadData(12),
      O => rf_reg_r1_0_31_12_17_i_17_n_0
    );
rf_reg_r1_0_31_12_17_i_18: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ReadData(31),
      I1 => \^aluresult[1]_inst_0_i_4_0\,
      I2 => ReadData(15),
      O => rf_reg_r1_0_31_12_17_i_18_n_0
    );
rf_reg_r1_0_31_12_17_i_19: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ReadData(30),
      I1 => \^aluresult[1]_inst_0_i_4_0\,
      I2 => ReadData(14),
      O => rf_reg_r1_0_31_12_17_i_19_n_0
    );
rf_reg_r1_0_31_12_17_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAC0FACF0AC00AC"
    )
        port map (
      I0 => \loadext/ExtendedReadData__56\(12),
      I1 => \^aluresult\(7),
      I2 => \^s_1\(0),
      I3 => \^s_1\(1),
      I4 => rf_reg_r2_0_31_12_17_0(4),
      I5 => d2(11),
      O => wd3(12)
    );
rf_reg_r1_0_31_12_17_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAC0FACF0AC00AC"
    )
        port map (
      I0 => \loadext/ExtendedReadData__56\(15),
      I1 => \^aluresult\(10),
      I2 => \^s_1\(0),
      I3 => \^s_1\(1),
      I4 => rf_reg_r2_0_31_12_17_0(7),
      I5 => d2(14),
      O => wd3(15)
    );
rf_reg_r1_0_31_12_17_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAC0FACF0AC00AC"
    )
        port map (
      I0 => \loadext/ExtendedReadData__56\(14),
      I1 => \^aluresult\(9),
      I2 => \^s_1\(0),
      I3 => \^s_1\(1),
      I4 => rf_reg_r2_0_31_12_17_0(6),
      I5 => d2(13),
      O => wd3(14)
    );
rf_reg_r1_0_31_12_17_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBABBBBBBBABBBA"
    )
        port map (
      I0 => rf_reg_r2_0_31_12_17_2,
      I1 => \^s_1\(1),
      I2 => \^readdatam[15]\,
      I3 => rf_reg_r1_0_31_12_17_i_13_n_0,
      I4 => \^s_1\(0),
      I5 => \^aluresult\(12),
      O => wd3(17)
    );
rf_reg_r1_0_31_12_17_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBABBBBBBBABBBA"
    )
        port map (
      I0 => rf_reg_r2_0_31_12_17_1,
      I1 => \^s_1\(1),
      I2 => \^readdatam[15]\,
      I3 => rf_reg_r1_0_31_12_17_i_15_n_0,
      I4 => \^s_1\(0),
      I5 => \^aluresult\(11),
      O => wd3(16)
    );
rf_reg_r1_0_31_12_17_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDC100000DC10"
    )
        port map (
      I0 => Instr(10),
      I1 => Instr(8),
      I2 => \loadext/aligned_data__39\(7),
      I3 => rf_reg_r1_0_31_12_17_i_16_n_0,
      I4 => Instr(9),
      I5 => ReadData(13),
      O => \loadext/ExtendedReadData__56\(13)
    );
rf_reg_r1_0_31_12_17_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDC100000DC10"
    )
        port map (
      I0 => Instr(10),
      I1 => Instr(8),
      I2 => \loadext/aligned_data__39\(7),
      I3 => rf_reg_r1_0_31_12_17_i_17_n_0,
      I4 => Instr(9),
      I5 => ReadData(12),
      O => \loadext/ExtendedReadData__56\(12)
    );
rf_reg_r1_0_31_12_17_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCF0CC00CCF0CCAA"
    )
        port map (
      I0 => \loadext/aligned_data__39\(7),
      I1 => ReadData(15),
      I2 => rf_reg_r1_0_31_12_17_i_18_n_0,
      I3 => Instr(9),
      I4 => Instr(8),
      I5 => Instr(10),
      O => \loadext/ExtendedReadData__56\(15)
    );
rf_reg_r1_0_31_18_23: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => Instr(15 downto 11),
      ADDRB(4 downto 0) => Instr(15 downto 11),
      ADDRC(4 downto 0) => Instr(15 downto 11),
      ADDRD(4 downto 0) => Instr(7 downto 3),
      DIA(1 downto 0) => wd3(19 downto 18),
      DIB(1 downto 0) => wd3(21 downto 20),
      DIC(1 downto 0) => wd3(23 downto 22),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd10(19 downto 18),
      DOB(1 downto 0) => rd10(21 downto 20),
      DOC(1 downto 0) => rd10(23 downto 22),
      DOD(1 downto 0) => NLW_rf_reg_r1_0_31_18_23_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => we3
    );
rf_reg_r1_0_31_18_23_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBABBBBBBBABBBA"
    )
        port map (
      I0 => rf_reg_r2_0_31_18_23_1,
      I1 => \^s_1\(1),
      I2 => \^readdatam[15]\,
      I3 => rf_reg_r1_0_31_18_23_i_8_n_0,
      I4 => \^s_1\(0),
      I5 => \^aluresult\(14),
      O => wd3(19)
    );
rf_reg_r1_0_31_18_23_i_10: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A20000"
    )
        port map (
      I0 => Instr(9),
      I1 => Instr(1),
      I2 => Instr(0),
      I3 => Instr(2),
      I4 => ReadData(18),
      O => rf_reg_r1_0_31_18_23_i_10_n_0
    );
rf_reg_r1_0_31_18_23_i_12: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A20000"
    )
        port map (
      I0 => Instr(9),
      I1 => Instr(1),
      I2 => Instr(0),
      I3 => Instr(2),
      I4 => ReadData(21),
      O => rf_reg_r1_0_31_18_23_i_12_n_0
    );
rf_reg_r1_0_31_18_23_i_14: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A20000"
    )
        port map (
      I0 => Instr(9),
      I1 => Instr(1),
      I2 => Instr(0),
      I3 => Instr(2),
      I4 => ReadData(20),
      O => rf_reg_r1_0_31_18_23_i_14_n_0
    );
rf_reg_r1_0_31_18_23_i_16: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A20000"
    )
        port map (
      I0 => Instr(9),
      I1 => Instr(1),
      I2 => Instr(0),
      I3 => Instr(2),
      I4 => ReadData(23),
      O => rf_reg_r1_0_31_18_23_i_16_n_0
    );
rf_reg_r1_0_31_18_23_i_18: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A20000"
    )
        port map (
      I0 => Instr(9),
      I1 => Instr(1),
      I2 => Instr(0),
      I3 => Instr(2),
      I4 => ReadData(22),
      O => rf_reg_r1_0_31_18_23_i_18_n_0
    );
rf_reg_r1_0_31_18_23_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBABBBBBBBABBBA"
    )
        port map (
      I0 => rf_reg_r2_0_31_18_23_0,
      I1 => \^s_1\(1),
      I2 => \^readdatam[15]\,
      I3 => rf_reg_r1_0_31_18_23_i_10_n_0,
      I4 => \^s_1\(0),
      I5 => \^aluresult\(13),
      O => wd3(18)
    );
rf_reg_r1_0_31_18_23_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBABBBBBBBABBBA"
    )
        port map (
      I0 => rf_reg_r2_0_31_18_23_3,
      I1 => \^s_1\(1),
      I2 => \^readdatam[15]\,
      I3 => rf_reg_r1_0_31_18_23_i_12_n_0,
      I4 => \^s_1\(0),
      I5 => \^aluresult\(16),
      O => wd3(21)
    );
rf_reg_r1_0_31_18_23_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBABBBBBBBABBBA"
    )
        port map (
      I0 => rf_reg_r2_0_31_18_23_2,
      I1 => \^s_1\(1),
      I2 => \^readdatam[15]\,
      I3 => rf_reg_r1_0_31_18_23_i_14_n_0,
      I4 => \^s_1\(0),
      I5 => \^aluresult\(15),
      O => wd3(20)
    );
rf_reg_r1_0_31_18_23_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBABBBBBBBABBBA"
    )
        port map (
      I0 => rf_reg_r2_0_31_18_23_5,
      I1 => \^s_1\(1),
      I2 => \^readdatam[15]\,
      I3 => rf_reg_r1_0_31_18_23_i_16_n_0,
      I4 => \^s_1\(0),
      I5 => \^aluresult\(18),
      O => wd3(23)
    );
rf_reg_r1_0_31_18_23_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBABBBBBBBABBBA"
    )
        port map (
      I0 => rf_reg_r2_0_31_18_23_4,
      I1 => \^s_1\(1),
      I2 => \^readdatam[15]\,
      I3 => rf_reg_r1_0_31_18_23_i_18_n_0,
      I4 => \^s_1\(0),
      I5 => \^aluresult\(17),
      O => wd3(22)
    );
rf_reg_r1_0_31_18_23_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A20000"
    )
        port map (
      I0 => Instr(9),
      I1 => Instr(1),
      I2 => Instr(0),
      I3 => Instr(2),
      I4 => ReadData(19),
      O => rf_reg_r1_0_31_18_23_i_8_n_0
    );
rf_reg_r1_0_31_24_29: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => Instr(15 downto 11),
      ADDRB(4 downto 0) => Instr(15 downto 11),
      ADDRC(4 downto 0) => Instr(15 downto 11),
      ADDRD(4 downto 0) => Instr(7 downto 3),
      DIA(1 downto 0) => wd3(25 downto 24),
      DIB(1 downto 0) => wd3(27 downto 26),
      DIC(1 downto 0) => wd3(29 downto 28),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd10(25 downto 24),
      DOB(1 downto 0) => rd10(27 downto 26),
      DOC(1 downto 0) => rd10(29 downto 28),
      DOD(1 downto 0) => NLW_rf_reg_r1_0_31_24_29_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => we3
    );
rf_reg_r1_0_31_24_29_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBABBBBBBBABBBA"
    )
        port map (
      I0 => rf_reg_r2_0_31_24_29_1,
      I1 => \^s_1\(1),
      I2 => \^readdatam[15]\,
      I3 => rf_reg_r1_0_31_24_29_i_8_n_0,
      I4 => \^s_1\(0),
      I5 => \^aluresult\(20),
      O => wd3(25)
    );
rf_reg_r1_0_31_24_29_i_10: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A20000"
    )
        port map (
      I0 => Instr(9),
      I1 => Instr(1),
      I2 => Instr(0),
      I3 => Instr(2),
      I4 => ReadData(24),
      O => rf_reg_r1_0_31_24_29_i_10_n_0
    );
rf_reg_r1_0_31_24_29_i_12: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A20000"
    )
        port map (
      I0 => Instr(9),
      I1 => Instr(1),
      I2 => Instr(0),
      I3 => Instr(2),
      I4 => ReadData(27),
      O => rf_reg_r1_0_31_24_29_i_12_n_0
    );
rf_reg_r1_0_31_24_29_i_14: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A20000"
    )
        port map (
      I0 => Instr(9),
      I1 => Instr(1),
      I2 => Instr(0),
      I3 => Instr(2),
      I4 => ReadData(26),
      O => rf_reg_r1_0_31_24_29_i_14_n_0
    );
rf_reg_r1_0_31_24_29_i_16: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A20000"
    )
        port map (
      I0 => Instr(9),
      I1 => Instr(1),
      I2 => Instr(0),
      I3 => Instr(2),
      I4 => ReadData(29),
      O => rf_reg_r1_0_31_24_29_i_16_n_0
    );
rf_reg_r1_0_31_24_29_i_18: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A20000"
    )
        port map (
      I0 => Instr(9),
      I1 => Instr(1),
      I2 => Instr(0),
      I3 => Instr(2),
      I4 => ReadData(28),
      O => rf_reg_r1_0_31_24_29_i_18_n_0
    );
rf_reg_r1_0_31_24_29_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBABBBBBBBABBBA"
    )
        port map (
      I0 => rf_reg_r2_0_31_24_29_0,
      I1 => \^s_1\(1),
      I2 => \^readdatam[15]\,
      I3 => rf_reg_r1_0_31_24_29_i_10_n_0,
      I4 => \^s_1\(0),
      I5 => \^aluresult\(19),
      O => wd3(24)
    );
rf_reg_r1_0_31_24_29_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBABBBBBBBABBBA"
    )
        port map (
      I0 => rf_reg_r2_0_31_24_29_3,
      I1 => \^s_1\(1),
      I2 => \^readdatam[15]\,
      I3 => rf_reg_r1_0_31_24_29_i_12_n_0,
      I4 => \^s_1\(0),
      I5 => \^aluresult\(22),
      O => wd3(27)
    );
rf_reg_r1_0_31_24_29_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBABBBBBBBABBBA"
    )
        port map (
      I0 => rf_reg_r2_0_31_24_29_2,
      I1 => \^s_1\(1),
      I2 => \^readdatam[15]\,
      I3 => rf_reg_r1_0_31_24_29_i_14_n_0,
      I4 => \^s_1\(0),
      I5 => \^aluresult\(21),
      O => wd3(26)
    );
rf_reg_r1_0_31_24_29_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBABBBBBBBABBBA"
    )
        port map (
      I0 => rf_reg_r2_0_31_24_29_5,
      I1 => \^s_1\(1),
      I2 => \^readdatam[15]\,
      I3 => rf_reg_r1_0_31_24_29_i_16_n_0,
      I4 => \^s_1\(0),
      I5 => \^aluresult\(24),
      O => wd3(29)
    );
rf_reg_r1_0_31_24_29_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBABBBBBBBABBBA"
    )
        port map (
      I0 => rf_reg_r2_0_31_24_29_4,
      I1 => \^s_1\(1),
      I2 => \^readdatam[15]\,
      I3 => rf_reg_r1_0_31_24_29_i_18_n_0,
      I4 => \^s_1\(0),
      I5 => \^aluresult\(23),
      O => wd3(28)
    );
rf_reg_r1_0_31_24_29_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A20000"
    )
        port map (
      I0 => Instr(9),
      I1 => Instr(1),
      I2 => Instr(0),
      I3 => Instr(2),
      I4 => ReadData(25),
      O => rf_reg_r1_0_31_24_29_i_8_n_0
    );
rf_reg_r1_0_31_30_31: unisim.vcomponents.RAM32X1D
     port map (
      A0 => Instr(3),
      A1 => Instr(4),
      A2 => Instr(5),
      A3 => Instr(6),
      A4 => Instr(7),
      D => \writeDataM[31]\(8),
      DPO => rd10(30),
      DPRA0 => Instr(11),
      DPRA1 => Instr(12),
      DPRA2 => Instr(13),
      DPRA3 => Instr(14),
      DPRA4 => Instr(15),
      SPO => NLW_rf_reg_r1_0_31_30_31_SPO_UNCONNECTED,
      WCLK => clk,
      WE => we3
    );
\rf_reg_r1_0_31_30_31__0\: unisim.vcomponents.RAM32X1D
     port map (
      A0 => Instr(3),
      A1 => Instr(4),
      A2 => Instr(5),
      A3 => Instr(6),
      A4 => Instr(7),
      D => \writeDataM[31]\(9),
      DPO => rd10(31),
      DPRA0 => Instr(11),
      DPRA1 => Instr(12),
      DPRA2 => Instr(13),
      DPRA3 => Instr(14),
      DPRA4 => Instr(15),
      SPO => \NLW_rf_reg_r1_0_31_30_31__0_SPO_UNCONNECTED\,
      WCLK => clk,
      WE => we3
    );
rf_reg_r1_0_31_30_31_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A20000"
    )
        port map (
      I0 => Instr(9),
      I1 => Instr(1),
      I2 => Instr(0),
      I3 => Instr(2),
      I4 => ReadData(30),
      O => \readDataM[30]\
    );
\rf_reg_r1_0_31_30_31_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A20000"
    )
        port map (
      I0 => Instr(9),
      I1 => Instr(1),
      I2 => Instr(0),
      I3 => Instr(2),
      I4 => ReadData(31),
      O => \readDataM[31]\
    );
rf_reg_r1_0_31_6_11: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => Instr(15 downto 11),
      ADDRB(4 downto 0) => Instr(15 downto 11),
      ADDRC(4 downto 0) => Instr(15 downto 11),
      ADDRD(4 downto 0) => Instr(7 downto 3),
      DIA(1 downto 0) => \writeDataM[31]\(7 downto 6),
      DIB(1 downto 0) => wd3(9 downto 8),
      DIC(1 downto 0) => wd3(11 downto 10),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd10(7 downto 6),
      DOB(1 downto 0) => rd10(9 downto 8),
      DOC(1 downto 0) => rd10(11 downto 10),
      DOD(1 downto 0) => NLW_rf_reg_r1_0_31_6_11_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => we3
    );
rf_reg_r1_0_31_6_11_i_10: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => Instr(1),
      I1 => Instr(0),
      I2 => Instr(2),
      O => \^s_1\(0)
    );
rf_reg_r1_0_31_6_11_i_11: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4C"
    )
        port map (
      I0 => Instr(1),
      I1 => Instr(0),
      I2 => Instr(2),
      O => \^s_1\(1)
    );
rf_reg_r1_0_31_6_11_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDC100000DC10"
    )
        port map (
      I0 => Instr(10),
      I1 => Instr(8),
      I2 => \loadext/aligned_data__39\(7),
      I3 => rf_reg_r1_0_31_6_11_i_18_n_0,
      I4 => Instr(9),
      I5 => ReadData(8),
      O => \loadext/ExtendedReadData__56\(8)
    );
rf_reg_r1_0_31_6_11_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDC100000DC10"
    )
        port map (
      I0 => Instr(10),
      I1 => Instr(8),
      I2 => \loadext/aligned_data__39\(7),
      I3 => rf_reg_r1_0_31_6_11_i_19_n_0,
      I4 => Instr(9),
      I5 => ReadData(11),
      O => \loadext/ExtendedReadData__56\(11)
    );
rf_reg_r1_0_31_6_11_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDC100000DC10"
    )
        port map (
      I0 => Instr(10),
      I1 => Instr(8),
      I2 => \loadext/aligned_data__39\(7),
      I3 => rf_reg_r1_0_31_6_11_i_20_n_0,
      I4 => Instr(9),
      I5 => ReadData(10),
      O => \loadext/ExtendedReadData__56\(10)
    );
rf_reg_r1_0_31_6_11_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00CCCCF0F0AAAA"
    )
        port map (
      I0 => ReadData(15),
      I1 => ReadData(31),
      I2 => ReadData(7),
      I3 => ReadData(23),
      I4 => rf_reg_r1_0_31_0_5_i_20_n_0,
      I5 => \^aluresult[1]_inst_0_i_4_0\,
      O => \loadext/aligned_data__39\(7)
    );
rf_reg_r1_0_31_6_11_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00CCCCF0F0AAAA"
    )
        port map (
      I0 => ReadData(14),
      I1 => ReadData(30),
      I2 => ReadData(6),
      I3 => ReadData(22),
      I4 => rf_reg_r1_0_31_0_5_i_20_n_0,
      I5 => \^aluresult[1]_inst_0_i_4_0\,
      O => \loadext/aligned_data__39\(6)
    );
rf_reg_r1_0_31_6_11_i_17: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ReadData(25),
      I1 => \^aluresult[1]_inst_0_i_4_0\,
      I2 => ReadData(9),
      O => rf_reg_r1_0_31_6_11_i_17_n_0
    );
rf_reg_r1_0_31_6_11_i_18: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ReadData(24),
      I1 => \^aluresult[1]_inst_0_i_4_0\,
      I2 => ReadData(8),
      O => rf_reg_r1_0_31_6_11_i_18_n_0
    );
rf_reg_r1_0_31_6_11_i_19: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ReadData(27),
      I1 => \^aluresult[1]_inst_0_i_4_0\,
      I2 => ReadData(11),
      O => rf_reg_r1_0_31_6_11_i_19_n_0
    );
rf_reg_r1_0_31_6_11_i_20: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ReadData(26),
      I1 => \^aluresult[1]_inst_0_i_4_0\,
      I2 => ReadData(10),
      O => rf_reg_r1_0_31_6_11_i_20_n_0
    );
rf_reg_r1_0_31_6_11_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAC0FACF0AC00AC"
    )
        port map (
      I0 => \loadext/ExtendedReadData__56\(9),
      I1 => \^aluresult\(6),
      I2 => \^s_1\(0),
      I3 => \^s_1\(1),
      I4 => rf_reg_r2_0_31_12_17_0(1),
      I5 => d2(8),
      O => wd3(9)
    );
rf_reg_r1_0_31_6_11_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAC0FACF0AC00AC"
    )
        port map (
      I0 => \loadext/ExtendedReadData__56\(8),
      I1 => \^aluresult[31]_inst_0_i_3\,
      I2 => \^s_1\(0),
      I3 => \^s_1\(1),
      I4 => rf_reg_r2_0_31_12_17_0(0),
      I5 => d2(7),
      O => wd3(8)
    );
rf_reg_r1_0_31_6_11_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAC0FACF0AC00AC"
    )
        port map (
      I0 => \loadext/ExtendedReadData__56\(11),
      I1 => \^aluresult[31]_inst_0_i_3_0\,
      I2 => \^s_1\(0),
      I3 => \^s_1\(1),
      I4 => rf_reg_r2_0_31_12_17_0(3),
      I5 => d2(10),
      O => wd3(11)
    );
rf_reg_r1_0_31_6_11_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAC0FACF0AC00AC"
    )
        port map (
      I0 => \loadext/ExtendedReadData__56\(10),
      I1 => \^aluresult[31]_inst_0_i_3_1\,
      I2 => \^s_1\(0),
      I3 => \^s_1\(1),
      I4 => rf_reg_r2_0_31_12_17_0(2),
      I5 => d2(9),
      O => wd3(10)
    );
rf_reg_r1_0_31_6_11_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAACC"
    )
        port map (
      I0 => \loadext/aligned_data__39\(7),
      I1 => \^aluresult\(5),
      I2 => ReadData(7),
      I3 => \^s_1\(0),
      I4 => Instr(9),
      O => \readDataM[7]\
    );
rf_reg_r1_0_31_6_11_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAACC"
    )
        port map (
      I0 => \loadext/aligned_data__39\(6),
      I1 => \^aluresult\(4),
      I2 => ReadData(6),
      I3 => \^s_1\(0),
      I4 => Instr(9),
      O => \readDataM[6]\
    );
rf_reg_r1_0_31_6_11_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDC100000DC10"
    )
        port map (
      I0 => Instr(10),
      I1 => Instr(8),
      I2 => \loadext/aligned_data__39\(7),
      I3 => rf_reg_r1_0_31_6_11_i_17_n_0,
      I4 => Instr(9),
      I5 => ReadData(9),
      O => \loadext/ExtendedReadData__56\(9)
    );
rf_reg_r2_0_31_0_5: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => Instr(20 downto 16),
      ADDRB(4 downto 0) => Instr(20 downto 16),
      ADDRC(4 downto 0) => Instr(20 downto 16),
      ADDRD(4 downto 0) => Instr(7 downto 3),
      DIA(1 downto 0) => \writeDataM[31]\(1 downto 0),
      DIB(1 downto 0) => \writeDataM[31]\(3 downto 2),
      DIC(1 downto 0) => \writeDataM[31]\(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd20(1 downto 0),
      DOB(1 downto 0) => rd20(3 downto 2),
      DOC(1 downto 0) => rd20(5 downto 4),
      DOD(1 downto 0) => NLW_rf_reg_r2_0_31_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => we3
    );
rf_reg_r2_0_31_12_17: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => Instr(20 downto 16),
      ADDRB(4 downto 0) => Instr(20 downto 16),
      ADDRC(4 downto 0) => Instr(20 downto 16),
      ADDRD(4 downto 0) => Instr(7 downto 3),
      DIA(1 downto 0) => wd3(13 downto 12),
      DIB(1 downto 0) => wd3(15 downto 14),
      DIC(1 downto 0) => wd3(17 downto 16),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd20(13 downto 12),
      DOB(1 downto 0) => rd20(15 downto 14),
      DOC(1 downto 0) => rd20(17 downto 16),
      DOD(1 downto 0) => NLW_rf_reg_r2_0_31_12_17_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => we3
    );
rf_reg_r2_0_31_18_23: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => Instr(20 downto 16),
      ADDRB(4 downto 0) => Instr(20 downto 16),
      ADDRC(4 downto 0) => Instr(20 downto 16),
      ADDRD(4 downto 0) => Instr(7 downto 3),
      DIA(1 downto 0) => wd3(19 downto 18),
      DIB(1 downto 0) => wd3(21 downto 20),
      DIC(1 downto 0) => wd3(23 downto 22),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd20(19 downto 18),
      DOB(1 downto 0) => rd20(21 downto 20),
      DOC(1 downto 0) => rd20(23 downto 22),
      DOD(1 downto 0) => NLW_rf_reg_r2_0_31_18_23_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => we3
    );
rf_reg_r2_0_31_24_29: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => Instr(20 downto 16),
      ADDRB(4 downto 0) => Instr(20 downto 16),
      ADDRC(4 downto 0) => Instr(20 downto 16),
      ADDRD(4 downto 0) => Instr(7 downto 3),
      DIA(1 downto 0) => wd3(25 downto 24),
      DIB(1 downto 0) => wd3(27 downto 26),
      DIC(1 downto 0) => wd3(29 downto 28),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd20(25 downto 24),
      DOB(1 downto 0) => rd20(27 downto 26),
      DOC(1 downto 0) => rd20(29 downto 28),
      DOD(1 downto 0) => NLW_rf_reg_r2_0_31_24_29_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => we3
    );
rf_reg_r2_0_31_30_31: unisim.vcomponents.RAM32X1D
     port map (
      A0 => Instr(3),
      A1 => Instr(4),
      A2 => Instr(5),
      A3 => Instr(6),
      A4 => Instr(7),
      D => \writeDataM[31]\(8),
      DPO => rd20(30),
      DPRA0 => Instr(16),
      DPRA1 => Instr(17),
      DPRA2 => Instr(18),
      DPRA3 => Instr(19),
      DPRA4 => Instr(20),
      SPO => NLW_rf_reg_r2_0_31_30_31_SPO_UNCONNECTED,
      WCLK => clk,
      WE => we3
    );
\rf_reg_r2_0_31_30_31__0\: unisim.vcomponents.RAM32X1D
     port map (
      A0 => Instr(3),
      A1 => Instr(4),
      A2 => Instr(5),
      A3 => Instr(6),
      A4 => Instr(7),
      D => \writeDataM[31]\(9),
      DPO => rd20(31),
      DPRA0 => Instr(16),
      DPRA1 => Instr(17),
      DPRA2 => Instr(18),
      DPRA3 => Instr(19),
      DPRA4 => Instr(20),
      SPO => \NLW_rf_reg_r2_0_31_30_31__0_SPO_UNCONNECTED\,
      WCLK => clk,
      WE => we3
    );
rf_reg_r2_0_31_6_11: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => Instr(20 downto 16),
      ADDRB(4 downto 0) => Instr(20 downto 16),
      ADDRC(4 downto 0) => Instr(20 downto 16),
      ADDRD(4 downto 0) => Instr(7 downto 3),
      DIA(1 downto 0) => \writeDataM[31]\(7 downto 6),
      DIB(1 downto 0) => wd3(9 downto 8),
      DIC(1 downto 0) => wd3(11 downto 10),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd20(7 downto 6),
      DOB(1 downto 0) => rd20(9 downto 8),
      DOC(1 downto 0) => rd20(11 downto 10),
      DOD(1 downto 0) => NLW_rf_reg_r2_0_31_6_11_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => we3
    );
\sum__0_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(7),
      I1 => rd11,
      I2 => SrcB(7),
      I3 => ALUControl(0),
      O => clk_7(3)
    );
\sum__0_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(6),
      I1 => rd11,
      I2 => SrcB(6),
      I3 => ALUControl(0),
      O => clk_7(2)
    );
\sum__0_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(5),
      I1 => rd11,
      I2 => SrcB(5),
      I3 => ALUControl(0),
      O => clk_7(1)
    );
\sum__0_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(4),
      I1 => rd11,
      I2 => SrcB(4),
      I3 => ALUControl(0),
      O => clk_7(0)
    );
\sum__0_carry__1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA955595556AAA6A"
    )
        port map (
      I0 => \^srca\(11),
      I1 => rd20(11),
      I2 => rd21,
      I3 => \addressM[1]\,
      I4 => immext(11),
      I5 => ALUControl(0),
      O => clk_6(3)
    );
\sum__0_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(10),
      I1 => rd11,
      I2 => SrcB(10),
      I3 => ALUControl(0),
      O => clk_6(2)
    );
\sum__0_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(9),
      I1 => rd11,
      I2 => SrcB(9),
      I3 => ALUControl(0),
      O => clk_6(1)
    );
\sum__0_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(8),
      I1 => rd11,
      I2 => SrcB(8),
      I3 => ALUControl(0),
      O => clk_6(0)
    );
\sum__0_carry__2_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(15),
      I1 => rd11,
      I2 => SrcB(15),
      I3 => ALUControl(0),
      O => clk_5(3)
    );
\sum__0_carry__2_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(14),
      I1 => rd11,
      I2 => SrcB(14),
      I3 => ALUControl(0),
      O => clk_5(2)
    );
\sum__0_carry__2_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(13),
      I1 => rd11,
      I2 => SrcB(13),
      I3 => ALUControl(0),
      O => clk_5(1)
    );
\sum__0_carry__2_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(12),
      I1 => rd11,
      I2 => SrcB(12),
      I3 => ALUControl(0),
      O => clk_5(0)
    );
\sum__0_carry__3_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(19),
      I1 => rd11,
      I2 => SrcB(19),
      I3 => ALUControl(0),
      O => clk_4(3)
    );
\sum__0_carry__3_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(18),
      I1 => rd11,
      I2 => SrcB(18),
      I3 => ALUControl(0),
      O => clk_4(2)
    );
\sum__0_carry__3_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(17),
      I1 => rd11,
      I2 => SrcB(17),
      I3 => ALUControl(0),
      O => clk_4(1)
    );
\sum__0_carry__3_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(16),
      I1 => rd11,
      I2 => SrcB(16),
      I3 => ALUControl(0),
      O => clk_4(0)
    );
\sum__0_carry__4_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(23),
      I1 => rd11,
      I2 => SrcB(23),
      I3 => ALUControl(0),
      O => clk_3(3)
    );
\sum__0_carry__4_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(22),
      I1 => rd11,
      I2 => SrcB(22),
      I3 => ALUControl(0),
      O => clk_3(2)
    );
\sum__0_carry__4_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(21),
      I1 => rd11,
      I2 => SrcB(21),
      I3 => ALUControl(0),
      O => clk_3(1)
    );
\sum__0_carry__4_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(20),
      I1 => rd11,
      I2 => SrcB(20),
      I3 => ALUControl(0),
      O => clk_3(0)
    );
\sum__0_carry__5_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(27),
      I1 => rd11,
      I2 => SrcB(27),
      I3 => ALUControl(0),
      O => clk_2(3)
    );
\sum__0_carry__5_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(26),
      I1 => rd11,
      I2 => SrcB(26),
      I3 => ALUControl(0),
      O => clk_2(2)
    );
\sum__0_carry__5_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(25),
      I1 => rd11,
      I2 => SrcB(25),
      I3 => ALUControl(0),
      O => clk_2(1)
    );
\sum__0_carry__5_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(24),
      I1 => rd11,
      I2 => SrcB(24),
      I3 => ALUControl(0),
      O => clk_2(0)
    );
\sum__0_carry__6_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(31),
      I1 => rd11,
      I2 => ALUControl(0),
      I3 => \^clk_0\(1),
      O => clk_1(3)
    );
\sum__0_carry__6_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(30),
      I1 => rd11,
      I2 => \^clk_0\(0),
      I3 => ALUControl(0),
      O => clk_1(2)
    );
\sum__0_carry__6_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(29),
      I1 => rd11,
      I2 => SrcB(29),
      I3 => ALUControl(0),
      O => clk_1(1)
    );
\sum__0_carry__6_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(28),
      I1 => rd11,
      I2 => SrcB(28),
      I3 => ALUControl(0),
      O => clk_1(0)
    );
\sum__0_carry_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(3),
      I1 => rd11,
      I2 => SrcB(3),
      I3 => ALUControl(0),
      O => clk_8(3)
    );
\sum__0_carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(2),
      I1 => rd11,
      I2 => SrcB(2),
      I3 => ALUControl(0),
      O => clk_8(2)
    );
\sum__0_carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(1),
      I1 => rd11,
      I2 => SrcB(1),
      I3 => ALUControl(0),
      O => clk_8(1)
    );
\sum__0_carry_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => rd10(0),
      I1 => rd11,
      I2 => ALUControl(0),
      O => clk_8(0)
    );
\sum_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(13),
      I1 => Instr(15),
      I2 => Instr(12),
      I3 => Instr(11),
      I4 => Instr(14),
      I5 => rd10(7),
      O => \^srca\(7)
    );
\sum_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(13),
      I1 => Instr(15),
      I2 => Instr(12),
      I3 => Instr(11),
      I4 => Instr(14),
      I5 => rd10(6),
      O => \^srca\(6)
    );
\sum_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(13),
      I1 => Instr(15),
      I2 => Instr(12),
      I3 => Instr(11),
      I4 => Instr(14),
      I5 => rd10(5),
      O => \^srca\(5)
    );
\sum_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(13),
      I1 => Instr(15),
      I2 => Instr(12),
      I3 => Instr(11),
      I4 => Instr(14),
      I5 => rd10(4),
      O => \^srca\(4)
    );
\sum_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(7),
      I1 => rd11,
      I2 => SrcB(7),
      I3 => ALUControl(0),
      O => clk_10(3)
    );
\sum_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(6),
      I1 => rd11,
      I2 => SrcB(6),
      I3 => ALUControl(0),
      O => clk_10(2)
    );
\sum_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(5),
      I1 => rd11,
      I2 => SrcB(5),
      I3 => ALUControl(0),
      O => clk_10(1)
    );
\sum_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(4),
      I1 => rd11,
      I2 => SrcB(4),
      I3 => ALUControl(0),
      O => clk_10(0)
    );
\sum_carry__1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(13),
      I1 => Instr(15),
      I2 => Instr(12),
      I3 => Instr(11),
      I4 => Instr(14),
      I5 => rd10(11),
      O => \^srca\(11)
    );
\sum_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(13),
      I1 => Instr(15),
      I2 => Instr(12),
      I3 => Instr(11),
      I4 => Instr(14),
      I5 => rd10(10),
      O => \^srca\(10)
    );
\sum_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(13),
      I1 => Instr(15),
      I2 => Instr(12),
      I3 => Instr(11),
      I4 => Instr(14),
      I5 => rd10(9),
      O => \^srca\(9)
    );
\sum_carry__1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(13),
      I1 => Instr(15),
      I2 => Instr(12),
      I3 => Instr(11),
      I4 => Instr(14),
      I5 => rd10(8),
      O => \^srca\(8)
    );
\sum_carry__1_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA955595556AAA6A"
    )
        port map (
      I0 => \^srca\(11),
      I1 => rd20(11),
      I2 => rd21,
      I3 => \addressM[1]\,
      I4 => immext(11),
      I5 => ALUControl(0),
      O => clk_11(3)
    );
\sum_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(10),
      I1 => rd11,
      I2 => SrcB(10),
      I3 => ALUControl(0),
      O => clk_11(2)
    );
\sum_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(9),
      I1 => rd11,
      I2 => SrcB(9),
      I3 => ALUControl(0),
      O => clk_11(1)
    );
\sum_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(8),
      I1 => rd11,
      I2 => SrcB(8),
      I3 => ALUControl(0),
      O => clk_11(0)
    );
\sum_carry__2_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(13),
      I1 => Instr(15),
      I2 => Instr(12),
      I3 => Instr(11),
      I4 => Instr(14),
      I5 => rd10(15),
      O => \^srca\(15)
    );
\sum_carry__2_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(13),
      I1 => Instr(15),
      I2 => Instr(12),
      I3 => Instr(11),
      I4 => Instr(14),
      I5 => rd10(14),
      O => \^srca\(14)
    );
\sum_carry__2_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(13),
      I1 => Instr(15),
      I2 => Instr(12),
      I3 => Instr(11),
      I4 => Instr(14),
      I5 => rd10(13),
      O => \^srca\(13)
    );
\sum_carry__2_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(13),
      I1 => Instr(15),
      I2 => Instr(12),
      I3 => Instr(11),
      I4 => Instr(14),
      I5 => rd10(12),
      O => \^srca\(12)
    );
\sum_carry__2_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(15),
      I1 => rd11,
      I2 => SrcB(15),
      I3 => ALUControl(0),
      O => clk_12(3)
    );
\sum_carry__2_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(14),
      I1 => rd11,
      I2 => SrcB(14),
      I3 => ALUControl(0),
      O => clk_12(2)
    );
\sum_carry__2_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(13),
      I1 => rd11,
      I2 => SrcB(13),
      I3 => ALUControl(0),
      O => clk_12(1)
    );
\sum_carry__2_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(12),
      I1 => rd11,
      I2 => SrcB(12),
      I3 => ALUControl(0),
      O => clk_12(0)
    );
\sum_carry__3_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(13),
      I1 => Instr(15),
      I2 => Instr(12),
      I3 => Instr(11),
      I4 => Instr(14),
      I5 => rd10(19),
      O => \^srca\(19)
    );
\sum_carry__3_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(13),
      I1 => Instr(15),
      I2 => Instr(12),
      I3 => Instr(11),
      I4 => Instr(14),
      I5 => rd10(18),
      O => \^srca\(18)
    );
\sum_carry__3_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(13),
      I1 => Instr(15),
      I2 => Instr(12),
      I3 => Instr(11),
      I4 => Instr(14),
      I5 => rd10(17),
      O => \^srca\(17)
    );
\sum_carry__3_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(13),
      I1 => Instr(15),
      I2 => Instr(12),
      I3 => Instr(11),
      I4 => Instr(14),
      I5 => rd10(16),
      O => \^srca\(16)
    );
\sum_carry__3_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(19),
      I1 => rd11,
      I2 => SrcB(19),
      I3 => ALUControl(0),
      O => clk_13(3)
    );
\sum_carry__3_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(18),
      I1 => rd11,
      I2 => SrcB(18),
      I3 => ALUControl(0),
      O => clk_13(2)
    );
\sum_carry__3_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(17),
      I1 => rd11,
      I2 => SrcB(17),
      I3 => ALUControl(0),
      O => clk_13(1)
    );
\sum_carry__3_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(16),
      I1 => rd11,
      I2 => SrcB(16),
      I3 => ALUControl(0),
      O => clk_13(0)
    );
\sum_carry__4_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(13),
      I1 => Instr(15),
      I2 => Instr(12),
      I3 => Instr(11),
      I4 => Instr(14),
      I5 => rd10(23),
      O => \^srca\(23)
    );
\sum_carry__4_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(13),
      I1 => Instr(15),
      I2 => Instr(12),
      I3 => Instr(11),
      I4 => Instr(14),
      I5 => rd10(22),
      O => \^srca\(22)
    );
\sum_carry__4_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(13),
      I1 => Instr(15),
      I2 => Instr(12),
      I3 => Instr(11),
      I4 => Instr(14),
      I5 => rd10(21),
      O => \^srca\(21)
    );
\sum_carry__4_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(13),
      I1 => Instr(15),
      I2 => Instr(12),
      I3 => Instr(11),
      I4 => Instr(14),
      I5 => rd10(20),
      O => \^srca\(20)
    );
\sum_carry__4_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(23),
      I1 => rd11,
      I2 => SrcB(23),
      I3 => ALUControl(0),
      O => clk_14(3)
    );
\sum_carry__4_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(22),
      I1 => rd11,
      I2 => SrcB(22),
      I3 => ALUControl(0),
      O => clk_14(2)
    );
\sum_carry__4_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(21),
      I1 => rd11,
      I2 => SrcB(21),
      I3 => ALUControl(0),
      O => clk_14(1)
    );
\sum_carry__4_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(20),
      I1 => rd11,
      I2 => SrcB(20),
      I3 => ALUControl(0),
      O => clk_14(0)
    );
\sum_carry__5_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(13),
      I1 => Instr(15),
      I2 => Instr(12),
      I3 => Instr(11),
      I4 => Instr(14),
      I5 => rd10(27),
      O => \^srca\(27)
    );
\sum_carry__5_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(13),
      I1 => Instr(15),
      I2 => Instr(12),
      I3 => Instr(11),
      I4 => Instr(14),
      I5 => rd10(26),
      O => \^srca\(26)
    );
\sum_carry__5_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(13),
      I1 => Instr(15),
      I2 => Instr(12),
      I3 => Instr(11),
      I4 => Instr(14),
      I5 => rd10(25),
      O => \^srca\(25)
    );
\sum_carry__5_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(13),
      I1 => Instr(15),
      I2 => Instr(12),
      I3 => Instr(11),
      I4 => Instr(14),
      I5 => rd10(24),
      O => \^srca\(24)
    );
\sum_carry__5_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(27),
      I1 => rd11,
      I2 => SrcB(27),
      I3 => ALUControl(0),
      O => clk_15(3)
    );
\sum_carry__5_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(26),
      I1 => rd11,
      I2 => SrcB(26),
      I3 => ALUControl(0),
      O => clk_15(2)
    );
\sum_carry__5_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(25),
      I1 => rd11,
      I2 => SrcB(25),
      I3 => ALUControl(0),
      O => clk_15(1)
    );
\sum_carry__5_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(24),
      I1 => rd11,
      I2 => SrcB(24),
      I3 => ALUControl(0),
      O => clk_15(0)
    );
\sum_carry__6_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(13),
      I1 => Instr(15),
      I2 => Instr(12),
      I3 => Instr(11),
      I4 => Instr(14),
      I5 => rd10(30),
      O => \^srca\(30)
    );
\sum_carry__6_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(13),
      I1 => Instr(15),
      I2 => Instr(12),
      I3 => Instr(11),
      I4 => Instr(14),
      I5 => rd10(29),
      O => \^srca\(29)
    );
\sum_carry__6_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(13),
      I1 => Instr(15),
      I2 => Instr(12),
      I3 => Instr(11),
      I4 => Instr(14),
      I5 => rd10(28),
      O => \^srca\(28)
    );
\sum_carry__6_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(31),
      I1 => rd11,
      I2 => ALUControl(0),
      I3 => \^clk_0\(1),
      O => clk_16(3)
    );
\sum_carry__6_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(30),
      I1 => rd11,
      I2 => \^clk_0\(0),
      I3 => ALUControl(0),
      O => clk_16(2)
    );
\sum_carry__6_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(29),
      I1 => rd11,
      I2 => SrcB(29),
      I3 => ALUControl(0),
      O => clk_16(1)
    );
\sum_carry__6_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(28),
      I1 => rd11,
      I2 => SrcB(28),
      I3 => ALUControl(0),
      O => clk_16(0)
    );
sum_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ALUControl(0),
      I1 => SrcB(0),
      O => \ALUResult[0]_INST_0_i_6_0\
    );
sum_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(13),
      I1 => Instr(15),
      I2 => Instr(12),
      I3 => Instr(11),
      I4 => Instr(14),
      I5 => rd10(3),
      O => \^srca\(3)
    );
sum_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(13),
      I1 => Instr(15),
      I2 => Instr(12),
      I3 => Instr(11),
      I4 => Instr(14),
      I5 => rd10(2),
      O => \^srca\(2)
    );
sum_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(13),
      I1 => Instr(15),
      I2 => Instr(12),
      I3 => Instr(11),
      I4 => Instr(14),
      I5 => rd10(1),
      O => \^srca\(1)
    );
sum_carry_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Instr(13),
      I1 => Instr(15),
      I2 => Instr(12),
      I3 => Instr(11),
      I4 => Instr(14),
      I5 => rd10(0),
      O => \^srca\(0)
    );
sum_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(3),
      I1 => rd11,
      I2 => SrcB(3),
      I3 => ALUControl(0),
      O => clk_9(3)
    );
sum_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(2),
      I1 => rd11,
      I2 => SrcB(2),
      I3 => ALUControl(0),
      O => clk_9(2)
    );
sum_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rd10(1),
      I1 => rd11,
      I2 => SrcB(1),
      I3 => ALUControl(0),
      O => clk_9(1)
    );
sum_carry_i_9: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => rd10(0),
      I1 => rd11,
      I2 => ALUControl(0),
      O => clk_9(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_datapath is
  port (
    \q_reg[0]\ : out STD_LOGIC;
    PC : out STD_LOGIC_VECTOR ( 30 downto 0 );
    \ALUResult[31]_INST_0_i_6\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_3\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_3_0\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_3_1\ : out STD_LOGIC;
    \ALUResult[31]_INST_0_i_3_2\ : out STD_LOGIC;
    \ALUResult[0]_INST_0_i_3\ : out STD_LOGIC;
    \ALUResult[1]_INST_0_i_4\ : out STD_LOGIC;
    ALUResult : out STD_LOGIC_VECTOR ( 24 downto 0 );
    WriteData : out STD_LOGIC_VECTOR ( 31 downto 0 );
    PCReady : in STD_LOGIC;
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    Instr : in STD_LOGIC_VECTOR ( 29 downto 0 );
    ReadData : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_0_0_datapath : entity is "datapath";
end design_1_top_0_0_datapath;

architecture STRUCTURE of design_1_top_0_0_datapath is
  signal ALUControl : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \ALUControl__0\ : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal \^aluresult\ : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal \^aluresult[31]_inst_0_i_3\ : STD_LOGIC;
  signal \^aluresult[31]_inst_0_i_6\ : STD_LOGIC;
  signal LT : STD_LOGIC;
  signal \^pc\ : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal PCSrc : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal SrcA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal SrcB : STD_LOGIC_VECTOR ( 31 downto 30 );
  signal d2 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal d3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \ext/immext\ : STD_LOGIC_VECTOR ( 28 downto 0 );
  signal p_3_in : STD_LOGIC;
  signal pcaddbranch_n_20 : STD_LOGIC;
  signal pcaddbranch_n_21 : STD_LOGIC;
  signal pcaddbranch_n_22 : STD_LOGIC;
  signal pcaddbranch_n_23 : STD_LOGIC;
  signal pcaddbranch_n_24 : STD_LOGIC;
  signal pcaddbranch_n_25 : STD_LOGIC;
  signal pcaddbranch_n_26 : STD_LOGIC;
  signal pcaddbranch_n_27 : STD_LOGIC;
  signal pcaddbranch_n_28 : STD_LOGIC;
  signal pcaddbranch_n_29 : STD_LOGIC;
  signal pcaddbranch_n_30 : STD_LOGIC;
  signal pcaddbranch_n_31 : STD_LOGIC;
  signal pcreg_n_100 : STD_LOGIC;
  signal pcreg_n_101 : STD_LOGIC;
  signal pcreg_n_102 : STD_LOGIC;
  signal pcreg_n_103 : STD_LOGIC;
  signal pcreg_n_104 : STD_LOGIC;
  signal pcreg_n_105 : STD_LOGIC;
  signal pcreg_n_106 : STD_LOGIC;
  signal pcreg_n_107 : STD_LOGIC;
  signal pcreg_n_108 : STD_LOGIC;
  signal pcreg_n_109 : STD_LOGIC;
  signal pcreg_n_110 : STD_LOGIC;
  signal pcreg_n_111 : STD_LOGIC;
  signal pcreg_n_112 : STD_LOGIC;
  signal pcreg_n_113 : STD_LOGIC;
  signal pcreg_n_114 : STD_LOGIC;
  signal pcreg_n_115 : STD_LOGIC;
  signal pcreg_n_116 : STD_LOGIC;
  signal pcreg_n_117 : STD_LOGIC;
  signal pcreg_n_118 : STD_LOGIC;
  signal pcreg_n_119 : STD_LOGIC;
  signal pcreg_n_120 : STD_LOGIC;
  signal pcreg_n_121 : STD_LOGIC;
  signal pcreg_n_122 : STD_LOGIC;
  signal pcreg_n_123 : STD_LOGIC;
  signal pcreg_n_124 : STD_LOGIC;
  signal pcreg_n_125 : STD_LOGIC;
  signal pcreg_n_126 : STD_LOGIC;
  signal pcreg_n_127 : STD_LOGIC;
  signal pcreg_n_32 : STD_LOGIC;
  signal pcreg_n_33 : STD_LOGIC;
  signal pcreg_n_34 : STD_LOGIC;
  signal pcreg_n_39 : STD_LOGIC;
  signal pcreg_n_43 : STD_LOGIC;
  signal pcreg_n_44 : STD_LOGIC;
  signal pcreg_n_45 : STD_LOGIC;
  signal pcreg_n_46 : STD_LOGIC;
  signal pcreg_n_47 : STD_LOGIC;
  signal pcreg_n_48 : STD_LOGIC;
  signal pcreg_n_49 : STD_LOGIC;
  signal pcreg_n_50 : STD_LOGIC;
  signal pcreg_n_51 : STD_LOGIC;
  signal pcreg_n_54 : STD_LOGIC;
  signal pcreg_n_55 : STD_LOGIC;
  signal pcreg_n_56 : STD_LOGIC;
  signal pcreg_n_85 : STD_LOGIC;
  signal pcreg_n_86 : STD_LOGIC;
  signal pcreg_n_87 : STD_LOGIC;
  signal pcreg_n_88 : STD_LOGIC;
  signal pcreg_n_89 : STD_LOGIC;
  signal pcreg_n_90 : STD_LOGIC;
  signal pcreg_n_91 : STD_LOGIC;
  signal pcreg_n_92 : STD_LOGIC;
  signal pcreg_n_93 : STD_LOGIC;
  signal pcreg_n_94 : STD_LOGIC;
  signal pcreg_n_97 : STD_LOGIC;
  signal pcreg_n_98 : STD_LOGIC;
  signal pcreg_n_99 : STD_LOGIC;
  signal \^q_reg[0]\ : STD_LOGIC;
  signal rd11 : STD_LOGIC;
  signal rd21 : STD_LOGIC;
  signal rf_n_10 : STD_LOGIC;
  signal rf_n_11 : STD_LOGIC;
  signal rf_n_113 : STD_LOGIC;
  signal rf_n_114 : STD_LOGIC;
  signal rf_n_115 : STD_LOGIC;
  signal rf_n_116 : STD_LOGIC;
  signal rf_n_117 : STD_LOGIC;
  signal rf_n_118 : STD_LOGIC;
  signal rf_n_119 : STD_LOGIC;
  signal rf_n_120 : STD_LOGIC;
  signal rf_n_121 : STD_LOGIC;
  signal rf_n_122 : STD_LOGIC;
  signal rf_n_123 : STD_LOGIC;
  signal rf_n_124 : STD_LOGIC;
  signal rf_n_125 : STD_LOGIC;
  signal rf_n_126 : STD_LOGIC;
  signal rf_n_127 : STD_LOGIC;
  signal rf_n_128 : STD_LOGIC;
  signal rf_n_129 : STD_LOGIC;
  signal rf_n_130 : STD_LOGIC;
  signal rf_n_131 : STD_LOGIC;
  signal rf_n_132 : STD_LOGIC;
  signal rf_n_133 : STD_LOGIC;
  signal rf_n_134 : STD_LOGIC;
  signal rf_n_135 : STD_LOGIC;
  signal rf_n_136 : STD_LOGIC;
  signal rf_n_137 : STD_LOGIC;
  signal rf_n_138 : STD_LOGIC;
  signal rf_n_139 : STD_LOGIC;
  signal rf_n_140 : STD_LOGIC;
  signal rf_n_141 : STD_LOGIC;
  signal rf_n_142 : STD_LOGIC;
  signal rf_n_143 : STD_LOGIC;
  signal rf_n_144 : STD_LOGIC;
  signal rf_n_145 : STD_LOGIC;
  signal rf_n_146 : STD_LOGIC;
  signal rf_n_147 : STD_LOGIC;
  signal rf_n_148 : STD_LOGIC;
  signal rf_n_149 : STD_LOGIC;
  signal rf_n_150 : STD_LOGIC;
  signal rf_n_151 : STD_LOGIC;
  signal rf_n_152 : STD_LOGIC;
  signal rf_n_153 : STD_LOGIC;
  signal rf_n_154 : STD_LOGIC;
  signal rf_n_155 : STD_LOGIC;
  signal rf_n_156 : STD_LOGIC;
  signal rf_n_157 : STD_LOGIC;
  signal rf_n_158 : STD_LOGIC;
  signal rf_n_159 : STD_LOGIC;
  signal rf_n_160 : STD_LOGIC;
  signal rf_n_161 : STD_LOGIC;
  signal rf_n_162 : STD_LOGIC;
  signal rf_n_163 : STD_LOGIC;
  signal rf_n_164 : STD_LOGIC;
  signal rf_n_165 : STD_LOGIC;
  signal rf_n_166 : STD_LOGIC;
  signal rf_n_167 : STD_LOGIC;
  signal rf_n_168 : STD_LOGIC;
  signal rf_n_169 : STD_LOGIC;
  signal rf_n_170 : STD_LOGIC;
  signal rf_n_171 : STD_LOGIC;
  signal rf_n_172 : STD_LOGIC;
  signal rf_n_173 : STD_LOGIC;
  signal rf_n_174 : STD_LOGIC;
  signal rf_n_175 : STD_LOGIC;
  signal rf_n_176 : STD_LOGIC;
  signal rf_n_177 : STD_LOGIC;
  signal rf_n_178 : STD_LOGIC;
  signal rf_n_179 : STD_LOGIC;
  signal rf_n_180 : STD_LOGIC;
  signal rf_n_181 : STD_LOGIC;
  signal rf_n_182 : STD_LOGIC;
  signal rf_n_183 : STD_LOGIC;
  signal rf_n_184 : STD_LOGIC;
  signal rf_n_185 : STD_LOGIC;
  signal rf_n_186 : STD_LOGIC;
  signal rf_n_187 : STD_LOGIC;
  signal rf_n_188 : STD_LOGIC;
  signal rf_n_189 : STD_LOGIC;
  signal rf_n_190 : STD_LOGIC;
  signal rf_n_191 : STD_LOGIC;
  signal rf_n_192 : STD_LOGIC;
  signal rf_n_193 : STD_LOGIC;
  signal rf_n_194 : STD_LOGIC;
  signal rf_n_195 : STD_LOGIC;
  signal rf_n_196 : STD_LOGIC;
  signal rf_n_197 : STD_LOGIC;
  signal rf_n_198 : STD_LOGIC;
  signal rf_n_199 : STD_LOGIC;
  signal rf_n_200 : STD_LOGIC;
  signal rf_n_201 : STD_LOGIC;
  signal rf_n_202 : STD_LOGIC;
  signal rf_n_203 : STD_LOGIC;
  signal rf_n_204 : STD_LOGIC;
  signal rf_n_205 : STD_LOGIC;
  signal rf_n_206 : STD_LOGIC;
  signal rf_n_207 : STD_LOGIC;
  signal rf_n_208 : STD_LOGIC;
  signal rf_n_209 : STD_LOGIC;
  signal rf_n_37 : STD_LOGIC;
  signal rf_n_38 : STD_LOGIC;
  signal rf_n_39 : STD_LOGIC;
  signal rf_n_40 : STD_LOGIC;
  signal rf_n_41 : STD_LOGIC;
  signal rf_n_42 : STD_LOGIC;
  signal rf_n_6 : STD_LOGIC;
  signal rf_n_77 : STD_LOGIC;
  signal rf_n_78 : STD_LOGIC;
  signal rf_n_79 : STD_LOGIC;
  signal rf_n_80 : STD_LOGIC;
  signal s : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal sel0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal sum : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal sum_extended : STD_LOGIC_VECTOR ( 32 to 32 );
  signal wd3 : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
  ALUResult(24 downto 0) <= \^aluresult\(24 downto 0);
  \ALUResult[31]_INST_0_i_3\ <= \^aluresult[31]_inst_0_i_3\;
  \ALUResult[31]_INST_0_i_6\ <= \^aluresult[31]_inst_0_i_6\;
  PC(30 downto 0) <= \^pc\(30 downto 0);
  \q_reg[0]\ <= \^q_reg[0]\;
alu: entity work.design_1_top_0_0_alu
     port map (
      ALUControl(0) => ALUControl(0),
      \ALUControl__0\(1 downto 0) => \ALUControl__0\(2 downto 1),
      \ALUResult[12]_INST_0_i_3\(3) => rf_n_189,
      \ALUResult[12]_INST_0_i_3\(2) => rf_n_190,
      \ALUResult[12]_INST_0_i_3\(1) => rf_n_191,
      \ALUResult[12]_INST_0_i_3\(0) => rf_n_192,
      \ALUResult[16]_INST_0_i_3\(3) => rf_n_193,
      \ALUResult[16]_INST_0_i_3\(2) => rf_n_194,
      \ALUResult[16]_INST_0_i_3\(1) => rf_n_195,
      \ALUResult[16]_INST_0_i_3\(0) => rf_n_196,
      \ALUResult[20]_INST_0_i_3\(3) => rf_n_197,
      \ALUResult[20]_INST_0_i_3\(2) => rf_n_198,
      \ALUResult[20]_INST_0_i_3\(1) => rf_n_199,
      \ALUResult[20]_INST_0_i_3\(0) => rf_n_200,
      \ALUResult[24]_INST_0_i_3\(3) => rf_n_201,
      \ALUResult[24]_INST_0_i_3\(2) => rf_n_202,
      \ALUResult[24]_INST_0_i_3\(1) => rf_n_203,
      \ALUResult[24]_INST_0_i_3\(0) => rf_n_204,
      \ALUResult[28]_INST_0_i_3\(3) => rf_n_205,
      \ALUResult[28]_INST_0_i_3\(2) => rf_n_206,
      \ALUResult[28]_INST_0_i_3\(1) => rf_n_207,
      \ALUResult[28]_INST_0_i_3\(0) => rf_n_208,
      \ALUResult[31]_INST_0_i_3\ => \^aluresult[31]_inst_0_i_3\,
      \ALUResult[4]_INST_0_i_8\(3) => rf_n_181,
      \ALUResult[4]_INST_0_i_8\(2) => rf_n_182,
      \ALUResult[4]_INST_0_i_8\(1) => rf_n_183,
      \ALUResult[4]_INST_0_i_8\(0) => rf_n_184,
      \ALUResult[8]_INST_0_i_3\(3) => rf_n_185,
      \ALUResult[8]_INST_0_i_3\(2) => rf_n_186,
      \ALUResult[8]_INST_0_i_3\(1) => rf_n_187,
      \ALUResult[8]_INST_0_i_3\(0) => rf_n_188,
      CO(0) => sum_extended(32),
      Instr(10 downto 9) => Instr(29 downto 28),
      Instr(8) => Instr(18),
      Instr(7 downto 5) => Instr(12 downto 10),
      Instr(4 downto 1) => Instr(5 downto 2),
      Instr(0) => Instr(0),
      LT => LT,
      O(0) => p_3_in,
      S(3) => rf_n_177,
      S(2) => rf_n_178,
      S(1) => rf_n_179,
      S(0) => rf_n_180,
      SrcA(31 downto 0) => SrcA(31 downto 0),
      SrcB(1 downto 0) => SrcB(31 downto 30),
      \addressM[30]\ => rf_n_78,
      \addressM[30]_0\ => pcreg_n_47,
      \addressM[30]_1\ => pcreg_n_48,
      \addressM[30]_2\ => rf_n_77,
      \addressM[30]_3\ => pcreg_n_50,
      \addressM[30]_4\ => pcreg_n_51,
      immext(0) => \ext/immext\(11),
      \q[31]_i_17\(3) => rf_n_145,
      \q[31]_i_17\(2) => rf_n_146,
      \q[31]_i_17\(1) => rf_n_147,
      \q[31]_i_17\(0) => rf_n_148,
      sel0(2 downto 0) => sel0(2 downto 0),
      \sum__0_carry__0_0\ => rf_n_209,
      \sum__0_carry__0_1\(3) => rf_n_173,
      \sum__0_carry__0_1\(2) => rf_n_174,
      \sum__0_carry__0_1\(1) => rf_n_175,
      \sum__0_carry__0_1\(0) => rf_n_176,
      \sum__0_carry__1_0\(3) => rf_n_169,
      \sum__0_carry__1_0\(2) => rf_n_170,
      \sum__0_carry__1_0\(1) => rf_n_171,
      \sum__0_carry__1_0\(0) => rf_n_172,
      \sum__0_carry__2_0\(3) => rf_n_165,
      \sum__0_carry__2_0\(2) => rf_n_166,
      \sum__0_carry__2_0\(1) => rf_n_167,
      \sum__0_carry__2_0\(0) => rf_n_168,
      \sum__0_carry__3_0\(3) => rf_n_161,
      \sum__0_carry__3_0\(2) => rf_n_162,
      \sum__0_carry__3_0\(1) => rf_n_163,
      \sum__0_carry__3_0\(0) => rf_n_164,
      \sum__0_carry__4_0\(3) => rf_n_157,
      \sum__0_carry__4_0\(2) => rf_n_158,
      \sum__0_carry__4_0\(1) => rf_n_159,
      \sum__0_carry__4_0\(0) => rf_n_160,
      \sum__0_carry__5_0\(3) => rf_n_153,
      \sum__0_carry__5_0\(2) => rf_n_154,
      \sum__0_carry__5_0\(1) => rf_n_155,
      \sum__0_carry__5_0\(0) => rf_n_156,
      \sum__0_carry__6_0\(3) => rf_n_149,
      \sum__0_carry__6_0\(2) => rf_n_150,
      \sum__0_carry__6_0\(1) => rf_n_151,
      \sum__0_carry__6_0\(0) => rf_n_152,
      \sum_carry__6_i_7\(29 downto 0) => sum(29 downto 0)
    );
pcadd4: entity work.design_1_top_0_0_adder
     port map (
      DI(2 downto 0) => \^pc\(2 downto 0),
      Instr(2 downto 1) => Instr(3 downto 2),
      Instr(0) => Instr(0),
      S(0) => pcreg_n_98,
      d2(30 downto 0) => d2(31 downto 1),
      d3(6 downto 0) => d3(7 downto 1),
      \q[7]_i_8\(3 downto 0) => \^pc\(6 downto 3),
      rf_reg_r1_0_31_0_5 => rf_n_10,
      rf_reg_r1_0_31_0_5_0 => rf_n_11,
      rf_reg_r1_0_31_0_5_1 => rf_n_37,
      rf_reg_r1_0_31_0_5_2 => rf_n_38,
      rf_reg_r1_0_31_0_5_3 => rf_n_39,
      rf_reg_r1_0_31_12_17_i_1(3 downto 0) => \^pc\(14 downto 11),
      rf_reg_r1_0_31_12_17_i_11(3 downto 0) => \^pc\(18 downto 15),
      rf_reg_r1_0_31_18_23_i_11(3 downto 0) => \^pc\(22 downto 19),
      rf_reg_r1_0_31_24_29_i_15(2 downto 0) => \^pc\(29 downto 27),
      rf_reg_r1_0_31_24_29_i_15_0(0) => \^pc\(30),
      rf_reg_r1_0_31_24_29_i_7(3 downto 0) => \^pc\(26 downto 23),
      rf_reg_r1_0_31_6_11 => rf_n_40,
      rf_reg_r1_0_31_6_11_0 => rf_n_41,
      rf_reg_r1_0_31_6_11_i_3(3 downto 0) => \^pc\(10 downto 7),
      wd3(6 downto 0) => wd3(7 downto 1)
    );
pcaddbranch: entity work.design_1_top_0_0_adder_0
     port map (
      DI(3 downto 1) => \^pc\(2 downto 0),
      DI(0) => \^q_reg[0]\,
      Instr(2 downto 1) => Instr(3 downto 2),
      Instr(0) => Instr(0),
      S(3) => pcreg_n_100,
      S(2) => pcreg_n_101,
      S(1) => pcreg_n_102,
      S(0) => pcreg_n_103,
      d2(11 downto 0) => d2(27 downto 16),
      \q_reg[19]\ => pcaddbranch_n_20,
      \q_reg[19]_0\ => pcaddbranch_n_21,
      \q_reg[19]_1\ => pcaddbranch_n_22,
      \q_reg[19]_2\ => pcaddbranch_n_23,
      \q_reg[23]\ => pcaddbranch_n_24,
      \q_reg[23]_0\ => pcaddbranch_n_25,
      \q_reg[23]_1\ => pcaddbranch_n_26,
      \q_reg[23]_2\ => pcaddbranch_n_27,
      \q_reg[27]\ => pcaddbranch_n_28,
      \q_reg[27]_0\ => pcaddbranch_n_29,
      \q_reg[27]_1\ => pcaddbranch_n_30,
      \q_reg[27]_2\ => pcaddbranch_n_31,
      \q_reg[30]\(19 downto 16) => d3(31 downto 28),
      \q_reg[30]\(15 downto 0) => d3(15 downto 0),
      rf_reg_r1_0_31_0_5_i_7(3 downto 0) => \^pc\(6 downto 3),
      rf_reg_r1_0_31_0_5_i_7_0(3) => pcreg_n_104,
      rf_reg_r1_0_31_0_5_i_7_0(2) => pcreg_n_105,
      rf_reg_r1_0_31_0_5_i_7_0(1) => pcreg_n_106,
      rf_reg_r1_0_31_0_5_i_7_0(0) => pcreg_n_107,
      rf_reg_r1_0_31_12_17_i_14_0(3 downto 0) => \^pc\(18 downto 15),
      rf_reg_r1_0_31_12_17_i_14_1(3) => pcreg_n_116,
      rf_reg_r1_0_31_12_17_i_14_1(2) => pcreg_n_117,
      rf_reg_r1_0_31_12_17_i_14_1(1) => pcreg_n_118,
      rf_reg_r1_0_31_12_17_i_14_1(0) => pcreg_n_119,
      rf_reg_r1_0_31_12_17_i_2(3 downto 0) => \^pc\(14 downto 11),
      rf_reg_r1_0_31_12_17_i_2_0(3) => pcreg_n_112,
      rf_reg_r1_0_31_12_17_i_2_0(2) => pcreg_n_113,
      rf_reg_r1_0_31_12_17_i_2_0(1) => pcreg_n_114,
      rf_reg_r1_0_31_12_17_i_2_0(0) => pcreg_n_115,
      rf_reg_r1_0_31_18_23_i_13_0(3 downto 0) => \^pc\(22 downto 19),
      rf_reg_r1_0_31_18_23_i_13_1(3) => pcreg_n_120,
      rf_reg_r1_0_31_18_23_i_13_1(2) => pcreg_n_121,
      rf_reg_r1_0_31_18_23_i_13_1(1) => pcreg_n_122,
      rf_reg_r1_0_31_18_23_i_13_1(0) => pcreg_n_123,
      rf_reg_r1_0_31_24_29_i_17(2 downto 0) => \^pc\(29 downto 27),
      rf_reg_r1_0_31_24_29_i_17_0(3) => pcreg_n_88,
      rf_reg_r1_0_31_24_29_i_17_0(2) => pcreg_n_89,
      rf_reg_r1_0_31_24_29_i_17_0(1) => pcreg_n_90,
      rf_reg_r1_0_31_24_29_i_17_0(0) => pcreg_n_91,
      rf_reg_r1_0_31_24_29_i_9_0(3 downto 0) => \^pc\(26 downto 23),
      rf_reg_r1_0_31_24_29_i_9_1(3) => pcreg_n_124,
      rf_reg_r1_0_31_24_29_i_9_1(2) => pcreg_n_125,
      rf_reg_r1_0_31_24_29_i_9_1(1) => pcreg_n_126,
      rf_reg_r1_0_31_24_29_i_9_1(0) => pcreg_n_127,
      rf_reg_r1_0_31_6_11_i_4(3 downto 0) => \^pc\(10 downto 7),
      rf_reg_r1_0_31_6_11_i_4_0(3) => pcreg_n_108,
      rf_reg_r1_0_31_6_11_i_4_0(2) => pcreg_n_109,
      rf_reg_r1_0_31_6_11_i_4_0(1) => pcreg_n_110,
      rf_reg_r1_0_31_6_11_i_4_0(0) => pcreg_n_111
    );
pcreg: entity work.design_1_top_0_0_flopenr
     port map (
      ALUControl(0) => ALUControl(0),
      \ALUControl__0\(1 downto 0) => \ALUControl__0\(2 downto 1),
      ALUResult(0) => \^aluresult\(24),
      \ALUResult[19]_INST_0_i_5_0\ => pcreg_n_86,
      \ALUResult[30]_INST_0_i_4_0\ => pcreg_n_99,
      \ALUResult[30]_INST_0_i_5_0\ => pcreg_n_92,
      \ALUResult[31]_INST_0_i_12\ => pcreg_n_54,
      \ALUResult[31]_INST_0_i_12_0\ => pcreg_n_55,
      \ALUResult[31]_INST_0_i_14_0\ => pcreg_n_47,
      \ALUResult[31]_INST_0_i_14_1\ => pcreg_n_48,
      \ALUResult[31]_INST_0_i_16_0\ => pcreg_n_39,
      \ALUResult[31]_INST_0_i_16_1\ => pcreg_n_43,
      \ALUResult[31]_INST_0_i_16_2\ => pcreg_n_44,
      \ALUResult[31]_INST_0_i_16_3\ => pcreg_n_45,
      \ALUResult[31]_INST_0_i_18_0\(27 downto 11) => \ext/immext\(28 downto 12),
      \ALUResult[31]_INST_0_i_18_0\(10 downto 0) => \ext/immext\(10 downto 0),
      \ALUResult[31]_INST_0_i_18_1\ => pcreg_n_87,
      \ALUResult[31]_INST_0_i_22_0\ => pcreg_n_51,
      \ALUResult[31]_INST_0_i_23_0\ => pcreg_n_50,
      \ALUResult[31]_INST_0_i_3_0\ => pcreg_n_46,
      \ALUResult[31]_INST_0_i_9_0\ => pcreg_n_49,
      DI(3 downto 1) => \^pc\(2 downto 0),
      DI(0) => \^q_reg[0]\,
      Instr(29 downto 0) => Instr(29 downto 0),
      O(3) => rf_n_113,
      O(2) => rf_n_114,
      O(1) => rf_n_115,
      O(0) => rf_n_116,
      PCReady => PCReady,
      PCSrc(0) => PCSrc(1),
      S(2) => pcreg_n_32,
      S(1) => pcreg_n_33,
      S(0) => pcreg_n_34,
      clk => clk,
      d2(3 downto 0) => d2(31 downto 28),
      \q[31]_i_11_0\(0) => PCSrc(0),
      \q[31]_i_15_0\ => pcreg_n_97,
      \q[31]_i_18_0\ => pcreg_n_56,
      \q_reg[11]_0\(3 downto 0) => \^pc\(10 downto 7),
      \q_reg[11]_1\(3) => pcreg_n_108,
      \q_reg[11]_1\(2) => pcreg_n_109,
      \q_reg[11]_1\(1) => pcreg_n_110,
      \q_reg[11]_1\(0) => pcreg_n_111,
      \q_reg[11]_2\(3) => rf_n_121,
      \q_reg[11]_2\(2) => rf_n_122,
      \q_reg[11]_2\(1) => rf_n_123,
      \q_reg[11]_2\(0) => rf_n_124,
      \q_reg[15]_0\(3 downto 0) => \^pc\(14 downto 11),
      \q_reg[15]_1\(3) => pcreg_n_112,
      \q_reg[15]_1\(2) => pcreg_n_113,
      \q_reg[15]_1\(1) => pcreg_n_114,
      \q_reg[15]_1\(0) => pcreg_n_115,
      \q_reg[15]_2\(3) => rf_n_125,
      \q_reg[15]_2\(2) => rf_n_126,
      \q_reg[15]_2\(1) => rf_n_127,
      \q_reg[15]_2\(0) => rf_n_128,
      \q_reg[19]_0\(3 downto 0) => \^pc\(18 downto 15),
      \q_reg[19]_1\(3) => pcreg_n_116,
      \q_reg[19]_1\(2) => pcreg_n_117,
      \q_reg[19]_1\(1) => pcreg_n_118,
      \q_reg[19]_1\(0) => pcreg_n_119,
      \q_reg[19]_2\(3) => rf_n_129,
      \q_reg[19]_2\(2) => rf_n_130,
      \q_reg[19]_2\(1) => rf_n_131,
      \q_reg[19]_2\(0) => rf_n_132,
      \q_reg[23]_0\(3 downto 0) => \^pc\(22 downto 19),
      \q_reg[23]_1\(3) => pcreg_n_120,
      \q_reg[23]_1\(2) => pcreg_n_121,
      \q_reg[23]_1\(1) => pcreg_n_122,
      \q_reg[23]_1\(0) => pcreg_n_123,
      \q_reg[23]_2\(3) => rf_n_133,
      \q_reg[23]_2\(2) => rf_n_134,
      \q_reg[23]_2\(1) => rf_n_135,
      \q_reg[23]_2\(0) => rf_n_136,
      \q_reg[27]_0\(3 downto 0) => \^pc\(26 downto 23),
      \q_reg[27]_1\(3) => pcreg_n_124,
      \q_reg[27]_1\(2) => pcreg_n_125,
      \q_reg[27]_1\(1) => pcreg_n_126,
      \q_reg[27]_1\(0) => pcreg_n_127,
      \q_reg[27]_2\(3) => rf_n_137,
      \q_reg[27]_2\(2) => rf_n_138,
      \q_reg[27]_2\(1) => rf_n_139,
      \q_reg[27]_2\(0) => rf_n_140,
      \q_reg[2]_0\(0) => pcreg_n_98,
      \q_reg[30]_0\(2 downto 0) => \^pc\(29 downto 27),
      \q_reg[30]_1\ => pcreg_n_93,
      \q_reg[30]_2\ => pcreg_n_94,
      \q_reg[31]_0\(0) => \^pc\(30),
      \q_reg[31]_1\(3) => pcreg_n_88,
      \q_reg[31]_1\(2) => pcreg_n_89,
      \q_reg[31]_1\(1) => pcreg_n_90,
      \q_reg[31]_1\(0) => pcreg_n_91,
      \q_reg[31]_2\(3) => rf_n_141,
      \q_reg[31]_2\(2) => rf_n_142,
      \q_reg[31]_2\(1) => rf_n_143,
      \q_reg[31]_2\(0) => rf_n_144,
      \q_reg[31]_3\ => \^aluresult[31]_inst_0_i_6\,
      \q_reg[31]_4\ => \^aluresult[31]_inst_0_i_3\,
      \q_reg[3]_0\(3) => pcreg_n_100,
      \q_reg[3]_0\(2) => pcreg_n_101,
      \q_reg[3]_0\(1) => pcreg_n_102,
      \q_reg[3]_0\(0) => pcreg_n_103,
      \q_reg[7]_0\(3 downto 0) => \^pc\(6 downto 3),
      \q_reg[7]_1\(3) => pcreg_n_104,
      \q_reg[7]_1\(2) => pcreg_n_105,
      \q_reg[7]_1\(1) => pcreg_n_106,
      \q_reg[7]_1\(0) => pcreg_n_107,
      \q_reg[7]_2\(3) => rf_n_117,
      \q_reg[7]_2\(2) => rf_n_118,
      \q_reg[7]_2\(1) => rf_n_119,
      \q_reg[7]_2\(0) => rf_n_120,
      rd11 => rd11,
      rd21 => rd21,
      reset => reset,
      rf_reg_r1_0_31_0_5 => rf_n_6,
      \rf_reg_r1_0_31_30_31_i_1__0_0\(4 downto 1) => d3(31 downto 28),
      \rf_reg_r1_0_31_30_31_i_1__0_0\(0) => d3(0),
      rf_reg_r2_0_31_30_31 => rf_n_79,
      \rf_reg_r2_0_31_30_31__0\ => rf_n_42,
      \rf_reg_r2_0_31_30_31__0_0\ => rf_n_80,
      \^s\(1 downto 0) => s(1 downto 0),
      sel0(2 downto 0) => sel0(2 downto 0),
      wd3(2 downto 1) => wd3(31 downto 30),
      wd3(0) => wd3(0),
      \y_carry__1\(0) => \ext/immext\(11),
      y_carry_i_5_0 => pcreg_n_85
    );
rf: entity work.design_1_top_0_0_regfile
     port map (
      ALUControl(0) => ALUControl(0),
      \ALUControl__0\(0) => \ALUControl__0\(1),
      ALUResult(24 downto 0) => \^aluresult\(24 downto 0),
      \ALUResult[0]_INST_0_i_3_0\ => \ALUResult[0]_INST_0_i_3\,
      \ALUResult[0]_INST_0_i_6_0\ => rf_n_209,
      \ALUResult[1]_INST_0_i_4_0\ => \ALUResult[1]_INST_0_i_4\,
      \ALUResult[30]_INST_0_i_10_0\ => pcreg_n_54,
      \ALUResult[30]_INST_0_i_1_0\ => rf_n_77,
      \ALUResult[30]_INST_0_i_9_0\ => rf_n_78,
      \ALUResult[31]_INST_0_i_3\ => \ALUResult[31]_INST_0_i_3_0\,
      \ALUResult[31]_INST_0_i_3_0\ => \ALUResult[31]_INST_0_i_3_1\,
      \ALUResult[31]_INST_0_i_3_1\ => \ALUResult[31]_INST_0_i_3_2\,
      \ALUResult[31]_INST_0_i_6_0\ => \^aluresult[31]_inst_0_i_6\,
      \ALUResult[7]_INST_0_i_25_0\ => pcreg_n_44,
      \ALUResult[7]_INST_0_i_25_1\ => pcreg_n_39,
      \ALUResult[7]_INST_0_i_25_2\ => pcreg_n_45,
      CO(0) => sum_extended(32),
      DI(3 downto 1) => \^pc\(2 downto 0),
      DI(0) => \^q_reg[0]\,
      Instr(27 downto 3) => Instr(29 downto 5),
      Instr(2 downto 1) => Instr(3 downto 2),
      Instr(0) => Instr(0),
      LT => LT,
      O(0) => p_3_in,
      PCSrc(0) => PCSrc(1),
      ReadData(31 downto 0) => ReadData(31 downto 0),
      S(2) => pcreg_n_32,
      S(1) => pcreg_n_33,
      S(0) => pcreg_n_34,
      SrcA(31 downto 0) => SrcA(31 downto 0),
      WriteData(31 downto 0) => WriteData(31 downto 0),
      \addressM[0]\ => pcreg_n_48,
      \addressM[0]_0\ => pcreg_n_47,
      \addressM[0]_1\ => pcreg_n_50,
      \addressM[0]_2\ => pcreg_n_51,
      \addressM[11]\ => pcreg_n_85,
      \addressM[16]\ => pcreg_n_55,
      \addressM[16]_0\ => pcreg_n_49,
      \addressM[1]\ => pcreg_n_43,
      \addressM[20]\ => pcreg_n_92,
      \addressM[29]\(29 downto 0) => sum(29 downto 0),
      clk => clk,
      clk_0(1 downto 0) => SrcB(31 downto 30),
      clk_1(3) => rf_n_145,
      clk_1(2) => rf_n_146,
      clk_1(1) => rf_n_147,
      clk_1(0) => rf_n_148,
      clk_10(3) => rf_n_181,
      clk_10(2) => rf_n_182,
      clk_10(1) => rf_n_183,
      clk_10(0) => rf_n_184,
      clk_11(3) => rf_n_185,
      clk_11(2) => rf_n_186,
      clk_11(1) => rf_n_187,
      clk_11(0) => rf_n_188,
      clk_12(3) => rf_n_189,
      clk_12(2) => rf_n_190,
      clk_12(1) => rf_n_191,
      clk_12(0) => rf_n_192,
      clk_13(3) => rf_n_193,
      clk_13(2) => rf_n_194,
      clk_13(1) => rf_n_195,
      clk_13(0) => rf_n_196,
      clk_14(3) => rf_n_197,
      clk_14(2) => rf_n_198,
      clk_14(1) => rf_n_199,
      clk_14(0) => rf_n_200,
      clk_15(3) => rf_n_201,
      clk_15(2) => rf_n_202,
      clk_15(1) => rf_n_203,
      clk_15(0) => rf_n_204,
      clk_16(3) => rf_n_205,
      clk_16(2) => rf_n_206,
      clk_16(1) => rf_n_207,
      clk_16(0) => rf_n_208,
      clk_2(3) => rf_n_149,
      clk_2(2) => rf_n_150,
      clk_2(1) => rf_n_151,
      clk_2(0) => rf_n_152,
      clk_3(3) => rf_n_153,
      clk_3(2) => rf_n_154,
      clk_3(1) => rf_n_155,
      clk_3(0) => rf_n_156,
      clk_4(3) => rf_n_157,
      clk_4(2) => rf_n_158,
      clk_4(1) => rf_n_159,
      clk_4(0) => rf_n_160,
      clk_5(3) => rf_n_161,
      clk_5(2) => rf_n_162,
      clk_5(1) => rf_n_163,
      clk_5(0) => rf_n_164,
      clk_6(3) => rf_n_165,
      clk_6(2) => rf_n_166,
      clk_6(1) => rf_n_167,
      clk_6(0) => rf_n_168,
      clk_7(3) => rf_n_169,
      clk_7(2) => rf_n_170,
      clk_7(1) => rf_n_171,
      clk_7(0) => rf_n_172,
      clk_8(3) => rf_n_173,
      clk_8(2) => rf_n_174,
      clk_8(1) => rf_n_175,
      clk_8(0) => rf_n_176,
      clk_9(3) => rf_n_177,
      clk_9(2) => rf_n_178,
      clk_9(1) => rf_n_179,
      clk_9(0) => rf_n_180,
      d2(27 downto 0) => d2(28 downto 1),
      immext(28 downto 0) => \ext/immext\(28 downto 0),
      \q[31]_i_25_0\ => pcreg_n_46,
      \q[31]_i_5\ => pcreg_n_97,
      \q[31]_i_5_0\ => pcreg_n_56,
      \q[31]_i_9_0\ => \^aluresult[31]_inst_0_i_3\,
      \q_reg[11]\(3) => rf_n_121,
      \q_reg[11]\(2) => rf_n_122,
      \q_reg[11]\(1) => rf_n_123,
      \q_reg[11]\(0) => rf_n_124,
      \q_reg[11]_0\(3 downto 0) => \^pc\(10 downto 7),
      \q_reg[15]\(3) => rf_n_125,
      \q_reg[15]\(2) => rf_n_126,
      \q_reg[15]\(1) => rf_n_127,
      \q_reg[15]\(0) => rf_n_128,
      \q_reg[15]_0\(3 downto 0) => \^pc\(14 downto 11),
      \q_reg[19]\(3) => rf_n_129,
      \q_reg[19]\(2) => rf_n_130,
      \q_reg[19]\(1) => rf_n_131,
      \q_reg[19]\(0) => rf_n_132,
      \q_reg[19]_0\ => pcreg_n_87,
      \q_reg[19]_1\ => pcreg_n_86,
      \q_reg[19]_2\(3 downto 0) => \^pc\(18 downto 15),
      \q_reg[23]\(3) => rf_n_133,
      \q_reg[23]\(2) => rf_n_134,
      \q_reg[23]\(1) => rf_n_135,
      \q_reg[23]\(0) => rf_n_136,
      \q_reg[23]_0\(3 downto 0) => \^pc\(22 downto 19),
      \q_reg[27]\(3) => rf_n_137,
      \q_reg[27]\(2) => rf_n_138,
      \q_reg[27]\(1) => rf_n_139,
      \q_reg[27]\(0) => rf_n_140,
      \q_reg[27]_0\(3 downto 0) => \^pc\(26 downto 23),
      \q_reg[31]\(3) => rf_n_141,
      \q_reg[31]\(2) => rf_n_142,
      \q_reg[31]\(1) => rf_n_143,
      \q_reg[31]\(0) => rf_n_144,
      \q_reg[31]_0\ => pcreg_n_99,
      \q_reg[31]_1\(0) => \^pc\(27),
      \q_reg[3]\(3) => rf_n_113,
      \q_reg[3]\(2) => rf_n_114,
      \q_reg[3]\(1) => rf_n_115,
      \q_reg[3]\(0) => rf_n_116,
      \q_reg[3]_0\(0) => PCSrc(0),
      \q_reg[7]\(3) => rf_n_117,
      \q_reg[7]\(2) => rf_n_118,
      \q_reg[7]\(1) => rf_n_119,
      \q_reg[7]\(0) => rf_n_120,
      \q_reg[7]_0\(3 downto 0) => \^pc\(6 downto 3),
      rd11 => rd11,
      rd21 => rd21,
      \readDataM[0]\ => rf_n_6,
      \readDataM[15]\ => rf_n_42,
      \readDataM[1]\ => rf_n_10,
      \readDataM[2]\ => rf_n_11,
      \readDataM[30]\ => rf_n_79,
      \readDataM[31]\ => rf_n_80,
      \readDataM[3]\ => rf_n_37,
      \readDataM[4]\ => rf_n_38,
      \readDataM[5]\ => rf_n_39,
      \readDataM[6]\ => rf_n_40,
      \readDataM[7]\ => rf_n_41,
      rf_reg_r2_0_31_12_17_0(7 downto 0) => d3(15 downto 8),
      rf_reg_r2_0_31_12_17_1 => pcaddbranch_n_20,
      rf_reg_r2_0_31_12_17_2 => pcaddbranch_n_21,
      rf_reg_r2_0_31_18_23_0 => pcaddbranch_n_22,
      rf_reg_r2_0_31_18_23_1 => pcaddbranch_n_23,
      rf_reg_r2_0_31_18_23_2 => pcaddbranch_n_24,
      rf_reg_r2_0_31_18_23_3 => pcaddbranch_n_25,
      rf_reg_r2_0_31_18_23_4 => pcaddbranch_n_26,
      rf_reg_r2_0_31_18_23_5 => pcaddbranch_n_27,
      rf_reg_r2_0_31_24_29_0 => pcaddbranch_n_28,
      rf_reg_r2_0_31_24_29_1 => pcaddbranch_n_29,
      rf_reg_r2_0_31_24_29_2 => pcaddbranch_n_30,
      rf_reg_r2_0_31_24_29_3 => pcaddbranch_n_31,
      rf_reg_r2_0_31_24_29_4 => pcreg_n_93,
      rf_reg_r2_0_31_24_29_5 => pcreg_n_94,
      \^s\(1 downto 0) => s(1 downto 0),
      sel0(2 downto 0) => sel0(2 downto 0),
      \writeDataM[31]\(9 downto 8) => wd3(31 downto 30),
      \writeDataM[31]\(7 downto 0) => wd3(7 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_riscv_single is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    PC : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Instr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    MemWrite : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ALUResult : out STD_LOGIC_VECTOR ( 31 downto 0 );
    WriteData : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ReadData : in STD_LOGIC_VECTOR ( 31 downto 0 );
    PCReady : in STD_LOGIC;
    MemStrobe : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_0_0_riscv_single : entity is "riscv_single";
end design_1_top_0_0_riscv_single;

architecture STRUCTURE of design_1_top_0_0_riscv_single is
  signal \<const0>\ : STD_LOGIC;
  signal \^memwrite\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of MemStrobe_INST_0 : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \MemWrite[0]_INST_0\ : label is "soft_lutpair38";
begin
  MemWrite(1) <= \<const0>\;
  MemWrite(0) <= \^memwrite\(0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
MemStrobe_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Instr(4),
      I1 => Instr(6),
      O => MemStrobe
    );
\MemWrite[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => Instr(4),
      I1 => Instr(5),
      I2 => Instr(12),
      I3 => Instr(6),
      O => \^memwrite\(0)
    );
dp: entity work.design_1_top_0_0_datapath
     port map (
      ALUResult(24 downto 7) => ALUResult(29 downto 12),
      ALUResult(6) => ALUResult(9),
      ALUResult(5 downto 0) => ALUResult(7 downto 2),
      \ALUResult[0]_INST_0_i_3\ => ALUResult(0),
      \ALUResult[1]_INST_0_i_4\ => ALUResult(1),
      \ALUResult[31]_INST_0_i_3\ => ALUResult(30),
      \ALUResult[31]_INST_0_i_3_0\ => ALUResult(8),
      \ALUResult[31]_INST_0_i_3_1\ => ALUResult(11),
      \ALUResult[31]_INST_0_i_3_2\ => ALUResult(10),
      \ALUResult[31]_INST_0_i_6\ => ALUResult(31),
      Instr(29 downto 0) => Instr(31 downto 2),
      PC(30 downto 0) => PC(31 downto 1),
      PCReady => PCReady,
      ReadData(31 downto 0) => ReadData(31 downto 0),
      WriteData(31 downto 0) => WriteData(31 downto 0),
      clk => clk,
      \q_reg[0]\ => PC(0),
      reset => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_top is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    doneM : in STD_LOGIC;
    readDataM : in STD_LOGIC_VECTOR ( 31 downto 0 );
    writeDataM : out STD_LOGIC_VECTOR ( 31 downto 0 );
    addressM : out STD_LOGIC_VECTOR ( 31 downto 0 );
    DRW : out STD_LOGIC;
    AXIStart : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_0_0_top : entity is "top";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of design_1_top_0_0_top : entity is "soft";
end design_1_top_0_0_top;

architecture STRUCTURE of design_1_top_0_0_top is
  signal Instr : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of Instr : signal is std.standard.true;
  signal MStrobe : STD_LOGIC;
  signal MemWrite : STD_LOGIC;
  signal PC : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute MARK_DEBUG of PC : signal is std.standard.true;
  signal PCReady : STD_LOGIC;
  attribute MARK_DEBUG of PCReady : signal is std.standard.true;
  signal NLW_riscv_single_MemWrite_UNCONNECTED : STD_LOGIC_VECTOR ( 1 to 1 );
  attribute KEEP_HIERARCHY of memcontrol : label is "soft";
  attribute KEEP_HIERARCHY of riscv_single : label is "soft";
  attribute mark_debug_string : string;
  attribute mark_debug_string of reset : signal is "true";
  attribute mark_debug_string of addressM : signal is "true";
  attribute mark_debug_string of readDataM : signal is "true";
  attribute mark_debug_string of writeDataM : signal is "true";
begin
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(31)
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(30)
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(21)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(20)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(19)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(18)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(17)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(16)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(15)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(14)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(13)
    );
i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(12)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(29)
    );
i_20: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(11)
    );
i_21: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(10)
    );
i_22: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(9)
    );
i_23: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(8)
    );
i_24: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(7)
    );
i_25: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(6)
    );
i_26: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(5)
    );
i_27: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(4)
    );
i_28: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(3)
    );
i_29: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(2)
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(28)
    );
i_30: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(1)
    );
i_31: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(0)
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(27)
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(26)
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(25)
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(24)
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(23)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(22)
    );
memcontrol: entity work.design_1_top_0_0_MemControl
     port map (
      AXIstart => AXIStart,
      DRW => DRW,
      Done => PCReady,
      MStrobe => MStrobe,
      MemWrite => MemWrite,
      Trigger => doneM,
      clk => clk,
      reset => reset
    );
riscv_single: entity work.design_1_top_0_0_riscv_single
     port map (
      ALUResult(31 downto 0) => addressM(31 downto 0),
      Instr(31 downto 2) => Instr(31 downto 2),
      Instr(1 downto 0) => B"00",
      MemStrobe => MStrobe,
      MemWrite(1) => NLW_riscv_single_MemWrite_UNCONNECTED(1),
      MemWrite(0) => MemWrite,
      PC(31 downto 0) => PC(31 downto 0),
      PCReady => PCReady,
      ReadData(31 downto 0) => readDataM(31 downto 0),
      WriteData(31 downto 0) => writeDataM(31 downto 0),
      clk => clk,
      reset => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    doneM : in STD_LOGIC;
    readDataM : in STD_LOGIC_VECTOR ( 31 downto 0 );
    writeDataM : out STD_LOGIC_VECTOR ( 31 downto 0 );
    addressM : out STD_LOGIC_VECTOR ( 31 downto 0 );
    DRW : out STD_LOGIC;
    AXIStart : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_top_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_top_0_0 : entity is "design_1_top_0_0,top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_top_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_top_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_top_0_0 : entity is "top,Vivado 2023.2";
end design_1_top_0_0;

architecture STRUCTURE of design_1_top_0_0 is
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of inst : label is "soft";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.design_1_top_0_0_top
     port map (
      AXIStart => AXIStart,
      DRW => DRW,
      addressM(31 downto 0) => addressM(31 downto 0),
      clk => clk,
      doneM => doneM,
      readDataM(31 downto 0) => readDataM(31 downto 0),
      reset => reset,
      writeDataM(31 downto 0) => writeDataM(31 downto 0)
    );
end STRUCTURE;
