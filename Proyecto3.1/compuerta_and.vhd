library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity compuerta_and is
	Port (A : in STD_LOGIC;
	      B : in STD_LOGIC;
       	      Y_AND : out STD_LOGIC);

end Compuerta_and;

architecture behavior of compuerta_and is
begin
	Y_AND <= A AND B;
end behavior;