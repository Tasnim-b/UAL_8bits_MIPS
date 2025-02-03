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
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "01/04/2025 16:48:56"

-- 
-- Device: Altera EP3C25F324C6 Package FBGA324
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	risc IS
    PORT (
	s : OUT std_logic;
	b : IN std_logic;
	a : IN std_logic;
	invert : IN std_logic;
	cin : IN std_logic;
	e3 : IN std_logic;
	\select\ : IN std_logic_vector(1 DOWNTO 0);
	co : OUT std_logic
	);
END risc;

-- Design Ports Information
-- s	=>  Location: PIN_F6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- co	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- select[0]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- invert	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cin	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- select[1]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e3	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF risc IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_s : std_logic;
SIGNAL ww_b : std_logic;
SIGNAL ww_a : std_logic;
SIGNAL ww_invert : std_logic;
SIGNAL ww_cin : std_logic;
SIGNAL ww_e3 : std_logic;
SIGNAL \ww_select\ : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_co : std_logic;
SIGNAL \s~output_o\ : std_logic;
SIGNAL \co~output_o\ : std_logic;
SIGNAL \b~input_o\ : std_logic;
SIGNAL \select[1]~input_o\ : std_logic;
SIGNAL \select[0]~input_o\ : std_logic;
SIGNAL \a~input_o\ : std_logic;
SIGNAL \inst1|LPM_MUX_component|auto_generated|result_node[0]~2_combout\ : std_logic;
SIGNAL \cin~input_o\ : std_logic;
SIGNAL \invert~input_o\ : std_logic;
SIGNAL \inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \e3~input_o\ : std_logic;
SIGNAL \inst1|LPM_MUX_component|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst1|LPM_MUX_component|auto_generated|result_node[0]~3_combout\ : std_logic;
SIGNAL \inst|inst14~0_combout\ : std_logic;
SIGNAL \inst1|LPM_MUX_component|auto_generated|ALT_INV_result_node[0]~3_combout\ : std_logic;

BEGIN

s <= ww_s;
ww_b <= b;
ww_a <= a;
ww_invert <= invert;
ww_cin <= cin;
ww_e3 <= e3;
\ww_select\ <= \select\;
co <= ww_co;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst1|LPM_MUX_component|auto_generated|ALT_INV_result_node[0]~3_combout\ <= NOT \inst1|LPM_MUX_component|auto_generated|result_node[0]~3_combout\;

-- Location: IOOBUF_X5_Y34_N16
\s~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|LPM_MUX_component|auto_generated|ALT_INV_result_node[0]~3_combout\,
	devoe => ww_devoe,
	o => \s~output_o\);

-- Location: IOOBUF_X0_Y14_N16
\co~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst14~0_combout\,
	devoe => ww_devoe,
	o => \co~output_o\);

-- Location: IOIBUF_X0_Y25_N8
\b~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b,
	o => \b~input_o\);

-- Location: IOIBUF_X0_Y12_N8
\select[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_select\(1),
	o => \select[1]~input_o\);

-- Location: IOIBUF_X5_Y0_N1
\select[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_select\(0),
	o => \select[0]~input_o\);

-- Location: IOIBUF_X0_Y28_N1
\a~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a,
	o => \a~input_o\);

-- Location: LCCOMB_X5_Y10_N12
\inst1|LPM_MUX_component|auto_generated|result_node[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LPM_MUX_component|auto_generated|result_node[0]~2_combout\ = (\a~input_o\ & (\select[0]~input_o\ $ (((!\b~input_o\ & \select[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~input_o\,
	datab => \select[1]~input_o\,
	datac => \select[0]~input_o\,
	datad => \a~input_o\,
	combout => \inst1|LPM_MUX_component|auto_generated|result_node[0]~2_combout\);

-- Location: IOIBUF_X0_Y15_N8
\cin~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cin,
	o => \cin~input_o\);

-- Location: IOIBUF_X29_Y0_N15
\invert~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_invert,
	o => \invert~input_o\);

-- Location: LCCOMB_X5_Y10_N16
\inst1|LPM_MUX_component|auto_generated|result_node[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ = (\select[0]~input_o\ & (\b~input_o\ $ (\cin~input_o\ $ (!\invert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~input_o\,
	datab => \cin~input_o\,
	datac => \select[0]~input_o\,
	datad => \invert~input_o\,
	combout => \inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\);

-- Location: IOIBUF_X9_Y0_N1
\e3~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_e3,
	o => \e3~input_o\);

-- Location: LCCOMB_X5_Y10_N2
\inst1|LPM_MUX_component|auto_generated|result_node[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LPM_MUX_component|auto_generated|result_node[0]~1_combout\ = (\select[1]~input_o\ & (((\select[0]~input_o\)) # (!\b~input_o\))) # (!\select[1]~input_o\ & (((!\select[0]~input_o\ & !\e3~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~input_o\,
	datab => \select[1]~input_o\,
	datac => \select[0]~input_o\,
	datad => \e3~input_o\,
	combout => \inst1|LPM_MUX_component|auto_generated|result_node[0]~1_combout\);

-- Location: LCCOMB_X5_Y10_N6
\inst1|LPM_MUX_component|auto_generated|result_node[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LPM_MUX_component|auto_generated|result_node[0]~3_combout\ = \inst1|LPM_MUX_component|auto_generated|result_node[0]~2_combout\ $ (((\inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\) # 
-- (\inst1|LPM_MUX_component|auto_generated|result_node[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LPM_MUX_component|auto_generated|result_node[0]~2_combout\,
	datab => \inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datad => \inst1|LPM_MUX_component|auto_generated|result_node[0]~1_combout\,
	combout => \inst1|LPM_MUX_component|auto_generated|result_node[0]~3_combout\);

-- Location: LCCOMB_X5_Y10_N0
\inst|inst14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst14~0_combout\ = (\cin~input_o\ & ((\a~input_o\) # (\invert~input_o\ $ (\b~input_o\)))) # (!\cin~input_o\ & (\a~input_o\ & (\invert~input_o\ $ (\b~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \invert~input_o\,
	datab => \cin~input_o\,
	datac => \b~input_o\,
	datad => \a~input_o\,
	combout => \inst|inst14~0_combout\);

ww_s <= \s~output_o\;

ww_co <= \co~output_o\;
END structure;


