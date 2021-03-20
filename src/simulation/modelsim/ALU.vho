-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "05/21/2020 18:18:47"

-- 
-- Device: Altera EP2C5F256C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ALU IS
    PORT (
	a : IN std_logic_vector(15 DOWNTO 0);
	b : IN std_logic_vector(15 DOWNTO 0);
	opcode : IN std_logic_vector(2 DOWNTO 0);
	overflow : OUT std_logic;
	Result : OUT std_logic_vector(15 DOWNTO 0)
	);
END ALU;

-- Design Ports Information
-- overflow	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Result[0]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Result[1]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Result[2]	=>  Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Result[3]	=>  Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Result[4]	=>  Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Result[5]	=>  Location: PIN_E16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Result[6]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Result[7]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Result[8]	=>  Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Result[9]	=>  Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Result[10]	=>  Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Result[11]	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Result[12]	=>  Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Result[13]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Result[14]	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Result[15]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- a[0]	=>  Location: PIN_L10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[0]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[1]	=>  Location: PIN_N16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[1]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[2]	=>  Location: PIN_R13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[2]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[3]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[3]	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[4]	=>  Location: PIN_M16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[4]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[5]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[5]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[6]	=>  Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[6]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[7]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[7]	=>  Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[8]	=>  Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[8]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[9]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[9]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[10]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[10]	=>  Location: PIN_L16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[11]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[11]	=>  Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[12]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[12]	=>  Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[13]	=>  Location: PIN_P16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[13]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[14]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[14]	=>  Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[15]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[15]	=>  Location: PIN_M14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- opcode[1]	=>  Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- opcode[0]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- opcode[2]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF ALU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_opcode : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_overflow : std_logic;
SIGNAL ww_Result : std_logic_vector(15 DOWNTO 0);
SIGNAL \Selection|comb~2_combout\ : std_logic;
SIGNAL \Selection|Equal6~0_combout\ : std_logic;
SIGNAL \Selection|sBinvert[0]~0_combout\ : std_logic;
SIGNAL \Selection|comb~4_combout\ : std_logic;
SIGNAL \Selection|comb~3_combout\ : std_logic;
SIGNAL \Alu0stage1|Step6|Mux0~0_combout\ : std_logic;
SIGNAL \Selection|soperation[1]~0_combout\ : std_logic;
SIGNAL \Selection|comb~0_combout\ : std_logic;
SIGNAL \Selection|comb~1_combout\ : std_logic;
SIGNAL \Alu0stage1|Step6|Mux0~1_combout\ : std_logic;
SIGNAL \Alu0stage1|Step6|Mux0~2_combout\ : std_logic;
SIGNAL \leftAlus:1:Alusstage1|Step1|out1~0_combout\ : std_logic;
SIGNAL \leftAlus:1:Alusstage1|Step0|out1~0_combout\ : std_logic;
SIGNAL \leftAlus:1:Alusstage1|Step6|Mux0~0_combout\ : std_logic;
SIGNAL \leftAlus:2:Alusstage1|Step0|out1~0_combout\ : std_logic;
SIGNAL \leftAlus:2:Alusstage1|Step1|out1~0_combout\ : std_logic;
SIGNAL \leftAlus:2:Alusstage1|Step6|Mux0~0_combout\ : std_logic;
SIGNAL \leftAlus:3:Alusstage1|Step1|out1~0_combout\ : std_logic;
SIGNAL \leftAlus:3:Alusstage1|Step0|out1~0_combout\ : std_logic;
SIGNAL \leftAlus:3:Alusstage1|Step6|Mux0~0_combout\ : std_logic;
SIGNAL \leftAlus:4:Alusstage1|Step0|out1~0_combout\ : std_logic;
SIGNAL \leftAlus:4:Alusstage1|Step1|out1~0_combout\ : std_logic;
SIGNAL \leftAlus:4:Alusstage1|Step6|Mux0~0_combout\ : std_logic;
SIGNAL \leftAlus:5:Alusstage1|Step1|out1~0_combout\ : std_logic;
SIGNAL \leftAlus:5:Alusstage1|Step0|out1~0_combout\ : std_logic;
SIGNAL \leftAlus:5:Alusstage1|Step6|Mux0~0_combout\ : std_logic;
SIGNAL \leftAlus:6:Alusstage1|Step0|out1~0_combout\ : std_logic;
SIGNAL \leftAlus:6:Alusstage1|Step1|out1~0_combout\ : std_logic;
SIGNAL \leftAlus:6:Alusstage1|Step6|Mux0~0_combout\ : std_logic;
SIGNAL \leftAlus:7:Alusstage1|Step0|out1~0_combout\ : std_logic;
SIGNAL \leftAlus:7:Alusstage1|Step1|out1~0_combout\ : std_logic;
SIGNAL \leftAlus:7:Alusstage1|Step6|Mux0~0_combout\ : std_logic;
SIGNAL \leftAlus:8:Alusstage1|Step0|out1~0_combout\ : std_logic;
SIGNAL \leftAlus:8:Alusstage1|Step1|out1~0_combout\ : std_logic;
SIGNAL \leftAlus:8:Alusstage1|Step6|Mux0~0_combout\ : std_logic;
SIGNAL \leftAlus:9:Alusstage1|Step0|out1~0_combout\ : std_logic;
SIGNAL \leftAlus:9:Alusstage1|Step1|out1~0_combout\ : std_logic;
SIGNAL \leftAlus:9:Alusstage1|Step6|Mux0~0_combout\ : std_logic;
SIGNAL \leftAlus:10:Alusstage1|Step1|out1~0_combout\ : std_logic;
SIGNAL \leftAlus:10:Alusstage1|Step0|out1~0_combout\ : std_logic;
SIGNAL \leftAlus:10:Alusstage1|Step6|Mux0~0_combout\ : std_logic;
SIGNAL \leftAlus:11:Alusstage1|Step1|out1~0_combout\ : std_logic;
SIGNAL \leftAlus:11:Alusstage1|Step0|out1~0_combout\ : std_logic;
SIGNAL \leftAlus:11:Alusstage1|Step6|Mux0~0_combout\ : std_logic;
SIGNAL \leftAlus:12:Alusstage1|Step1|out1~0_combout\ : std_logic;
SIGNAL \leftAlus:12:Alusstage1|Step0|out1~0_combout\ : std_logic;
SIGNAL \leftAlus:12:Alusstage1|Step6|Mux0~0_combout\ : std_logic;
SIGNAL \leftAlus:13:Alusstage1|Step0|out1~0_combout\ : std_logic;
SIGNAL \leftAlus:13:Alusstage1|Step1|out1~0_combout\ : std_logic;
SIGNAL \leftAlus:13:Alusstage1|Step6|Mux0~0_combout\ : std_logic;
SIGNAL \leftAlus:14:Alusstage1|Step1|out1~0_combout\ : std_logic;
SIGNAL \leftAlus:14:Alusstage1|Step0|out1~0_combout\ : std_logic;
SIGNAL \leftAlus:14:Alusstage1|Step6|Mux0~0_combout\ : std_logic;
SIGNAL \leftAlus:15:Alusstage1|Step0|out1~0_combout\ : std_logic;
SIGNAL \leftAlus:15:Alusstage1|Step1|out1~0_combout\ : std_logic;
SIGNAL \leftAlus:15:Alusstage1|Step6|Mux0~0_combout\ : std_logic;
SIGNAL \Selection|soperation\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Selection|sCarryIn\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Selection|sBinvert\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Selection|sAinvert\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \opcode~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \b~combout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \a~combout\ : std_logic_vector(15 DOWNTO 0);

