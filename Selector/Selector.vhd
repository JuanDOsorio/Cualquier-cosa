-- definicion de librerias y paquetes
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

--Definicion de la entidad
   entity Selector is 
	port (sel:in STD_LOGIC;
			D:in STD_LOGIC_VECTOR(3 downto 0);
			mPC: in STD_LOGIC_VECTOR(3 downto 0);
			out1: out STD_LOGIC_VECTOR(3 downto 0));
			
	end Selector;

--Definicion de la arquitectura
	architecture comportamiento of Selector is 
	begin 
	
	process ( sel, D, mPC )
	begin 
	 case sel is 
		when '0'=> out1 <= D;
		When others => out1 <= mPC;
	
	end case;
	end process;			
	end comportamiento;
