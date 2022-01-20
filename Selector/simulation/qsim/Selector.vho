-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.0.0 Build 614 04/24/2018 SJ Lite Edition"

-- DATE "11/29/2021 22:49:07"

-- 
-- Device: Altera 5CEBA2F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Selector IS
    PORT (
	sel : IN std_logic;
	D : IN std_logic_vector(3 DOWNTO 0);
	mPC : IN std_logic_vector(3 DOWNTO 0);
	out1 : OUT std_logic_vector(3 DOWNTO 0)
	);
END Selector;

-- Design Ports Information
-- out1[0]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out1[1]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out1[2]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out1[3]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mPC[0]	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[0]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mPC[1]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[1]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mPC[2]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[2]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mPC[3]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[3]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Selector IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sel : std_logic;
SIGNAL ww_D : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_mPC : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_out1 : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \mPC[0]~input_o\ : std_logic;
SIGNAL \D[0]~input_o\ : std_logic;
SIGNAL \sel~input_o\ : std_logic;
SIGNAL \out1~0_combout\ : std_logic;
SIGNAL \mPC[1]~input_o\ : std_logic;
SIGNAL \D[1]~input_o\ : std_logic;
SIGNAL \out1~1_combout\ : std_logic;
SIGNAL \D[2]~input_o\ : std_logic;
SIGNAL \mPC[2]~input_o\ : std_logic;
SIGNAL \out1~2_combout\ : std_logic;
SIGNAL \mPC[3]~input_o\ : std_logic;
SIGNAL \D[3]~input_o\ : std_logic;
SIGNAL \out1~3_combout\ : std_logic;
SIGNAL \ALT_INV_D[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_mPC[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_D[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_mPC[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_D[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_mPC[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_D[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_mPC[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_sel~input_o\ : std_logic;

BEGIN

ww_sel <= sel;
ww_D <= D;
ww_mPC <= mPC;
out1 <= ww_out1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_D[3]~input_o\ <= NOT \D[3]~input_o\;
\ALT_INV_mPC[3]~input_o\ <= NOT \mPC[3]~input_o\;
\ALT_INV_D[2]~input_o\ <= NOT \D[2]~input_o\;
\ALT_INV_mPC[2]~input_o\ <= NOT \mPC[2]~input_o\;
\ALT_INV_D[1]~input_o\ <= NOT \D[1]~input_o\;
\ALT_INV_mPC[1]~input_o\ <= NOT \mPC[1]~input_o\;
\ALT_INV_D[0]~input_o\ <= NOT \D[0]~input_o\;
\ALT_INV_mPC[0]~input_o\ <= NOT \mPC[0]~input_o\;
\ALT_INV_sel~input_o\ <= NOT \sel~input_o\;

-- Location: IOOBUF_X0_Y18_N62
\out1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out1~0_combout\,
	devoe => ww_devoe,
	o => ww_out1(0));

-- Location: IOOBUF_X0_Y18_N96
\out1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out1~1_combout\,
	devoe => ww_devoe,
	o => ww_out1(1));

-- Location: IOOBUF_X0_Y21_N56
\out1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out1~2_combout\,
	devoe => ww_devoe,
	o => ww_out1(2));

-- Location: IOOBUF_X0_Y19_N22
\out1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out1~3_combout\,
	devoe => ww_devoe,
	o => ww_out1(3));

-- Location: IOIBUF_X0_Y20_N55
\mPC[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mPC(0),
	o => \mPC[0]~input_o\);

-- Location: IOIBUF_X0_Y20_N21
\D[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(0),
	o => \D[0]~input_o\);

-- Location: IOIBUF_X0_Y21_N38
\sel~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel,
	o => \sel~input_o\);

-- Location: LABCELL_X1_Y20_N0
\out1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \out1~0_combout\ = ( \D[0]~input_o\ & ( \sel~input_o\ & ( \mPC[0]~input_o\ ) ) ) # ( !\D[0]~input_o\ & ( \sel~input_o\ & ( \mPC[0]~input_o\ ) ) ) # ( \D[0]~input_o\ & ( !\sel~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_mPC[0]~input_o\,
	datae => \ALT_INV_D[0]~input_o\,
	dataf => \ALT_INV_sel~input_o\,
	combout => \out1~0_combout\);

-- Location: IOIBUF_X0_Y18_N44
\mPC[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mPC(1),
	o => \mPC[1]~input_o\);

-- Location: IOIBUF_X0_Y18_N78
\D[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(1),
	o => \D[1]~input_o\);

-- Location: LABCELL_X1_Y18_N3
\out1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \out1~1_combout\ = ( \sel~input_o\ & ( \mPC[1]~input_o\ ) ) # ( !\sel~input_o\ & ( \D[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mPC[1]~input_o\,
	datac => \ALT_INV_D[1]~input_o\,
	dataf => \ALT_INV_sel~input_o\,
	combout => \out1~1_combout\);

-- Location: IOIBUF_X0_Y21_N4
\D[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(2),
	o => \D[2]~input_o\);

-- Location: IOIBUF_X0_Y21_N21
\mPC[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mPC(2),
	o => \mPC[2]~input_o\);

-- Location: LABCELL_X1_Y21_N0
\out1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \out1~2_combout\ = ( \mPC[2]~input_o\ & ( \sel~input_o\ ) ) # ( \mPC[2]~input_o\ & ( !\sel~input_o\ & ( \D[2]~input_o\ ) ) ) # ( !\mPC[2]~input_o\ & ( !\sel~input_o\ & ( \D[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_D[2]~input_o\,
	datae => \ALT_INV_mPC[2]~input_o\,
	dataf => \ALT_INV_sel~input_o\,
	combout => \out1~2_combout\);

-- Location: IOIBUF_X0_Y20_N4
\mPC[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mPC(3),
	o => \mPC[3]~input_o\);

-- Location: IOIBUF_X0_Y20_N38
\D[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(3),
	o => \D[3]~input_o\);

-- Location: LABCELL_X1_Y20_N39
\out1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \out1~3_combout\ = ( \sel~input_o\ & ( \mPC[3]~input_o\ ) ) # ( !\sel~input_o\ & ( \D[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mPC[3]~input_o\,
	datac => \ALT_INV_D[3]~input_o\,
	dataf => \ALT_INV_sel~input_o\,
	combout => \out1~3_combout\);

-- Location: LABCELL_X10_Y42_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