BEGIN

ww_a <= a;
ww_b <= b;
ww_opcode <= opcode;
overflow <= ww_overflow;
Result <= ww_Result;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X21_Y10_N12
\Selection|comb~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selection|comb~2_combout\ = ((\opcode~combout\(1) & !\opcode~combout\(0))) # (!\opcode~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(1),
	datac => \opcode~combout\(0),
	datad => \opcode~combout\(2),
	combout => \Selection|comb~2_combout\);

-- Location: LCCOMB_X21_Y10_N28
\Selection|Equal6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selection|Equal6~0_combout\ = (\opcode~combout\(0) & \opcode~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \opcode~combout\(0),
	datad => \opcode~combout\(1),
	combout => \Selection|Equal6~0_combout\);

-- Location: LCCOMB_X21_Y10_N6
\Selection|sCarryIn[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selection|sCarryIn\(0) = (\Selection|Equal6~0_combout\ & ((\Selection|sCarryIn\(0)) # (!\opcode~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \opcode~combout\(2),
	datac => \Selection|Equal6~0_combout\,
	datad => \Selection|sCarryIn\(0),
	combout => \Selection|sCarryIn\(0));

-- Location: PIN_L10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(0),
	combout => \a~combout\(0));

-- Location: PIN_R13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(2),
	combout => \a~combout\(2));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(3),
	combout => \a~combout\(3));

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(3),
	combout => \b~combout\(3));

-- Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(6),
	combout => \a~combout\(6));

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(8),
	combout => \b~combout\(8));

-- Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\opcode[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_opcode(1),
	combout => \opcode~combout\(1));

-- Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\opcode[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_opcode(2),
	combout => \opcode~combout\(2));

