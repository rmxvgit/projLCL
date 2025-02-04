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
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "02/04/2025 11:22:51"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	projetoFinalLCL IS
    PORT (
	dc : OUT std_logic_vector(3 DOWNTO 0);
	clk : IN std_logic;
	start : IN std_logic;
	min : OUT std_logic_vector(3 DOWNTO 0);
	sg : OUT std_logic_vector(3 DOWNTO 0);
	tseg : OUT std_logic_vector(3 DOWNTO 0)
	);
END projetoFinalLCL;

-- Design Ports Information
-- dc[3]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dc[2]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dc[1]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dc[0]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- min[3]	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- min[2]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- min[1]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- min[0]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sg[3]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sg[2]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sg[1]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sg[0]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tseg[3]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tseg[2]	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tseg[1]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tseg[0]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- start	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF projetoFinalLCL IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_dc : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_min : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sg : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_tseg : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst10|inst4|ask~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst10|inst2|ask~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|inst~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst10|inst3|ask~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \start~combout\ : std_logic;
SIGNAL \inst10|inst5|q~0_combout\ : std_logic;
SIGNAL \inst10|inst5|q~1_combout\ : std_logic;
SIGNAL \inst10|inst5|Add0~0_combout\ : std_logic;
SIGNAL \inst10|inst5|Equal0~0_combout\ : std_logic;
SIGNAL \inst10|inst5|ask~regout\ : std_logic;
SIGNAL \inst|inst2~0_combout\ : std_logic;
SIGNAL \inst|inst2~regout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \inst|inst~combout\ : std_logic;
SIGNAL \inst|inst~clkctrl_outclk\ : std_logic;
SIGNAL \inst10|inst2|q[0]~4_combout\ : std_logic;
SIGNAL \inst10|inst2|q~1_combout\ : std_logic;
SIGNAL \inst10|inst2|Add0~0_combout\ : std_logic;
SIGNAL \inst10|inst2|q~0_combout\ : std_logic;
SIGNAL \inst10|inst4|q[0]~4_combout\ : std_logic;
SIGNAL \inst10|inst4|Add0~0_combout\ : std_logic;
SIGNAL \inst10|inst4|q~1_combout\ : std_logic;
SIGNAL \inst10|inst4|Equal0~0_combout\ : std_logic;
SIGNAL \inst10|inst4|ask~regout\ : std_logic;
SIGNAL \inst10|inst4|ask~clkctrl_outclk\ : std_logic;
SIGNAL \inst10|inst5|q[0]~4_combout\ : std_logic;
SIGNAL \inst10|inst2|Equal0~0_combout\ : std_logic;
SIGNAL \inst10|inst2|ask~regout\ : std_logic;
SIGNAL \inst10|inst2|ask~clkctrl_outclk\ : std_logic;
SIGNAL \inst10|inst3|q[0]~4_combout\ : std_logic;
SIGNAL \inst10|inst3|q~0_combout\ : std_logic;
SIGNAL \inst10|inst3|Add0~0_combout\ : std_logic;
SIGNAL \inst10|inst3|q~1_combout\ : std_logic;
SIGNAL \inst10|inst3|Equal0~0_combout\ : std_logic;
SIGNAL \inst10|inst3|ask~regout\ : std_logic;
SIGNAL \inst10|inst3|ask~clkctrl_outclk\ : std_logic;
SIGNAL \inst10|inst4|q~0_combout\ : std_logic;
SIGNAL \inst10|inst2|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst10|inst5|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst10|inst3|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst10|inst4|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst10|inst4|ALT_INV_q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst10|inst3|ALT_INV_q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst10|inst5|ALT_INV_q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst10|inst2|ALT_INV_q\ : std_logic_vector(3 DOWNTO 0);

BEGIN

dc <= ww_dc;
ww_clk <= clk;
ww_start <= start;
min <= ww_min;
sg <= ww_sg;
tseg <= ww_tseg;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst10|inst4|ask~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst10|inst4|ask~regout\);

\inst10|inst2|ask~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst10|inst2|ask~regout\);

\inst|inst~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst|inst~combout\);

\inst10|inst3|ask~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst10|inst3|ask~regout\);
\inst10|inst4|ALT_INV_q\(0) <= NOT \inst10|inst4|q\(0);
\inst10|inst4|ALT_INV_q\(2) <= NOT \inst10|inst4|q\(2);
\inst10|inst3|ALT_INV_q\(0) <= NOT \inst10|inst3|q\(0);
\inst10|inst3|ALT_INV_q\(3) <= NOT \inst10|inst3|q\(3);
\inst10|inst5|ALT_INV_q\(0) <= NOT \inst10|inst5|q\(0);
\inst10|inst5|ALT_INV_q\(2) <= NOT \inst10|inst5|q\(2);
\inst10|inst2|ALT_INV_q\(0) <= NOT \inst10|inst2|q\(0);
\inst10|inst2|ALT_INV_q\(3) <= NOT \inst10|inst2|q\(3);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\start~I\ : cycloneii_io
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
	padio => ww_start,
	combout => \start~combout\);

