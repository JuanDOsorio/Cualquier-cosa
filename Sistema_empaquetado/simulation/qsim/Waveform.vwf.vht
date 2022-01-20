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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "12/03/2021 14:54:10"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Sistema_empaquetado
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Sistema_empaquetado_vhd_vec_tst IS
END Sistema_empaquetado_vhd_vec_tst;
ARCHITECTURE Sistema_empaquetado_arch OF Sistema_empaquetado_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL B : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL control : STD_LOGIC;
SIGNAL display : STD_LOGIC_VECTOR(0 TO 6);
SIGNAL reset : STD_LOGIC;
SIGNAL sensor : STD_LOGIC;
SIGNAL teclado : STD_LOGIC_VECTOR(0 TO 8);
COMPONENT Sistema_empaquetado
	PORT (
	B : INOUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	clk : IN STD_LOGIC;
	control : INOUT STD_LOGIC;
	display : OUT STD_LOGIC_VECTOR(0 TO 6);
	reset : IN STD_LOGIC;
	sensor : IN STD_LOGIC;
	teclado : IN STD_LOGIC_VECTOR(0 TO 8)
	);
END COMPONENT;
BEGIN
	i1 : Sistema_empaquetado
	PORT MAP (
-- list connections between master ports and signals
	B => B,
	clk => clk,
	control => control,
	display => display,
	reset => reset,
	sensor => sensor,
	teclado => teclado
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;

-- sensor
t_prcs_sensor: PROCESS
BEGIN
	sensor <= '0';
WAIT;
END PROCESS t_prcs_sensor;
-- teclado[8]
t_prcs_teclado_8: PROCESS
BEGIN
	teclado(8) <= '0';
WAIT;
END PROCESS t_prcs_teclado_8;
-- teclado[7]
t_prcs_teclado_7: PROCESS
BEGIN
	teclado(7) <= '0';
WAIT;
END PROCESS t_prcs_teclado_7;
-- teclado[6]
t_prcs_teclado_6: PROCESS
BEGIN
	teclado(6) <= '0';
WAIT;
END PROCESS t_prcs_teclado_6;
-- teclado[5]
t_prcs_teclado_5: PROCESS
BEGIN
	teclado(5) <= '0';
WAIT;
END PROCESS t_prcs_teclado_5;
-- teclado[4]
t_prcs_teclado_4: PROCESS
BEGIN
	teclado(4) <= '0';
WAIT;
END PROCESS t_prcs_teclado_4;
-- teclado[3]
t_prcs_teclado_3: PROCESS
BEGIN
	teclado(3) <= '0';
WAIT;
END PROCESS t_prcs_teclado_3;
-- teclado[2]
t_prcs_teclado_2: PROCESS
BEGIN
	teclado(2) <= '0';
WAIT;
END PROCESS t_prcs_teclado_2;
-- teclado[1]
t_prcs_teclado_1: PROCESS
BEGIN
	teclado(1) <= '0';
WAIT;
END PROCESS t_prcs_teclado_1;
-- teclado[0]
t_prcs_teclado_0: PROCESS
BEGIN
	teclado(0) <= '0';
WAIT;
END PROCESS t_prcs_teclado_0;
-- B[3]
t_prcs_B_3: PROCESS
BEGIN
	B(3) <= 'Z';
WAIT;
END PROCESS t_prcs_B_3;
-- B[2]
t_prcs_B_2: PROCESS
BEGIN
	B(2) <= 'Z';
WAIT;
END PROCESS t_prcs_B_2;
-- B[1]
t_prcs_B_1: PROCESS
BEGIN
	B(1) <= 'Z';
WAIT;
END PROCESS t_prcs_B_1;
-- B[0]
t_prcs_B_0: PROCESS
BEGIN
	B(0) <= 'Z';
WAIT;
END PROCESS t_prcs_B_0;

-- control
t_prcs_control: PROCESS
BEGIN
	control <= 'Z';
WAIT;
END PROCESS t_prcs_control;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
END Sistema_empaquetado_arch;