-- Location: LCCOMB_X21_Y10_N30
\Selection|sBinvert[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selection|sBinvert[0]~0_combout\ = (!\opcode~combout\(1) & \opcode~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(1),
	datad => \opcode~combout\(2),
	combout => \Selection|sBinvert[0]~0_combout\);

-- Location: LCCOMB_X21_Y10_N26
\Selection|sAinvert[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selection|sAinvert\(0) = (!\Selection|comb~2_combout\ & ((\Selection|sBinvert[0]~0_combout\) # (\Selection|sAinvert\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selection|comb~2_combout\,
	datab => \Selection|sBinvert[0]~0_combout\,
	datad => \Selection|sAinvert\(0),
	combout => \Selection|sAinvert\(0));

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\opcode[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_opcode(0),
	combout => \opcode~combout\(0));

-- Location: LCCOMB_X21_Y10_N18
\Selection|comb~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selection|comb~4_combout\ = (\opcode~combout\(1) & (\opcode~combout\(0) & !\opcode~combout\(2))) # (!\opcode~combout\(1) & ((\opcode~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(1),
	datac => \opcode~combout\(0),
	datad => \opcode~combout\(2),
	combout => \Selection|comb~4_combout\);

-- Location: LCCOMB_X21_Y10_N0
\Selection|comb~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selection|comb~3_combout\ = (\opcode~combout\(1) & (!\opcode~combout\(0))) # (!\opcode~combout\(1) & ((!\opcode~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(1),
	datac => \opcode~combout\(0),
	datad => \opcode~combout\(2),
	combout => \Selection|comb~3_combout\);

-- Location: LCCOMB_X21_Y10_N20
\Selection|sBinvert[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selection|sBinvert\(0) = (!\Selection|comb~3_combout\ & ((\Selection|comb~4_combout\) # (\Selection|sBinvert\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selection|comb~4_combout\,
	datac => \Selection|sBinvert\(0),
	datad => \Selection|comb~3_combout\,
	combout => \Selection|sBinvert\(0));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(0),
	combout => \b~combout\(0));

-- Location: LCCOMB_X21_Y10_N16
\Alu0stage1|Step6|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Alu0stage1|Step6|Mux0~0_combout\ = \a~combout\(0) $ (\Selection|sAinvert\(0) $ (\Selection|sBinvert\(0) $ (\b~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datab => \Selection|sAinvert\(0),
	datac => \Selection|sBinvert\(0),
	datad => \b~combout\(0),
	combout => \Alu0stage1|Step6|Mux0~0_combout\);

-- Location: LCCOMB_X21_Y10_N22
\Selection|soperation[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selection|soperation[1]~0_combout\ = (!\opcode~combout\(2)) # (!\opcode~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \opcode~combout\(0),
	datad => \opcode~combout\(2),
	combout => \Selection|soperation[1]~0_combout\);

-- Location: LCCOMB_X21_Y10_N14
\Selection|soperation[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selection|soperation\(1) = (\opcode~combout\(1) & ((\Selection|soperation\(1)) # (\Selection|soperation[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(1),
	datac => \Selection|soperation\(1),
	datad => \Selection|soperation[1]~0_combout\,
	combout => \Selection|soperation\(1));

-- Location: LCCOMB_X21_Y10_N8
\Selection|comb~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selection|comb~0_combout\ = (\opcode~combout\(1) & ((!\opcode~combout\(2)))) # (!\opcode~combout\(1) & (!\opcode~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(1),
	datac => \opcode~combout\(0),
	datad => \opcode~combout\(2),
	combout => \Selection|comb~0_combout\);

-- Location: LCCOMB_X21_Y10_N10
\Selection|comb~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selection|comb~1_combout\ = (\opcode~combout\(1) & (!\opcode~combout\(0) & \opcode~combout\(2))) # (!\opcode~combout\(1) & (\opcode~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(1),
	datac => \opcode~combout\(0),
	datad => \opcode~combout\(2),
	combout => \Selection|comb~1_combout\);

-- Location: LCCOMB_X21_Y10_N24
\Selection|soperation[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selection|soperation\(0) = (!\Selection|comb~0_combout\ & ((\Selection|soperation\(0)) # (\Selection|comb~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selection|comb~0_combout\,
	datac => \Selection|soperation\(0),
	datad => \Selection|comb~1_combout\,
	combout => \Selection|soperation\(0));

-- Location: LCCOMB_X21_Y10_N2
\Alu0stage1|Step6|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Alu0stage1|Step6|Mux0~1_combout\ = (\Selection|soperation\(1) & (\Selection|sCarryIn\(0))) # (!\Selection|soperation\(1) & ((\Selection|sBinvert\(0) $ (\b~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selection|sCarryIn\(0),
	datab => \Selection|soperation\(1),
	datac => \Selection|sBinvert\(0),
	datad => \b~combout\(0),
	combout => \Alu0stage1|Step6|Mux0~1_combout\);

-- Location: LCCOMB_X21_Y10_N4
\Alu0stage1|Step6|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Alu0stage1|Step6|Mux0~2_combout\ = (\Alu0stage1|Step6|Mux0~0_combout\ & ((\Selection|soperation\(0)) # ((\Selection|soperation\(1) & !\Alu0stage1|Step6|Mux0~1_combout\)))) # (!\Alu0stage1|Step6|Mux0~0_combout\ & (\Alu0stage1|Step6|Mux0~1_combout\ & 
-- ((!\Selection|soperation\(0)) # (!\Selection|soperation\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu0stage1|Step6|Mux0~0_combout\,
	datab => \Selection|soperation\(1),
	datac => \Selection|soperation\(0),
	datad => \Alu0stage1|Step6|Mux0~1_combout\,
	combout => \Alu0stage1|Step6|Mux0~2_combout\);

-- Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(1),
	combout => \b~combout\(1));

-- Location: LCCOMB_X24_Y12_N2
\leftAlus:1:Alusstage1|Step1|out1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \leftAlus:1:Alusstage1|Step1|out1~0_combout\ = \Selection|sBinvert\(0) $ (\b~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selection|sBinvert\(0),
	datad => \b~combout\(1),
	combout => \leftAlus:1:Alusstage1|Step1|out1~0_combout\);

-- Location: PIN_N16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(1),
	combout => \a~combout\(1));

-- Location: LCCOMB_X24_Y12_N0
\leftAlus:1:Alusstage1|Step0|out1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \leftAlus:1:Alusstage1|Step0|out1~0_combout\ = \Selection|sAinvert\(0) $ (\a~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selection|sAinvert\(0),
	datad => \a~combout\(1),
	combout => \leftAlus:1:Alusstage1|Step0|out1~0_combout\);

-- Location: LCCOMB_X24_Y12_N28
\leftAlus:1:Alusstage1|Step6|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \leftAlus:1:Alusstage1|Step6|Mux0~0_combout\ = (\Selection|soperation\(0) & ((\leftAlus:1:Alusstage1|Step1|out1~0_combout\ & ((!\leftAlus:1:Alusstage1|Step0|out1~0_combout\) # (!\Selection|soperation\(1)))) # (!\leftAlus:1:Alusstage1|Step1|out1~0_combout\ 
-- & ((\leftAlus:1:Alusstage1|Step0|out1~0_combout\))))) # (!\Selection|soperation\(0) & (\leftAlus:1:Alusstage1|Step1|out1~0_combout\ & ((\leftAlus:1:Alusstage1|Step0|out1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selection|soperation\(0),
	datab => \leftAlus:1:Alusstage1|Step1|out1~0_combout\,
	datac => \Selection|soperation\(1),
	datad => \leftAlus:1:Alusstage1|Step0|out1~0_combout\,
	combout => \leftAlus:1:Alusstage1|Step6|Mux0~0_combout\);

-- Location: LCCOMB_X24_Y12_N14
\leftAlus:2:Alusstage1|Step0|out1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \leftAlus:2:Alusstage1|Step0|out1~0_combout\ = \a~combout\(2) $ (\Selection|sAinvert\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(2),
	datac => \Selection|sAinvert\(0),
	combout => \leftAlus:2:Alusstage1|Step0|out1~0_combout\);

-- Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(2),
	combout => \b~combout\(2));

-- Location: LCCOMB_X24_Y12_N24
\leftAlus:2:Alusstage1|Step1|out1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \leftAlus:2:Alusstage1|Step1|out1~0_combout\ = \Selection|sBinvert\(0) $ (\b~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selection|sBinvert\(0),
	datad => \b~combout\(2),
	combout => \leftAlus:2:Alusstage1|Step1|out1~0_combout\);

-- Location: LCCOMB_X24_Y12_N10
\leftAlus:2:Alusstage1|Step6|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \leftAlus:2:Alusstage1|Step6|Mux0~0_combout\ = (\Selection|soperation\(0) & ((\leftAlus:2:Alusstage1|Step0|out1~0_combout\ & ((!\leftAlus:2:Alusstage1|Step1|out1~0_combout\) # (!\Selection|soperation\(1)))) # (!\leftAlus:2:Alusstage1|Step0|out1~0_combout\ 
-- & ((\leftAlus:2:Alusstage1|Step1|out1~0_combout\))))) # (!\Selection|soperation\(0) & (\leftAlus:2:Alusstage1|Step0|out1~0_combout\ & ((\leftAlus:2:Alusstage1|Step1|out1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selection|soperation\(0),
	datab => \leftAlus:2:Alusstage1|Step0|out1~0_combout\,
	datac => \Selection|soperation\(1),
	datad => \leftAlus:2:Alusstage1|Step1|out1~0_combout\,
	combout => \leftAlus:2:Alusstage1|Step6|Mux0~0_combout\);

-- Location: LCCOMB_X24_Y12_N30
\leftAlus:3:Alusstage1|Step1|out1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \leftAlus:3:Alusstage1|Step1|out1~0_combout\ = \b~combout\(3) $ (\Selection|sBinvert\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(3),
	datac => \Selection|sBinvert\(0),
	combout => \leftAlus:3:Alusstage1|Step1|out1~0_combout\);

-- Location: LCCOMB_X24_Y12_N12
\leftAlus:3:Alusstage1|Step0|out1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \leftAlus:3:Alusstage1|Step0|out1~0_combout\ = \a~combout\(3) $ (\Selection|sAinvert\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(3),
	datac => \Selection|sAinvert\(0),
	combout => \leftAlus:3:Alusstage1|Step0|out1~0_combout\);

-- Location: LCCOMB_X24_Y12_N16
\leftAlus:3:Alusstage1|Step6|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \leftAlus:3:Alusstage1|Step6|Mux0~0_combout\ = (\Selection|soperation\(0) & ((\leftAlus:3:Alusstage1|Step1|out1~0_combout\ & ((!\leftAlus:3:Alusstage1|Step0|out1~0_combout\) # (!\Selection|soperation\(1)))) # (!\leftAlus:3:Alusstage1|Step1|out1~0_combout\ 
-- & ((\leftAlus:3:Alusstage1|Step0|out1~0_combout\))))) # (!\Selection|soperation\(0) & (\leftAlus:3:Alusstage1|Step1|out1~0_combout\ & ((\leftAlus:3:Alusstage1|Step0|out1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selection|soperation\(0),
	datab => \leftAlus:3:Alusstage1|Step1|out1~0_combout\,
	datac => \Selection|soperation\(1),
	datad => \leftAlus:3:Alusstage1|Step0|out1~0_combout\,
	combout => \leftAlus:3:Alusstage1|Step6|Mux0~0_combout\);

-- Location: PIN_M16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(4),
	combout => \a~combout\(4));

-- Location: LCCOMB_X25_Y11_N8
\leftAlus:4:Alusstage1|Step0|out1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \leftAlus:4:Alusstage1|Step0|out1~0_combout\ = \Selection|sAinvert\(0) $ (\a~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selection|sAinvert\(0),
	datac => \a~combout\(4),
	combout => \leftAlus:4:Alusstage1|Step0|out1~0_combout\);

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(4),
	combout => \b~combout\(4));

-- Location: LCCOMB_X25_Y11_N18
\leftAlus:4:Alusstage1|Step1|out1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \leftAlus:4:Alusstage1|Step1|out1~0_combout\ = \Selection|sBinvert\(0) $ (\b~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selection|sBinvert\(0),
	datad => \b~combout\(4),
	combout => \leftAlus:4:Alusstage1|Step1|out1~0_combout\);

-- Location: LCCOMB_X25_Y11_N20
\leftAlus:4:Alusstage1|Step6|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \leftAlus:4:Alusstage1|Step6|Mux0~0_combout\ = (\Selection|soperation\(0) & ((\leftAlus:4:Alusstage1|Step0|out1~0_combout\ & ((!\leftAlus:4:Alusstage1|Step1|out1~0_combout\) # (!\Selection|soperation\(1)))) # (!\leftAlus:4:Alusstage1|Step0|out1~0_combout\ 
-- & ((\leftAlus:4:Alusstage1|Step1|out1~0_combout\))))) # (!\Selection|soperation\(0) & (((\leftAlus:4:Alusstage1|Step0|out1~0_combout\ & \leftAlus:4:Alusstage1|Step1|out1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selection|soperation\(0),
	datab => \Selection|soperation\(1),
	datac => \leftAlus:4:Alusstage1|Step0|out1~0_combout\,
	datad => \leftAlus:4:Alusstage1|Step1|out1~0_combout\,
	combout => \leftAlus:4:Alusstage1|Step6|Mux0~0_combout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(5),
	combout => \b~combout\(5));

-- Location: LCCOMB_X24_Y12_N20
\leftAlus:5:Alusstage1|Step1|out1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \leftAlus:5:Alusstage1|Step1|out1~0_combout\ = \Selection|sBinvert\(0) $ (\b~combout\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selection|sBinvert\(0),
	datad => \b~combout\(5),
	combout => \leftAlus:5:Alusstage1|Step1|out1~0_combout\);

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(5),
	combout => \a~combout\(5));

-- Location: LCCOMB_X24_Y12_N18
\leftAlus:5:Alusstage1|Step0|out1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \leftAlus:5:Alusstage1|Step0|out1~0_combout\ = \a~combout\(5) $ (\Selection|sAinvert\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(5),
	datac => \Selection|sAinvert\(0),
	combout => \leftAlus:5:Alusstage1|Step0|out1~0_combout\);

-- Location: LCCOMB_X24_Y12_N22
\leftAlus:5:Alusstage1|Step6|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \leftAlus:5:Alusstage1|Step6|Mux0~0_combout\ = (\Selection|soperation\(0) & ((\leftAlus:5:Alusstage1|Step1|out1~0_combout\ & ((!\leftAlus:5:Alusstage1|Step0|out1~0_combout\) # (!\Selection|soperation\(1)))) # (!\leftAlus:5:Alusstage1|Step1|out1~0_combout\ 
-- & ((\leftAlus:5:Alusstage1|Step0|out1~0_combout\))))) # (!\Selection|soperation\(0) & (((\leftAlus:5:Alusstage1|Step1|out1~0_combout\ & \leftAlus:5:Alusstage1|Step0|out1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selection|soperation\(0),
	datab => \Selection|soperation\(1),
	datac => \leftAlus:5:Alusstage1|Step1|out1~0_combout\,
	datad => \leftAlus:5:Alusstage1|Step0|out1~0_combout\,
	combout => \leftAlus:5:Alusstage1|Step6|Mux0~0_combout\);

-- Location: LCCOMB_X17_Y10_N24
\leftAlus:6:Alusstage1|Step0|out1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \leftAlus:6:Alusstage1|Step0|out1~0_combout\ = \a~combout\(6) $ (\Selection|sAinvert\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(6),
	datac => \Selection|sAinvert\(0),
	combout => \leftAlus:6:Alusstage1|Step0|out1~0_combout\);

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(6),
	combout => \b~combout\(6));

