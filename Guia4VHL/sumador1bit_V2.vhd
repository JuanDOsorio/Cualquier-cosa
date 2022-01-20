
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;



entity sumador1bit_V2 is 
	port (A,B,C_IN : in std_logic;
			Suma, Acarreo : out std_logic);
end entity sumador1bit_V2;

architecture funcional of sumador1bit_V2 is 

	signal Aux_1: std_logic;
	signal Aux_2: std_logic;
	signal Aux_3: std_logic;
	
begin 

	Aux_1 <= A xor B;
	Aux_2 <= A and B;
	Aux_3 <= Aux_1 and C_IN;
	Suma <= Aux_1 xor C_IN;
	Acarreo <= Aux_3 or Aux_2;

end funcional;