-- Location: LCCOMB_X31_Y35_N24
\inst10|inst5|q~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|inst5|q~0_combout\ = (\inst10|inst5|q\(3) & (((\inst10|inst5|q\(1)) # (!\inst10|inst5|q\(2))) # (!\inst10|inst5|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst5|q\(0),
	datab => \inst10|inst5|q\(2),
	datac => \inst10|inst5|q\(3),
	datad => \inst10|inst5|q\(1),
	combout => \inst10|inst5|q~0_combout\);

-- Location: LCFF_X31_Y35_N25
\inst10|inst5|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10|inst4|ask~clkctrl_outclk\,
	datain => \inst10|inst5|q~0_combout\,
	aclr => \inst10|inst5|ask~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|inst5|q\(3));

-- Location: LCCOMB_X31_Y35_N28
\inst10|inst5|q~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|inst5|q~1_combout\ = (\inst10|inst5|q\(0) & (!\inst10|inst5|q\(1) & ((\inst10|inst5|q\(3)) # (!\inst10|inst5|q\(2))))) # (!\inst10|inst5|q\(0) & (((\inst10|inst5|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst5|q\(0),
	datab => \inst10|inst5|q\(2),
	datac => \inst10|inst5|q\(1),
	datad => \inst10|inst5|q\(3),
	combout => \inst10|inst5|q~1_combout\);

-- Location: LCFF_X31_Y35_N29
\inst10|inst5|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10|inst4|ask~clkctrl_outclk\,
	datain => \inst10|inst5|q~1_combout\,
	aclr => \inst10|inst5|ask~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|inst5|q\(1));

-- Location: LCCOMB_X31_Y35_N18
\inst10|inst5|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|inst5|Add0~0_combout\ = \inst10|inst5|q\(2) $ (((\inst10|inst5|q\(0) & !\inst10|inst5|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst5|q\(0),
	datac => \inst10|inst5|q\(2),
	datad => \inst10|inst5|q\(1),
	combout => \inst10|inst5|Add0~0_combout\);

-- Location: LCFF_X31_Y35_N19
\inst10|inst5|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10|inst4|ask~clkctrl_outclk\,
	datain => \inst10|inst5|Add0~0_combout\,
	aclr => \inst10|inst5|ask~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|inst5|q\(2));

-- Location: LCCOMB_X31_Y35_N14
\inst10|inst5|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|inst5|Equal0~0_combout\ = (\inst10|inst5|q\(0) & (\inst10|inst5|q\(2) & (!\inst10|inst5|q\(3) & !\inst10|inst5|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst5|q\(0),
	datab => \inst10|inst5|q\(2),
	datac => \inst10|inst5|q\(3),
	datad => \inst10|inst5|q\(1),
	combout => \inst10|inst5|Equal0~0_combout\);

-- Location: LCFF_X31_Y35_N15
\inst10|inst5|ask\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10|inst4|ask~clkctrl_outclk\,
	datain => \inst10|inst5|Equal0~0_combout\,
	aclr => \inst10|inst5|ask~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|inst5|ask~regout\);

-- Location: LCCOMB_X32_Y35_N8
\inst|inst2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst2~0_combout\ = (\inst|inst2~regout\ & ((!\inst10|inst5|ask~regout\))) # (!\inst|inst2~regout\ & (\start~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \start~combout\,
	datac => \inst|inst2~regout\,
	datad => \inst10|inst5|ask~regout\,
	combout => \inst|inst2~0_combout\);

-- Location: LCFF_X32_Y35_N9
\inst|inst2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \inst|inst2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst2~regout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
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
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: LCCOMB_X32_Y35_N12
\inst|inst\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst~combout\ = LCELL((\inst|inst2~regout\ & \clk~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst2~regout\,
	datad => \clk~combout\,
	combout => \inst|inst~combout\);

-- Location: CLKCTRL_G9
\inst|inst~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|inst~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|inst~clkctrl_outclk\);

-- Location: LCCOMB_X30_Y35_N28
\inst10|inst2|q[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|inst2|q[0]~4_combout\ = !\inst10|inst2|q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|inst2|q\(0),
	combout => \inst10|inst2|q[0]~4_combout\);

-- Location: LCFF_X30_Y35_N29
\inst10|inst2|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst~clkctrl_outclk\,
	datain => \inst10|inst2|q[0]~4_combout\,
	aclr => \inst10|inst5|ask~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|inst2|q\(0));

-- Location: LCCOMB_X30_Y35_N12
\inst10|inst2|q~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|inst2|q~1_combout\ = (\inst10|inst2|q\(1) & (((!\inst10|inst2|q\(0))))) # (!\inst10|inst2|q\(1) & (\inst10|inst2|q\(0) & ((\inst10|inst2|q\(2)) # (!\inst10|inst2|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst2|q\(2),
	datab => \inst10|inst2|q\(3),
	datac => \inst10|inst2|q\(1),
	datad => \inst10|inst2|q\(0),
	combout => \inst10|inst2|q~1_combout\);

-- Location: LCFF_X30_Y35_N13
\inst10|inst2|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst~clkctrl_outclk\,
	datain => \inst10|inst2|q~1_combout\,
	aclr => \inst10|inst5|ask~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|inst2|q\(1));

