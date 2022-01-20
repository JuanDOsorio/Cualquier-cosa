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

-- DATE "12/04/2021 13:00:51"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Sistema_empaquetado IS
    PORT (
	teclado : IN std_logic_vector(0 TO 8);
	clk : IN std_logic;
	sensor : IN std_logic;
	reset : IN std_logic;
	display : OUT std_logic_vector(0 TO 6);
	control : INOUT std_logic;
	B : INOUT std_logic_vector(3 DOWNTO 0)
	);
END Sistema_empaquetado;

-- Design Ports Information
-- display[6]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[5]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[4]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[3]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[2]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[1]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[0]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teclado[8]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teclado[7]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teclado[6]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teclado[5]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teclado[4]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teclado[3]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teclado[2]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teclado[1]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teclado[0]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sensor	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Sistema_empaquetado IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_teclado : std_logic_vector(0 TO 8);
SIGNAL ww_clk : std_logic;
SIGNAL ww_sensor : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_display : std_logic_vector(0 TO 6);
SIGNAL \Mux3_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mux3_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \control~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \sensor~input_o\ : std_logic;
SIGNAL \sensor~inputCLKENA0_outclk\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \teclado[8]~input_o\ : std_logic;
SIGNAL \teclado[7]~input_o\ : std_logic;
SIGNAL \teclado[6]~input_o\ : std_logic;
SIGNAL \teclado[5]~input_o\ : std_logic;
SIGNAL \teclado[4]~input_o\ : std_logic;
SIGNAL \teclado[3]~input_o\ : std_logic;
SIGNAL \teclado[2]~input_o\ : std_logic;
SIGNAL \teclado[1]~input_o\ : std_logic;
SIGNAL \teclado[0]~input_o\ : std_logic;
SIGNAL \Mux3_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \B[2]~11_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \B[2]~reg0_q\ : std_logic;
SIGNAL \B[1]~10_combout\ : std_logic;
SIGNAL \B[1]~reg0_q\ : std_logic;
SIGNAL \Mux3_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \Mux3_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \Mux3_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \B[0]~9_combout\ : std_logic;
SIGNAL \B[0]~reg0_q\ : std_logic;
SIGNAL \B[3]~8_combout\ : std_logic;
SIGNAL \B[3]~reg0_q\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ALT_INV_B[2]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_B[1]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_B[0]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_B[3]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \Mux3_rtl_0|auto_generated|ALT_INV_ram_block1a1\ : std_logic;
SIGNAL \Mux3_rtl_0|auto_generated|ALT_INV_ram_block1a2\ : std_logic;
SIGNAL \Mux3_rtl_0|auto_generated|ALT_INV_ram_block1a3\ : std_logic;
SIGNAL \Mux3_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\ : std_logic;

BEGIN

ww_teclado <= teclado;
ww_clk <= clk;
ww_sensor <= sensor;
ww_reset <= reset;
display <= ww_display;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Mux3_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\teclado[0]~input_o\ & \teclado[1]~input_o\ & \teclado[2]~input_o\ & \teclado[3]~input_o\ & \teclado[4]~input_o\ & \teclado[5]~input_o\ & \teclado[6]~input_o\ & \teclado[7]~input_o\ & 
\teclado[8]~input_o\);

