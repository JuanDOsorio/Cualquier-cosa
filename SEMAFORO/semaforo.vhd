-- definicion de librerias y paquetes
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

--Definicion de la entidad
   entity semaforo is 
	port (E:in STD_LOGIC_VECTOR(2 downto 0);
			S: out STD_LOGIC_VECTOR(6 downto 0));
	end semaforo;

--Definicion de la arquitectura
	architecture comportamiento of semaforo is 
	begin 
			 with E select 
			 S <="1111111" when "000",
					"0001000"when "001",
					"1000110"when "010",
					"1000110"when "011",
					"0001100"when "100",
					"0001100"when "101",
					"0001100"when "110",
					"0001100"when others;
					
	end comportamiento;



	

	