-- Location: LCCOMB_X30_Y35_N14
\inst10|inst2|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|inst2|Add0~0_combout\ = \inst10|inst2|q\(3) $ (((!\inst10|inst2|q\(2) & (\inst10|inst2|q\(0) & !\inst10|inst2|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst2|q\(2),
	datab => \inst10|inst2|q\(0),
	datac => \inst10|inst2|q\(3),
	datad => \inst10|inst2|q\(1),
	combout => \inst10|inst2|Add0~0_combout\);

-- Location: LCFF_X30_Y35_N15
\inst10|inst2|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst~clkctrl_outclk\,
	datain => \inst10|inst2|Add0~0_combout\,
	aclr => \inst10|inst5|ask~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|inst2|q\(3));

-- Location: LCCOMB_X30_Y35_N24
\inst10|inst2|q~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|inst2|q~0_combout\ = (\inst10|inst2|q\(1) & (((\inst10|inst2|q\(2))))) # (!\inst10|inst2|q\(1) & ((\inst10|inst2|q\(2) & ((!\inst10|inst2|q\(0)))) # (!\inst10|inst2|q\(2) & (!\inst10|inst2|q\(3) & \inst10|inst2|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst2|q\(1),
	datab => \inst10|inst2|q\(3),
	datac => \inst10|inst2|q\(2),
	datad => \inst10|inst2|q\(0),
	combout => \inst10|inst2|q~0_combout\);

-- Location: LCFF_X30_Y35_N25
\inst10|inst2|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst~clkctrl_outclk\,
	datain => \inst10|inst2|q~0_combout\,
	aclr => \inst10|inst5|ask~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|inst2|q\(2));

-- Location: LCCOMB_X31_Y35_N30
\inst10|inst4|q[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|inst4|q[0]~4_combout\ = !\inst10|inst4|q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|inst4|q\(0),
	combout => \inst10|inst4|q[0]~4_combout\);

-- Location: LCFF_X31_Y35_N31
\inst10|inst4|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10|inst3|ask~clkctrl_outclk\,
	datain => \inst10|inst4|q[0]~4_combout\,
	aclr => \inst10|inst5|ask~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|inst4|q\(0));

-- Location: LCCOMB_X31_Y35_N22
\inst10|inst4|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|inst4|Add0~0_combout\ = \inst10|inst4|q\(2) $ (((!\inst10|inst4|q\(1) & \inst10|inst4|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|inst4|q\(1),
	datac => \inst10|inst4|q\(2),
	datad => \inst10|inst4|q\(0),
	combout => \inst10|inst4|Add0~0_combout\);

-- Location: LCFF_X31_Y35_N23
\inst10|inst4|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10|inst3|ask~clkctrl_outclk\,
	datain => \inst10|inst4|Add0~0_combout\,
	aclr => \inst10|inst5|ask~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|inst4|q\(2));

-- Location: LCCOMB_X31_Y35_N26
\inst10|inst4|q~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|inst4|q~1_combout\ = (\inst10|inst4|q\(1) & (((!\inst10|inst4|q\(0))))) # (!\inst10|inst4|q\(1) & (\inst10|inst4|q\(0) & ((\inst10|inst4|q\(3)) # (!\inst10|inst4|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst4|q\(3),
	datab => \inst10|inst4|q\(2),
	datac => \inst10|inst4|q\(1),
	datad => \inst10|inst4|q\(0),
	combout => \inst10|inst4|q~1_combout\);