\Mux3_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \Mux3_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\Mux3_rtl_0|auto_generated|ram_block1a1\ <= \Mux3_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\Mux3_rtl_0|auto_generated|ram_block1a2\ <= \Mux3_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\Mux3_rtl_0|auto_generated|ram_block1a3\ <= \Mux3_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_Equal1~0_combout\ <= NOT \Equal1~0_combout\;
\ALT_INV_B[2]~reg0_q\ <= NOT \B[2]~reg0_q\;
\ALT_INV_B[1]~reg0_q\ <= NOT \B[1]~reg0_q\;
\ALT_INV_B[0]~reg0_q\ <= NOT \B[0]~reg0_q\;
\ALT_INV_B[3]~reg0_q\ <= NOT \B[3]~reg0_q\;
\ALT_INV_Mux4~0_combout\ <= NOT \Mux4~0_combout\;
\ALT_INV_Mux5~0_combout\ <= NOT \Mux5~0_combout\;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;
\ALT_INV_Mux7~0_combout\ <= NOT \Mux7~0_combout\;
\ALT_INV_Mux8~0_combout\ <= NOT \Mux8~0_combout\;
\ALT_INV_Mux9~0_combout\ <= NOT \Mux9~0_combout\;
\Mux3_rtl_0|auto_generated|ALT_INV_ram_block1a1\ <= NOT \Mux3_rtl_0|auto_generated|ram_block1a1\;
\Mux3_rtl_0|auto_generated|ALT_INV_ram_block1a2\ <= NOT \Mux3_rtl_0|auto_generated|ram_block1a2\;
\Mux3_rtl_0|auto_generated|ALT_INV_ram_block1a3\ <= NOT \Mux3_rtl_0|auto_generated|ram_block1a3\;
\Mux3_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\ <= NOT \Mux3_rtl_0|auto_generated|ram_block1a0~portadataout\;

-- Location: IOOBUF_X72_Y0_N2
\display[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~0_combout\,
	devoe => ww_devoe,
	o => ww_display(6));

-- Location: IOOBUF_X64_Y0_N19
\display[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux9~0_combout\,
	devoe => ww_devoe,
	o => ww_display(5));

-- Location: IOOBUF_X72_Y0_N36
\display[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux8~0_combout\,
	devoe => ww_devoe,
	o => ww_display(4));

-- Location: IOOBUF_X70_Y0_N19
\display[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux7~0_combout\,
	devoe => ww_devoe,
	o => ww_display(3));

-- Location: IOOBUF_X70_Y0_N53
\display[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_display(2));

-- Location: IOOBUF_X68_Y0_N36
\display[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_display(1));

-- Location: IOOBUF_X68_Y0_N53
\display[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_display(0));

-- Location: IOOBUF_X72_Y0_N53
\control~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal1~1_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => control);

-- Location: IOOBUF_X68_Y0_N2
\B[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \B[0]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => B(0));

-- Location: IOOBUF_X70_Y0_N2
\B[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \B[1]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => B(1));

-- Location: IOOBUF_X70_Y0_N36
\B[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \B[2]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => B(2));

-- Location: IOOBUF_X68_Y0_N19
\B[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \B[3]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => B(3));

-- Location: IOIBUF_X89_Y35_N44
\sensor~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sensor,
	o => \sensor~input_o\);

-- Location: CLKCTRL_G8
\sensor~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \sensor~input_o\,
	outclk => \sensor~inputCLKENA0_outclk\);

-- Location: IOIBUF_X89_Y35_N61
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X64_Y0_N52
\teclado[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_teclado(8),
	o => \teclado[8]~input_o\);

-- Location: IOIBUF_X62_Y0_N1
\teclado[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_teclado(7),
	o => \teclado[7]~input_o\);

-- Location: IOIBUF_X64_Y0_N1
\teclado[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_teclado(6),
	o => \teclado[6]~input_o\);

-- Location: IOIBUF_X66_Y0_N92
\teclado[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_teclado(5),
	o => \teclado[5]~input_o\);

-- Location: IOIBUF_X66_Y0_N75
\teclado[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_teclado(4),
	o => \teclado[4]~input_o\);

-- Location: IOIBUF_X62_Y0_N18
\teclado[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_teclado(3),
	o => \teclado[3]~input_o\);

-- Location: IOIBUF_X66_Y0_N58
\teclado[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_teclado(2),
	o => \teclado[2]~input_o\);

-- Location: IOIBUF_X64_Y0_N35
\teclado[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_teclado(1),
	o => \teclado[1]~input_o\);

-- Location: IOIBUF_X66_Y0_N41
\teclado[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_teclado(0),
	o => \teclado[0]~input_o\);

