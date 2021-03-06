-- Copyright (C) 2021  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/08/2021 08:05:30"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          compuerta_and
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY compuerta_and_vhd_vec_tst IS
END compuerta_and_vhd_vec_tst;
ARCHITECTURE compuerta_and_arch OF compuerta_and_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC;
SIGNAL B : STD_LOGIC;
SIGNAL Y_AND : STD_LOGIC;
COMPONENT compuerta_and
	PORT (
	A : IN STD_LOGIC;
	B : IN STD_LOGIC;
	Y_AND : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : compuerta_and
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	Y_AND => Y_AND
	);

-- A
t_prcs_A: PROCESS
BEGIN
	FOR i IN 1 TO 16
	LOOP
		A <= '0';
		WAIT FOR 240000 ps;
		A <= '1';
		WAIT FOR 240000 ps;
	END LOOP;
	A <= '0';
	WAIT FOR 240000 ps;
	A <= '1';
WAIT;
END PROCESS t_prcs_A;

-- B
t_prcs_B: PROCESS
BEGIN
	FOR i IN 1 TO 33
	LOOP
		B <= '0';
		WAIT FOR 120000 ps;
		B <= '1';
		WAIT FOR 120000 ps;
	END LOOP;
	B <= '0';
WAIT;
END PROCESS t_prcs_B;
END compuerta_and_arch;