-- Location: LCFF_X31_Y35_N27
\inst10|inst4|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10|inst3|ask~clkctrl_outclk\,
	datain => \inst10|inst4|q~1_combout\,
	aclr => \inst10|inst5|ask~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|inst4|q\(1));

-- Location: LCCOMB_X31_Y35_N8
\inst10|inst4|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|inst4|Equal0~0_combout\ = (!\inst10|inst4|q\(3) & (!\inst10|inst4|q\(1) & (\inst10|inst4|q\(2) & \inst10|inst4|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst4|q\(3),
	datab => \inst10|inst4|q\(1),
	datac => \inst10|inst4|q\(2),
	datad => \inst10|inst4|q\(0),
	combout => \inst10|inst4|Equal0~0_combout\);

-- Location: LCFF_X31_Y35_N9
\inst10|inst4|ask\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10|inst3|ask~clkctrl_outclk\,
	datain => \inst10|inst4|Equal0~0_combout\,
	aclr => \inst10|inst5|ask~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|inst4|ask~regout\);

-- Location: CLKCTRL_G10
\inst10|inst4|ask~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst10|inst4|ask~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst10|inst4|ask~clkctrl_outclk\);

-- Location: LCCOMB_X31_Y35_N16
\inst10|inst5|q[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|inst5|q[0]~4_combout\ = !\inst10|inst5|q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|inst5|q\(0),
	combout => \inst10|inst5|q[0]~4_combout\);

-- Location: LCFF_X31_Y35_N17
\inst10|inst5|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10|inst4|ask~clkctrl_outclk\,
	datain => \inst10|inst5|q[0]~4_combout\,
	aclr => \inst10|inst5|ask~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|inst5|q\(0));

-- Location: LCCOMB_X30_Y35_N16
\inst10|inst2|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|inst2|Equal0~0_combout\ = (!\inst10|inst2|q\(1) & (\inst10|inst2|q\(3) & (!\inst10|inst2|q\(2) & \inst10|inst2|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst2|q\(1),
	datab => \inst10|inst2|q\(3),
	datac => \inst10|inst2|q\(2),
	datad => \inst10|inst2|q\(0),
	combout => \inst10|inst2|Equal0~0_combout\);

-- Location: LCFF_X30_Y35_N17
\inst10|inst2|ask\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst~clkctrl_outclk\,
	datain => \inst10|inst2|Equal0~0_combout\,
	aclr => \inst10|inst5|ask~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|inst2|ask~regout\);

-- Location: CLKCTRL_G8
\inst10|inst2|ask~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst10|inst2|ask~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst10|inst2|ask~clkctrl_outclk\);

-- Location: LCCOMB_X30_Y35_N30
\inst10|inst3|q[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|inst3|q[0]~4_combout\ = !\inst10|inst3|q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|inst3|q\(0),
	combout => \inst10|inst3|q[0]~4_combout\);

-- Location: LCFF_X30_Y35_N31
\inst10|inst3|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10|inst2|ask~clkctrl_outclk\,
	datain => \inst10|inst3|q[0]~4_combout\,
	aclr => \inst10|inst5|ask~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|inst3|q\(0));

-- Location: LCCOMB_X30_Y35_N18
\inst10|inst3|q~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|inst3|q~0_combout\ = (\inst10|inst3|q\(1) & (((\inst10|inst3|q\(2))))) # (!\inst10|inst3|q\(1) & ((\inst10|inst3|q\(2) & ((!\inst10|inst3|q\(0)))) # (!\inst10|inst3|q\(2) & (!\inst10|inst3|q\(3) & \inst10|inst3|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst3|q\(1),
	datab => \inst10|inst3|q\(3),
	datac => \inst10|inst3|q\(2),
	datad => \inst10|inst3|q\(0),
	combout => \inst10|inst3|q~0_combout\);

-- Location: LCFF_X30_Y35_N19
\inst10|inst3|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10|inst2|ask~clkctrl_outclk\,
	datain => \inst10|inst3|q~0_combout\,
	aclr => \inst10|inst5|ask~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|inst3|q\(2));