-- Location: M10K_X69_Y2_N0
\Mux3_rtl_0|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => "00009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900",
	mem_init3 => "00900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000",
	mem_init2 => "90000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000010000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090",
	mem_init1 => "00090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000200009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000",
	mem_init0 => "09000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000300009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000090000900009000040000900009000090000900009000090000900009000090000900009000090000900009000090000500009000090000900009000090000900009000060000900009000090000700009000080000900001",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "Sistema_empaquetado.Sistema_empaquetado0.rtl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:Mux3_rtl_0|altsyncram_l981:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 9,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 20,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 511,
	port_a_logical_ram_depth => 512,
	port_a_logical_ram_width => 4,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 9,
	port_b_data_width => 20,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputCLKENA0_outclk\,
	portaaddr => \Mux3_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \Mux3_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LABCELL_X70_Y2_N42
\B[2]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \B[2]~11_combout\ = ( \B[2]~reg0_q\ & ( \Equal1~0_combout\ & ( (!\B[1]~reg0_q\) # ((!\B[0]~reg0_q\) # (!\B[3]~reg0_q\ $ (\Mux3_rtl_0|auto_generated|ram_block1a3\))) ) ) ) # ( !\B[2]~reg0_q\ & ( \Equal1~0_combout\ & ( (\B[1]~reg0_q\ & (\B[0]~reg0_q\ & 
-- (!\B[3]~reg0_q\ $ (!\Mux3_rtl_0|auto_generated|ram_block1a3\)))) ) ) ) # ( \B[2]~reg0_q\ & ( !\Equal1~0_combout\ & ( (!\B[1]~reg0_q\) # (!\B[0]~reg0_q\) ) ) ) # ( !\B[2]~reg0_q\ & ( !\Equal1~0_combout\ & ( (\B[1]~reg0_q\ & \B[0]~reg0_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111111111000000000000000001101111111111111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~reg0_q\,
	datab => \Mux3_rtl_0|auto_generated|ALT_INV_ram_block1a3\,
	datac => \ALT_INV_B[1]~reg0_q\,
	datad => \ALT_INV_B[0]~reg0_q\,
	datae => \ALT_INV_B[2]~reg0_q\,
	dataf => \ALT_INV_Equal1~0_combout\,
	combout => \B[2]~11_combout\);

-- Location: IOIBUF_X72_Y0_N18
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X70_Y2_N44
\B[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sensor~inputCLKENA0_outclk\,
	d => \B[2]~11_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B[2]~reg0_q\);

