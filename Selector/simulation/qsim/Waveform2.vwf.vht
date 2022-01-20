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
-- Generated on "11/29/2021 22:49:05"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Selector
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Selector_vhd_vec_tst IS
END Selector_vhd_vec_tst;
ARCHITECTURE Selector_arch OF Selector_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL D : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL mPC : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL out1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL sel : STD_LOGIC;
COMPONENT Selector
	PORT (
	D : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	mPC : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	out1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	sel : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Selector
	PORT MAP (
-- list connections between master ports and signals
	D => D,
	mPC => mPC,
	out1 => out1,
	sel => sel
	);
-- D[3]
t_prcs_D_3: PROCESS
BEGIN
	D(3) <= '0';
	WAIT FOR 800000 ps;
	D(3) <= '1';
WAIT;
END PROCESS t_prcs_D_3;
-- D[2]
t_prcs_D_2: PROCESS
BEGIN
	D(2) <= '0';
	WAIT FOR 400000 ps;
	D(2) <= '1';
	WAIT FOR 400000 ps;
	D(2) <= '0';
WAIT;
END PROCESS t_prcs_D_2;
-- D[1]
t_prcs_D_1: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		D(1) <= '0';
		WAIT FOR 200000 ps;
		D(1) <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	D(1) <= '0';
WAIT;
END PROCESS t_prcs_D_1;
-- D[0]
t_prcs_D_0: PROCESS
BEGIN
LOOP
	D(0) <= '0';
	WAIT FOR 100000 ps;
	D(0) <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_D_0;
-- mPC[3]
t_prcs_mPC_3: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		mPC(3) <= '0';
		WAIT FOR 200000 ps;
		mPC(3) <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	mPC(3) <= '0';
WAIT;
END PROCESS t_prcs_mPC_3;
-- mPC[2]
t_prcs_mPC_2: PROCESS
BEGIN
LOOP
	mPC(2) <= '0';
	WAIT FOR 100000 ps;
	mPC(2) <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_mPC_2;
-- mPC[1]
t_prcs_mPC_1: PROCESS
BEGIN
LOOP
	mPC(1) <= '0';
	WAIT FOR 50000 ps;
	mPC(1) <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_mPC_1;
-- mPC[0]
t_prcs_mPC_0: PROCESS
BEGIN
LOOP
	mPC(0) <= '0';
	WAIT FOR 25000 ps;
	mPC(0) <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_mPC_0;

-- sel
t_prcs_sel: PROCESS
BEGIN
LOOP
	sel <= '0';
	WAIT FOR 100000 ps;
	sel <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_sel;
END Selector_arch;