-- Location: LCCOMB_X30_Y35_N22
\inst10|inst3|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|inst3|Add0~0_combout\ = \inst10|inst3|q\(3) $ (((!\inst10|inst3|q\(1) & (\inst10|inst3|q\(0) & !\inst10|inst3|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst3|q\(1),
	datab => \inst10|inst3|q\(0),
	datac => \inst10|inst3|q\(3),
	datad => \inst10|inst3|q\(2),
	combout => \inst10|inst3|Add0~0_combout\);

-- Location: LCFF_X30_Y35_N23
\inst10|inst3|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10|inst2|ask~clkctrl_outclk\,
	datain => \inst10|inst3|Add0~0_combout\,
	aclr => \inst10|inst5|ask~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|inst3|q\(3));

-- Location: LCCOMB_X30_Y35_N20
\inst10|inst3|q~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|inst3|q~1_combout\ = (\inst10|inst3|q\(0) & (!\inst10|inst3|q\(1) & ((\inst10|inst3|q\(2)) # (!\inst10|inst3|q\(3))))) # (!\inst10|inst3|q\(0) & (((\inst10|inst3|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst3|q\(0),
	datab => \inst10|inst3|q\(3),
	datac => \inst10|inst3|q\(1),
	datad => \inst10|inst3|q\(2),
	combout => \inst10|inst3|q~1_combout\);

-- Location: LCFF_X30_Y35_N21
\inst10|inst3|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10|inst2|ask~clkctrl_outclk\,
	datain => \inst10|inst3|q~1_combout\,
	aclr => \inst10|inst5|ask~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|inst3|q\(1));

-- Location: LCCOMB_X30_Y35_N26
\inst10|inst3|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|inst3|Equal0~0_combout\ = (!\inst10|inst3|q\(1) & (!\inst10|inst3|q\(2) & (\inst10|inst3|q\(3) & \inst10|inst3|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst3|q\(1),
	datab => \inst10|inst3|q\(2),
	datac => \inst10|inst3|q\(3),
	datad => \inst10|inst3|q\(0),
	combout => \inst10|inst3|Equal0~0_combout\);

-- Location: LCFF_X30_Y35_N27
\inst10|inst3|ask\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10|inst2|ask~clkctrl_outclk\,
	datain => \inst10|inst3|Equal0~0_combout\,
	aclr => \inst10|inst5|ask~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|inst3|ask~regout\);

-- Location: CLKCTRL_G11
\inst10|inst3|ask~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst10|inst3|ask~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst10|inst3|ask~clkctrl_outclk\);

-- Location: LCCOMB_X31_Y35_N20
\inst10|inst4|q~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|inst4|q~0_combout\ = (\inst10|inst4|q\(3) & (((\inst10|inst4|q\(1)) # (!\inst10|inst4|q\(0))) # (!\inst10|inst4|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst4|q\(2),
	datab => \inst10|inst4|q\(0),
	datac => \inst10|inst4|q\(3),
	datad => \inst10|inst4|q\(1),
	combout => \inst10|inst4|q~0_combout\);

-- Location: LCFF_X31_Y35_N21
\inst10|inst4|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10|inst3|ask~clkctrl_outclk\,
	datain => \inst10|inst4|q~0_combout\,
	aclr => \inst10|inst5|ask~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|inst4|q\(3));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dc[3]~I\ : cycloneii_io
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
	datain => \inst10|inst2|ALT_INV_q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dc(3));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dc[2]~I\ : cycloneii_io
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
	datain => \inst10|inst2|q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dc(2));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dc[1]~I\ : cycloneii_io
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
	datain => \inst10|inst2|q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dc(1));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dc[0]~I\ : cycloneii_io
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
	datain => \inst10|inst2|ALT_INV_q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dc(0));

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\min[3]~I\ : cycloneii_io
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
	datain => \inst10|inst5|q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_min(3));

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\min[2]~I\ : cycloneii_io
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
	datain => \inst10|inst5|ALT_INV_q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_min(2));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\min[1]~I\ : cycloneii_io
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
	datain => \inst10|inst5|q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_min(1));

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\min[0]~I\ : cycloneii_io
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
	datain => \inst10|inst5|ALT_INV_q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_min(0));

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sg[3]~I\ : cycloneii_io
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
	datain => \inst10|inst3|ALT_INV_q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sg(3));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sg[2]~I\ : cycloneii_io
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
	datain => \inst10|inst3|q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sg(2));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sg[1]~I\ : cycloneii_io
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
	datain => \inst10|inst3|q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sg(1));

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sg[0]~I\ : cycloneii_io
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
	datain => \inst10|inst3|ALT_INV_q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sg(0));

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tseg[3]~I\ : cycloneii_io
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
	datain => \inst10|inst4|q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_tseg(3));

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tseg[2]~I\ : cycloneii_io
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
	datain => \inst10|inst4|ALT_INV_q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_tseg(2));

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tseg[1]~I\ : cycloneii_io
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
	datain => \inst10|inst4|q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_tseg(1));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tseg[0]~I\ : cycloneii_io
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
	datain => \inst10|inst4|ALT_INV_q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_tseg(0));
END structure;