-- Location: LABCELL_X70_Y2_N54
\B[1]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \B[1]~10_combout\ = ( \B[1]~reg0_q\ & ( \Equal1~0_combout\ & ( (!\B[0]~reg0_q\) # (!\B[3]~reg0_q\ $ (\Mux3_rtl_0|auto_generated|ram_block1a3\)) ) ) ) # ( !\B[1]~reg0_q\ & ( \Equal1~0_combout\ & ( (\B[0]~reg0_q\ & ((!\B[3]~reg0_q\ & 
-- ((\Mux3_rtl_0|auto_generated|ram_block1a3\))) # (\B[3]~reg0_q\ & (\B[2]~reg0_q\ & !\Mux3_rtl_0|auto_generated|ram_block1a3\)))) ) ) ) # ( \B[1]~reg0_q\ & ( !\Equal1~0_combout\ & ( !\B[0]~reg0_q\ ) ) ) # ( !\B[1]~reg0_q\ & ( !\Equal1~0_combout\ & ( 
-- (\B[0]~reg0_q\ & ((!\B[3]~reg0_q\) # (\B[2]~reg0_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010111011111111110000000000000000000110101111111110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~reg0_q\,
	datab => \ALT_INV_B[2]~reg0_q\,
	datac => \Mux3_rtl_0|auto_generated|ALT_INV_ram_block1a3\,
	datad => \ALT_INV_B[0]~reg0_q\,
	datae => \ALT_INV_B[1]~reg0_q\,
	dataf => \ALT_INV_Equal1~0_combout\,
	combout => \B[1]~10_combout\);

-- Location: FF_X70_Y2_N56
\B[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sensor~inputCLKENA0_outclk\,
	d => \B[1]~10_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B[1]~reg0_q\);

-- Location: LABCELL_X70_Y2_N18
\Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = ( \Mux3_rtl_0|auto_generated|ram_block1a2\ & ( \B[2]~reg0_q\ & ( (!\B[1]~reg0_q\ & (!\Mux3_rtl_0|auto_generated|ram_block1a1\ & (!\Mux3_rtl_0|auto_generated|ram_block1a0~portadataout\ $ (\B[0]~reg0_q\)))) # (\B[1]~reg0_q\ & 
-- (\Mux3_rtl_0|auto_generated|ram_block1a1\ & (!\Mux3_rtl_0|auto_generated|ram_block1a0~portadataout\ $ (\B[0]~reg0_q\)))) ) ) ) # ( !\Mux3_rtl_0|auto_generated|ram_block1a2\ & ( !\B[2]~reg0_q\ & ( (!\B[1]~reg0_q\ & 
-- (!\Mux3_rtl_0|auto_generated|ram_block1a1\ & (!\Mux3_rtl_0|auto_generated|ram_block1a0~portadataout\ $ (\B[0]~reg0_q\)))) # (\B[1]~reg0_q\ & (\Mux3_rtl_0|auto_generated|ram_block1a1\ & (!\Mux3_rtl_0|auto_generated|ram_block1a0~portadataout\ $ 
-- (\B[0]~reg0_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000001001000000000000000000000000000000001001000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~reg0_q\,
	datab => \Mux3_rtl_0|auto_generated|ALT_INV_ram_block1a1\,
	datac => \Mux3_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	datad => \ALT_INV_B[0]~reg0_q\,
	datae => \Mux3_rtl_0|auto_generated|ALT_INV_ram_block1a2\,
	dataf => \ALT_INV_B[2]~reg0_q\,
	combout => \Equal1~0_combout\);

-- Location: LABCELL_X70_Y2_N6
\B[0]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \B[0]~9_combout\ = ( \Equal1~0_combout\ & ( !\Mux3_rtl_0|auto_generated|ram_block1a3\ $ (!\B[3]~reg0_q\ $ (\B[0]~reg0_q\)) ) ) # ( !\Equal1~0_combout\ & ( !\B[0]~reg0_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000111100110000110011110011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mux3_rtl_0|auto_generated|ALT_INV_ram_block1a3\,
	datac => \ALT_INV_B[3]~reg0_q\,
	datad => \ALT_INV_B[0]~reg0_q\,
	dataf => \ALT_INV_Equal1~0_combout\,
	combout => \B[0]~9_combout\);

-- Location: FF_X70_Y2_N8
\B[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sensor~inputCLKENA0_outclk\,
	d => \B[0]~9_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B[0]~reg0_q\);

