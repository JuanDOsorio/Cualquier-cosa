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
-- Generated on "11/22/2021 07:41:45"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          semaforo
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY semaforo_vhd_vec_tst IS
END semaforo_vhd_vec_tst;
ARCHITECTURE semaforo_arch OF semaforo_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL E : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL S : STD_LOGIC_VECTOR(6 DOWNTO 0);
COMPONENT semaforo
	PORT (
	E : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	S : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : semaforo
	PORT MAP (
-- list connections between master ports and signals
	E => E,
	S => S
	);
-- E[2]
t_prcs_E_2: PROCESS
BEGIN
	E(2) <= '0';
	WAIT FOR 40000000 ps;
	E(2) <= '1';
	WAIT FOR 40000000 ps;
	E(2) <= '0';
WAIT;
END PROCESS t_prcs_E_2;
-- E[1]
t_prcs_E_1: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		E(1) <= '0';
		WAIT FOR 20000000 ps;
		E(1) <= '1';
		WAIT FOR 20000000 ps;
	END LOOP;
	E(1) <= '0';
WAIT;
END PROCESS t_prcs_E_1;
-- E[0]
t_prcs_E_0: PROCESS
BEGIN
	FOR i IN 1 TO 4
	LOOP
		E(0) <= '0';
		WAIT FOR 10000000 ps;
		E(0) <= '1';
		WAIT FOR 10000000 ps;
	END LOOP;
	E(0) <= '0';
WAIT;
END PROCESS t_prcs_E_0;
END semaforo_arch;