-- Location: LCCOMB_X17_Y10_N18
\leftAlus:6:Alusstage1|Step1|out1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \leftAlus:6:Alusstage1|Step1|out1~0_combout\ = \Selection|sBinvert\(0) $ (\b~combout\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selection|sBinvert\(0),
	datad => \b~combout\(6),
	combout => \leftAlus:6:Alusstage1|Step1|out1~0_combout\);

-- Location: LCCOMB_X17_Y10_N4
\leftAlus:6:Alusstage1|Step6|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \leftAlus:6:Alusstage1|Step6|Mux0~0_combout\ = (\Selection|soperation\(0) & ((\leftAlus:6:Alusstage1|Step0|out1~0_combout\ & ((!\leftAlus:6:Alusstage1|Step1|out1~0_combout\) # (!\Selection|soperation\(1)))) # (!\leftAlus:6:Alusstage1|Step0|out1~0_combout\ 
-- & ((\leftAlus:6:Alusstage1|Step1|out1~0_combout\))))) # (!\Selection|soperation\(0) & (((\leftAlus:6:Alusstage1|Step0|out1~0_combout\ & \leftAlus:6:Alusstage1|Step1|out1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selection|soperation\(1),
	datab => \Selection|soperation\(0),
	datac => \leftAlus:6:Alusstage1|Step0|out1~0_combout\,
	datad => \leftAlus:6:Alusstage1|Step1|out1~0_combout\,
	combout => \leftAlus:6:Alusstage1|Step6|Mux0~0_combout\);

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(7),
	combout => \a~combout\(7));