-- Location: LABCELL_X70_Y2_N24
\B[3]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \B[3]~8_combout\ = ( \B[3]~reg0_q\ & ( \Equal1~0_combout\ & ( ((!\B[0]~reg0_q\) # (!\B[1]~reg0_q\ $ (!\B[2]~reg0_q\))) # (\Mux3_rtl_0|auto_generated|ram_block1a3\) ) ) ) # ( !\B[3]~reg0_q\ & ( \Equal1~0_combout\ & ( 
-- (\Mux3_rtl_0|auto_generated|ram_block1a3\ & (\B[0]~reg0_q\ & (\B[1]~reg0_q\ & \B[2]~reg0_q\))) ) ) ) # ( \B[3]~reg0_q\ & ( !\Equal1~0_combout\ & ( (!\B[0]~reg0_q\) # (!\B[1]~reg0_q\ $ (!\B[2]~reg0_q\)) ) ) ) # ( !\B[3]~reg0_q\ & ( !\Equal1~0_combout\ & ( 
-- (\B[0]~reg0_q\ & (\B[1]~reg0_q\ & \B[2]~reg0_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011110011111111110000000000000000011101111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3_rtl_0|auto_generated|ALT_INV_ram_block1a3\,
	datab => \ALT_INV_B[0]~reg0_q\,
	datac => \ALT_INV_B[1]~reg0_q\,
	datad => \ALT_INV_B[2]~reg0_q\,
	datae => \ALT_INV_B[3]~reg0_q\,
	dataf => \ALT_INV_Equal1~0_combout\,
	combout => \B[3]~8_combout\);

-- Location: FF_X70_Y2_N26
\B[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sensor~inputCLKENA0_outclk\,
	d => \B[3]~8_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B[3]~reg0_q\);

-- Location: LABCELL_X70_Y2_N9
\Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = ( \Equal1~0_combout\ & ( !\B[3]~reg0_q\ $ (!\Mux3_rtl_0|auto_generated|ram_block1a3\) ) ) # ( !\Equal1~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~reg0_q\,
	datab => \Mux3_rtl_0|auto_generated|ALT_INV_ram_block1a3\,
	dataf => \ALT_INV_Equal1~0_combout\,
	combout => \Equal1~1_combout\);

-- Location: LABCELL_X70_Y2_N48
\Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = ( \Mux3_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( \Mux3_rtl_0|auto_generated|ram_block1a3\ ) ) # ( !\Mux3_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( \Mux3_rtl_0|auto_generated|ram_block1a3\ ) ) # ( 
-- \Mux3_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( !\Mux3_rtl_0|auto_generated|ram_block1a3\ & ( !\Mux3_rtl_0|auto_generated|ram_block1a1\ $ (!\Mux3_rtl_0|auto_generated|ram_block1a2\) ) ) ) # ( 
-- !\Mux3_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( !\Mux3_rtl_0|auto_generated|ram_block1a3\ & ( (\Mux3_rtl_0|auto_generated|ram_block1a2\) # (\Mux3_rtl_0|auto_generated|ram_block1a1\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111000011110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mux3_rtl_0|auto_generated|ALT_INV_ram_block1a1\,
	datac => \Mux3_rtl_0|auto_generated|ALT_INV_ram_block1a2\,
	datae => \Mux3_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	dataf => \Mux3_rtl_0|auto_generated|ALT_INV_ram_block1a3\,
	combout => \Mux10~0_combout\);

-- Location: LABCELL_X70_Y2_N3
\Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = ( \Mux3_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( !\Mux3_rtl_0|auto_generated|ram_block1a3\ & ( (!\Mux3_rtl_0|auto_generated|ram_block1a2\) # (\Mux3_rtl_0|auto_generated|ram_block1a1\) ) ) ) # ( 
-- !\Mux3_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( !\Mux3_rtl_0|auto_generated|ram_block1a3\ & ( (\Mux3_rtl_0|auto_generated|ram_block1a1\ & !\Mux3_rtl_0|auto_generated|ram_block1a2\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000111111110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mux3_rtl_0|auto_generated|ALT_INV_ram_block1a1\,
	datad => \Mux3_rtl_0|auto_generated|ALT_INV_ram_block1a2\,
	datae => \Mux3_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	dataf => \Mux3_rtl_0|auto_generated|ALT_INV_ram_block1a3\,
	combout => \Mux9~0_combout\);

-- Location: LABCELL_X70_Y2_N36
\Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = ( \Mux3_rtl_0|auto_generated|ram_block1a1\ & ( (\Mux3_rtl_0|auto_generated|ram_block1a0~portadataout\) # (\Mux3_rtl_0|auto_generated|ram_block1a3\) ) ) # ( !\Mux3_rtl_0|auto_generated|ram_block1a1\ & ( 
-- (\Mux3_rtl_0|auto_generated|ram_block1a0~portadataout\) # (\Mux3_rtl_0|auto_generated|ram_block1a2\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mux3_rtl_0|auto_generated|ALT_INV_ram_block1a3\,
	datac => \Mux3_rtl_0|auto_generated|ALT_INV_ram_block1a2\,
	datad => \Mux3_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	dataf => \Mux3_rtl_0|auto_generated|ALT_INV_ram_block1a1\,
	combout => \Mux8~0_combout\);

-- Location: LABCELL_X70_Y2_N39
\Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = ( \Mux3_rtl_0|auto_generated|ram_block1a1\ & ( ((\Mux3_rtl_0|auto_generated|ram_block1a2\ & \Mux3_rtl_0|auto_generated|ram_block1a0~portadataout\)) # (\Mux3_rtl_0|auto_generated|ram_block1a3\) ) ) # ( 
-- !\Mux3_rtl_0|auto_generated|ram_block1a1\ & ( (!\Mux3_rtl_0|auto_generated|ram_block1a2\ & ((\Mux3_rtl_0|auto_generated|ram_block1a0~portadataout\))) # (\Mux3_rtl_0|auto_generated|ram_block1a2\ & ((!\Mux3_rtl_0|auto_generated|ram_block1a0~portadataout\) # 
-- (\Mux3_rtl_0|auto_generated|ram_block1a3\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110111011010101011011101100110011011101110011001101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3_rtl_0|auto_generated|ALT_INV_ram_block1a2\,
	datab => \Mux3_rtl_0|auto_generated|ALT_INV_ram_block1a3\,
	datad => \Mux3_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	dataf => \Mux3_rtl_0|auto_generated|ALT_INV_ram_block1a1\,
	combout => \Mux7~0_combout\);

-- Location: LABCELL_X70_Y2_N30
\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( \Mux3_rtl_0|auto_generated|ram_block1a1\ & ( (!\Mux3_rtl_0|auto_generated|ram_block1a2\ & (!\Mux3_rtl_0|auto_generated|ram_block1a3\ & !\Mux3_rtl_0|auto_generated|ram_block1a0~portadataout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010001000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3_rtl_0|auto_generated|ALT_INV_ram_block1a2\,
	datab => \Mux3_rtl_0|auto_generated|ALT_INV_ram_block1a3\,
	datad => \Mux3_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	dataf => \Mux3_rtl_0|auto_generated|ALT_INV_ram_block1a1\,
	combout => \Mux6~0_combout\);

-- Location: LABCELL_X70_Y2_N33
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( \Mux3_rtl_0|auto_generated|ram_block1a1\ & ( (\Mux3_rtl_0|auto_generated|ram_block1a2\ & (!\Mux3_rtl_0|auto_generated|ram_block1a3\ & !\Mux3_rtl_0|auto_generated|ram_block1a0~portadataout\)) ) ) # ( 
-- !\Mux3_rtl_0|auto_generated|ram_block1a1\ & ( (\Mux3_rtl_0|auto_generated|ram_block1a2\ & (!\Mux3_rtl_0|auto_generated|ram_block1a3\ & \Mux3_rtl_0|auto_generated|ram_block1a0~portadataout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010001000100000000000100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3_rtl_0|auto_generated|ALT_INV_ram_block1a2\,
	datab => \Mux3_rtl_0|auto_generated|ALT_INV_ram_block1a3\,
	datad => \Mux3_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	dataf => \Mux3_rtl_0|auto_generated|ALT_INV_ram_block1a1\,
	combout => \Mux5~0_combout\);

-- Location: LABCELL_X70_Y2_N12
\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( \Mux3_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( !\Mux3_rtl_0|auto_generated|ram_block1a3\ & ( (!\Mux3_rtl_0|auto_generated|ram_block1a1\ & !\Mux3_rtl_0|auto_generated|ram_block1a2\) ) ) ) # ( 
-- !\Mux3_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( !\Mux3_rtl_0|auto_generated|ram_block1a3\ & ( (!\Mux3_rtl_0|auto_generated|ram_block1a1\ & \Mux3_rtl_0|auto_generated|ram_block1a2\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100110000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mux3_rtl_0|auto_generated|ALT_INV_ram_block1a1\,
	datac => \Mux3_rtl_0|auto_generated|ALT_INV_ram_block1a2\,
	datae => \Mux3_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	dataf => \Mux3_rtl_0|auto_generated|ALT_INV_ram_block1a3\,
	combout => \Mux4~0_combout\);

-- Location: IOIBUF_X72_Y0_N52
\control~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => control,
	o => \control~input_o\);

-- Location: IOIBUF_X68_Y0_N1
\B[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X70_Y0_N1
\B[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X70_Y0_N35
\B[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X68_Y0_N18
\B[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => B(3),
	o => \B[3]~input_o\);

-- Location: LABCELL_X18_Y9_N0
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


