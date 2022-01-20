library IEEE;
use IEEE.std_logic_1164.all;
-----------------------------------

entity testbench is
end entity testbench;

-----------------------------------

architecture test of testbench is

	component compuerta_and is
		Port (A : in STD_LOGIC;
		      B : in STD_LOGIC;
		      Y_AND : out STD_LOGIC;
	end component compuerta_and;

	------------------------------------

	signal A_t : STD_LOGIC := '0';
	signal B_t : STD_LOGIC := '0';
	signal Y_AND_t : STD_LOGIC;

begin
	
	dut: compuerta_and port map(A => A_t,	
				    B => B_t,
				    Y_AND => Y_AND_t);

	Prueba:
		process begin
			report "Inicio de la verificacion de la compuerta and de dos entradas"
			severity note;

			A_t <= '0';
			B_t <= '0';
			wait for 1 ns;
			assert Y_AND_t = '0'
			report "Falla para A=0 y B=0"
			severity failure;

			A_t <= '1';
			B_t <= '0';
			wait for 1 ns;
			assert Y_AND_t = '0'
			report "Falla para A=1 y B=0"
			severity failure;

			A_t <= '0';
			B_t <= '1';
			wait for 1 ns;
			assert Y_AND_t = '0'
			report "Falla para A=0 y B=1"
			severity failure;

			A_t <= '1';
			B_t <= '1';
			wait for 1 ns;
			assert Y_AND_t = '1'
			report "Falla para A=1 y B=1"
			severity failure;

			A_t <= '0';
			B_t <= '0';
			wait for 1 ns;
			assert Y_AND_t = '0'
			report "Falla para A=0 y B=0"
			severity failure;

			report "Verificacion exitosa"
			severity note;
			wait;

		end process Prueba;

end architecture test;