-- Location: LCCOMB_X25_Y11_N30
\leftAlus:7:Alusstage1|Step0|out1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \leftAlus:7:Alusstage1|Step0|out1~0_combout\ = \Selection|sAinvert\(0) $ (\a~combout\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selection|sAinvert\(0),
	datad => \a~combout\(7),
	combout => \leftAlus:7:Alusstage1|Step0|out1~0_combout\);

-- Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(7),
	combout => \b~combout\(7));

-- Location: LCCOMB_X25_Y11_N0
\leftAlus:7:Alusstage1|Step1|out1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \leftAlus:7:Alusstage1|Step1|out1~0_combout\ = \Selection|sBinvert\(0) $ (\b~combout\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selection|sBinvert\(0),
	datad => \b~combout\(7),
	combout => \leftAlus:7:Alusstage1|Step1|out1~0_combout\);

-- Location: LCCOMB_X25_Y11_N26
\leftAlus:7:Alusstage1|Step6|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \leftAlus:7:Alusstage1|Step6|Mux0~0_combout\ = (\Selection|soperation\(0) & ((\leftAlus:7:Alusstage1|Step0|out1~0_combout\ & ((!\leftAlus:7:Alusstage1|Step1|out1~0_combout\) # (!\Selection|soperation\(1)))) # (!\leftAlus:7:Alusstage1|Step0|out1~0_combout\ 
-- & ((\leftAlus:7:Alusstage1|Step1|out1~0_combout\))))) # (!\Selection|soperation\(0) & (\leftAlus:7:Alusstage1|Step0|out1~0_combout\ & ((\leftAlus:7:Alusstage1|Step1|out1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selection|soperation\(0),
	datab => \leftAlus:7:Alusstage1|Step0|out1~0_combout\,
	datac => \Selection|soperation\(1),
	datad => \leftAlus:7:Alusstage1|Step1|out1~0_combout\,
	combout => \leftAlus:7:Alusstage1|Step6|Mux0~0_combout\);

-- Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(8),
	combout => \a~combout\(8));

-- Location: LCCOMB_X24_Y12_N8
\leftAlus:8:Alusstage1|Step0|out1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \leftAlus:8:Alusstage1|Step0|out1~0_combout\ = \Selection|sAinvert\(0) $ (\a~combout\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selection|sAinvert\(0),
	datad => \a~combout\(8),
	combout => \leftAlus:8:Alusstage1|Step0|out1~0_combout\);

-- Location: LCCOMB_X24_Y12_N26
\leftAlus:8:Alusstage1|Step1|out1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \leftAlus:8:Alusstage1|Step1|out1~0_combout\ = \b~combout\(8) $ (\Selection|sBinvert\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(8),
	datac => \Selection|sBinvert\(0),
	combout => \leftAlus:8:Alusstage1|Step1|out1~0_combout\);

-- Location: LCCOMB_X24_Y12_N4
\leftAlus:8:Alusstage1|Step6|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \leftAlus:8:Alusstage1|Step6|Mux0~0_combout\ = (\Selection|soperation\(0) & ((\leftAlus:8:Alusstage1|Step0|out1~0_combout\ & ((!\leftAlus:8:Alusstage1|Step1|out1~0_combout\) # (!\Selection|soperation\(1)))) # (!\leftAlus:8:Alusstage1|Step0|out1~0_combout\ 
-- & ((\leftAlus:8:Alusstage1|Step1|out1~0_combout\))))) # (!\Selection|soperation\(0) & (\leftAlus:8:Alusstage1|Step0|out1~0_combout\ & ((\leftAlus:8:Alusstage1|Step1|out1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selection|soperation\(0),
	datab => \leftAlus:8:Alusstage1|Step0|out1~0_combout\,
	datac => \Selection|soperation\(1),
	datad => \leftAlus:8:Alusstage1|Step1|out1~0_combout\,
	combout => \leftAlus:8:Alusstage1|Step6|Mux0~0_combout\);

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(9),
	combout => \a~combout\(9));

-- Location: LCCOMB_X17_Y10_N30
\leftAlus:9:Alusstage1|Step0|out1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \leftAlus:9:Alusstage1|Step0|out1~0_combout\ = \Selection|sAinvert\(0) $ (\a~combout\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selection|sAinvert\(0),
	datad => \a~combout\(9),
	combout => \leftAlus:9:Alusstage1|Step0|out1~0_combout\);

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(9),
	combout => \b~combout\(9));

-- Location: LCCOMB_X17_Y10_N0
\leftAlus:9:Alusstage1|Step1|out1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \leftAlus:9:Alusstage1|Step1|out1~0_combout\ = \Selection|sBinvert\(0) $ (\b~combout\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selection|sBinvert\(0),
	datac => \b~combout\(9),
	combout => \leftAlus:9:Alusstage1|Step1|out1~0_combout\);

-- Location: LCCOMB_X17_Y10_N26
\leftAlus:9:Alusstage1|Step6|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \leftAlus:9:Alusstage1|Step6|Mux0~0_combout\ = (\leftAlus:9:Alusstage1|Step0|out1~0_combout\ & ((\Selection|soperation\(0) & ((!\leftAlus:9:Alusstage1|Step1|out1~0_combout\) # (!\Selection|soperation\(1)))) # (!\Selection|soperation\(0) & 
-- ((\leftAlus:9:Alusstage1|Step1|out1~0_combout\))))) # (!\leftAlus:9:Alusstage1|Step0|out1~0_combout\ & (((\Selection|soperation\(0) & \leftAlus:9:Alusstage1|Step1|out1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selection|soperation\(1),
	datab => \leftAlus:9:Alusstage1|Step0|out1~0_combout\,
	datac => \Selection|soperation\(0),
	datad => \leftAlus:9:Alusstage1|Step1|out1~0_combout\,
	combout => \leftAlus:9:Alusstage1|Step6|Mux0~0_combout\);

-- Location: PIN_L16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(10),
	combout => \b~combout\(10));

-- Location: LCCOMB_X25_Y11_N6
\leftAlus:10:Alusstage1|Step1|out1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \leftAlus:10:Alusstage1|Step1|out1~0_combout\ = \Selection|sBinvert\(0) $ (\b~combout\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selection|sBinvert\(0),
	datad => \b~combout\(10),
	combout => \leftAlus:10:Alusstage1|Step1|out1~0_combout\);

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(10),
	combout => \a~combout\(10));

-- Location: LCCOMB_X25_Y11_N28
\leftAlus:10:Alusstage1|Step0|out1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \leftAlus:10:Alusstage1|Step0|out1~0_combout\ = \Selection|sAinvert\(0) $ (\a~combout\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selection|sAinvert\(0),
	datad => \a~combout\(10),
	combout => \leftAlus:10:Alusstage1|Step0|out1~0_combout\);

-- Location: LCCOMB_X25_Y11_N24
\leftAlus:10:Alusstage1|Step6|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \leftAlus:10:Alusstage1|Step6|Mux0~0_combout\ = (\leftAlus:10:Alusstage1|Step1|out1~0_combout\ & ((\Selection|soperation\(0) & ((!\leftAlus:10:Alusstage1|Step0|out1~0_combout\) # (!\Selection|soperation\(1)))) # (!\Selection|soperation\(0) & 
-- ((\leftAlus:10:Alusstage1|Step0|out1~0_combout\))))) # (!\leftAlus:10:Alusstage1|Step1|out1~0_combout\ & (((\Selection|soperation\(0) & \leftAlus:10:Alusstage1|Step0|out1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \leftAlus:10:Alusstage1|Step1|out1~0_combout\,
	datab => \Selection|soperation\(1),
	datac => \Selection|soperation\(0),
	datad => \leftAlus:10:Alusstage1|Step0|out1~0_combout\,
	combout => \leftAlus:10:Alusstage1|Step6|Mux0~0_combout\);

-- Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(11),
	combout => \b~combout\(11));

-- Location: LCCOMB_X17_Y10_N14
\leftAlus:11:Alusstage1|Step1|out1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \leftAlus:11:Alusstage1|Step1|out1~0_combout\ = \Selection|sBinvert\(0) $ (\b~combout\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selection|sBinvert\(0),
	datad => \b~combout\(11),
	combout => \leftAlus:11:Alusstage1|Step1|out1~0_combout\);

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(11),
	combout => \a~combout\(11));

-- Location: LCCOMB_X17_Y10_N12
\leftAlus:11:Alusstage1|Step0|out1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \leftAlus:11:Alusstage1|Step0|out1~0_combout\ = \a~combout\(11) $ (\Selection|sAinvert\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(11),
	datac => \Selection|sAinvert\(0),
	combout => \leftAlus:11:Alusstage1|Step0|out1~0_combout\);

-- Location: LCCOMB_X17_Y10_N16
\leftAlus:11:Alusstage1|Step6|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \leftAlus:11:Alusstage1|Step6|Mux0~0_combout\ = (\Selection|soperation\(0) & ((\leftAlus:11:Alusstage1|Step1|out1~0_combout\ & ((!\leftAlus:11:Alusstage1|Step0|out1~0_combout\) # (!\Selection|soperation\(1)))) # 
-- (!\leftAlus:11:Alusstage1|Step1|out1~0_combout\ & ((\leftAlus:11:Alusstage1|Step0|out1~0_combout\))))) # (!\Selection|soperation\(0) & (((\leftAlus:11:Alusstage1|Step1|out1~0_combout\ & \leftAlus:11:Alusstage1|Step0|out1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selection|soperation\(1),
	datab => \Selection|soperation\(0),
	datac => \leftAlus:11:Alusstage1|Step1|out1~0_combout\,
	datad => \leftAlus:11:Alusstage1|Step0|out1~0_combout\,
	combout => \leftAlus:11:Alusstage1|Step6|Mux0~0_combout\);

-- Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(12),
	combout => \b~combout\(12));

-- Location: LCCOMB_X17_Y10_N28
\leftAlus:12:Alusstage1|Step1|out1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \leftAlus:12:Alusstage1|Step1|out1~0_combout\ = \Selection|sBinvert\(0) $ (\b~combout\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selection|sBinvert\(0),
	datac => \b~combout\(12),
	combout => \leftAlus:12:Alusstage1|Step1|out1~0_combout\);

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(12),
	combout => \a~combout\(12));

-- Location: LCCOMB_X17_Y10_N10
\leftAlus:12:Alusstage1|Step0|out1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \leftAlus:12:Alusstage1|Step0|out1~0_combout\ = \Selection|sAinvert\(0) $ (\a~combout\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selection|sAinvert\(0),
	datad => \a~combout\(12),
	combout => \leftAlus:12:Alusstage1|Step0|out1~0_combout\);

-- Location: LCCOMB_X17_Y10_N22
\leftAlus:12:Alusstage1|Step6|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \leftAlus:12:Alusstage1|Step6|Mux0~0_combout\ = (\leftAlus:12:Alusstage1|Step1|out1~0_combout\ & ((\Selection|soperation\(0) & ((!\leftAlus:12:Alusstage1|Step0|out1~0_combout\) # (!\Selection|soperation\(1)))) # (!\Selection|soperation\(0) & 
-- ((\leftAlus:12:Alusstage1|Step0|out1~0_combout\))))) # (!\leftAlus:12:Alusstage1|Step1|out1~0_combout\ & (((\Selection|soperation\(0) & \leftAlus:12:Alusstage1|Step0|out1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selection|soperation\(1),
	datab => \leftAlus:12:Alusstage1|Step1|out1~0_combout\,
	datac => \Selection|soperation\(0),
	datad => \leftAlus:12:Alusstage1|Step0|out1~0_combout\,
	combout => \leftAlus:12:Alusstage1|Step6|Mux0~0_combout\);

-- Location: PIN_P16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(13),
	combout => \a~combout\(13));

-- Location: LCCOMB_X17_Y10_N8
\leftAlus:13:Alusstage1|Step0|out1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \leftAlus:13:Alusstage1|Step0|out1~0_combout\ = \Selection|sAinvert\(0) $ (\a~combout\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selection|sAinvert\(0),
	datad => \a~combout\(13),
	combout => \leftAlus:13:Alusstage1|Step0|out1~0_combout\);

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(13),
	combout => \b~combout\(13));

-- Location: LCCOMB_X17_Y10_N2
\leftAlus:13:Alusstage1|Step1|out1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \leftAlus:13:Alusstage1|Step1|out1~0_combout\ = \Selection|sBinvert\(0) $ (\b~combout\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selection|sBinvert\(0),
	datac => \b~combout\(13),
	combout => \leftAlus:13:Alusstage1|Step1|out1~0_combout\);

-- Location: LCCOMB_X17_Y10_N20
\leftAlus:13:Alusstage1|Step6|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \leftAlus:13:Alusstage1|Step6|Mux0~0_combout\ = (\Selection|soperation\(0) & ((\leftAlus:13:Alusstage1|Step0|out1~0_combout\ & ((!\leftAlus:13:Alusstage1|Step1|out1~0_combout\) # (!\Selection|soperation\(1)))) # 
-- (!\leftAlus:13:Alusstage1|Step0|out1~0_combout\ & ((\leftAlus:13:Alusstage1|Step1|out1~0_combout\))))) # (!\Selection|soperation\(0) & (((\leftAlus:13:Alusstage1|Step0|out1~0_combout\ & \leftAlus:13:Alusstage1|Step1|out1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selection|soperation\(1),
	datab => \Selection|soperation\(0),
	datac => \leftAlus:13:Alusstage1|Step0|out1~0_combout\,
	datad => \leftAlus:13:Alusstage1|Step1|out1~0_combout\,
	combout => \leftAlus:13:Alusstage1|Step6|Mux0~0_combout\);

-- Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(14),
	combout => \b~combout\(14));

-- Location: LCCOMB_X25_Y11_N4
\leftAlus:14:Alusstage1|Step1|out1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \leftAlus:14:Alusstage1|Step1|out1~0_combout\ = \Selection|sBinvert\(0) $ (\b~combout\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selection|sBinvert\(0),
	datad => \b~combout\(14),
	combout => \leftAlus:14:Alusstage1|Step1|out1~0_combout\);

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(14),
	combout => \a~combout\(14));

-- Location: LCCOMB_X25_Y11_N10
\leftAlus:14:Alusstage1|Step0|out1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \leftAlus:14:Alusstage1|Step0|out1~0_combout\ = \Selection|sAinvert\(0) $ (\a~combout\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selection|sAinvert\(0),
	datad => \a~combout\(14),
	combout => \leftAlus:14:Alusstage1|Step0|out1~0_combout\);

-- Location: LCCOMB_X25_Y11_N14
\leftAlus:14:Alusstage1|Step6|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \leftAlus:14:Alusstage1|Step6|Mux0~0_combout\ = (\Selection|soperation\(0) & ((\leftAlus:14:Alusstage1|Step1|out1~0_combout\ & ((!\leftAlus:14:Alusstage1|Step0|out1~0_combout\) # (!\Selection|soperation\(1)))) # 
-- (!\leftAlus:14:Alusstage1|Step1|out1~0_combout\ & ((\leftAlus:14:Alusstage1|Step0|out1~0_combout\))))) # (!\Selection|soperation\(0) & (((\leftAlus:14:Alusstage1|Step1|out1~0_combout\ & \leftAlus:14:Alusstage1|Step0|out1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selection|soperation\(0),
	datab => \Selection|soperation\(1),
	datac => \leftAlus:14:Alusstage1|Step1|out1~0_combout\,
	datad => \leftAlus:14:Alusstage1|Step0|out1~0_combout\,
	combout => \leftAlus:14:Alusstage1|Step6|Mux0~0_combout\);

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(15),
	combout => \a~combout\(15));

-- Location: LCCOMB_X25_Y11_N16
\leftAlus:15:Alusstage1|Step0|out1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \leftAlus:15:Alusstage1|Step0|out1~0_combout\ = \Selection|sAinvert\(0) $ (\a~combout\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selection|sAinvert\(0),
	datac => \a~combout\(15),
	combout => \leftAlus:15:Alusstage1|Step0|out1~0_combout\);

-- Location: PIN_M14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(15),
	combout => \b~combout\(15));

-- Location: LCCOMB_X25_Y11_N2
\leftAlus:15:Alusstage1|Step1|out1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \leftAlus:15:Alusstage1|Step1|out1~0_combout\ = \Selection|sBinvert\(0) $ (\b~combout\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selection|sBinvert\(0),
	datac => \b~combout\(15),
	combout => \leftAlus:15:Alusstage1|Step1|out1~0_combout\);

-- Location: LCCOMB_X25_Y11_N12
\leftAlus:15:Alusstage1|Step6|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \leftAlus:15:Alusstage1|Step6|Mux0~0_combout\ = (\leftAlus:15:Alusstage1|Step0|out1~0_combout\ & ((\Selection|soperation\(0) & ((!\leftAlus:15:Alusstage1|Step1|out1~0_combout\) # (!\Selection|soperation\(1)))) # (!\Selection|soperation\(0) & 
-- ((\leftAlus:15:Alusstage1|Step1|out1~0_combout\))))) # (!\leftAlus:15:Alusstage1|Step0|out1~0_combout\ & (((\Selection|soperation\(0) & \leftAlus:15:Alusstage1|Step1|out1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \leftAlus:15:Alusstage1|Step0|out1~0_combout\,
	datab => \Selection|soperation\(1),
	datac => \Selection|soperation\(0),
	datad => \leftAlus:15:Alusstage1|Step1|out1~0_combout\,
	combout => \leftAlus:15:Alusstage1|Step6|Mux0~0_combout\);

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\overflow~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_overflow);

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Result[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Alu0stage1|Step6|Mux0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Result(0));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Result[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \leftAlus:1:Alusstage1|Step6|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Result(1));

-- Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Result[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \leftAlus:2:Alusstage1|Step6|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Result(2));

-- Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Result[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \leftAlus:3:Alusstage1|Step6|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Result(3));

-- Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Result[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \leftAlus:4:Alusstage1|Step6|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Result(4));

-- Location: PIN_E16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Result[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \leftAlus:5:Alusstage1|Step6|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Result(5));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Result[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \leftAlus:6:Alusstage1|Step6|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Result(6));

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Result[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \leftAlus:7:Alusstage1|Step6|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Result(7));

-- Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Result[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \leftAlus:8:Alusstage1|Step6|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Result(8));

-- Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Result[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \leftAlus:9:Alusstage1|Step6|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Result(9));

-- Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Result[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \leftAlus:10:Alusstage1|Step6|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Result(10));

-- Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Result[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \leftAlus:11:Alusstage1|Step6|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Result(11));

-- Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Result[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \leftAlus:12:Alusstage1|Step6|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Result(12));

-- Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Result[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \leftAlus:13:Alusstage1|Step6|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Result(13));

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Result[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \leftAlus:14:Alusstage1|Step6|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Result(14));

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Result[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \leftAlus:15:Alusstage1|Step6|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Result(15));
END structure;


