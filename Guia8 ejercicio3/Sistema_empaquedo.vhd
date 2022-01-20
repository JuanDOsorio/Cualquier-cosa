
library ieee;
	use ieee.std_logic_1164.all;
	use ieee.std_logic_unsigned.all;
	
entity Sistema_empaquetado is
	Port(
	teclado: in std_logic_vector(0 to 8);
	clk, sensor, reset: in std_logic;
	display: out std_logic_vector(0 to 6);
	control: inout std_logic := '0';
	B: inout std_logic_vector(3 downto 0) := "0001"); -- Variable que almacena la salida del contador, en el diagrama corresponde a Q del contador);
end Sistema_empaquetado;

architecture Behavior of Sistema_empaquetado is
	signal C: std_logic_vector(3 downto 0); -- Salida del codificador
	signal A: std_logic_vector(3 downto 0) := "0001"; -- Variable que almacena la cantidad de manzanas, en el diagrama corresponde a Q del registro
begin
-- Codificador decimal a BCD

cod_decimal_bcd: process(teclado)
begin
case teclado is
	when "000000000" => C <= "0000";
	when "100000000" => C <= "0001";
	when "010000000" => C <= "0010";
	when "001000000" => C <= "0011";
	when "000100000" => C <= "0100";
	when "000010000" => C <= "0101";
	when "000001000" => C <= "0110";
	when "000000100" => C <= "0111";
	when "000000010" => C <= "1000";
	when others => C <= "1001";
end case;
end process cod_decimal_bcd;
-- Registro

registro: process(clk, C)
begin
	if(clk'event and clk='1') then
	A <= C;
	end if;
end process registro;
-- Display

decod_bcd_7seg: process(A)
begin
case A is
	when "0000" => display <= "1111110"; -- abcdefg. Cada segmento se prende con
	when "0001" => display <= "0110000";
	when "0010" => display <= "1101101";
	when "0011" => display <= "1111001";
	when "0100" => display <= "0110011";
	when "0101" => display <= "1011011";
	when "0110" => display <= "1011111";
	when "0111" => display <= "1110000";
	when "1000" => display <= "1111111";
	when others => display <= "1110011";
end case;
end process decod_bcd_7seg;
-- Contador 0 a 9

contador: process(sensor, reset, control)
begin
	if(reset='1') then
	B <= "0000";
	else
	if(sensor'event and sensor='1' and control='1') then
	if(B="1001") then
	B <= "0000";
	else
	B <= B + 1;
	end if;
	end if;
	end if;
end process contador;
-- Comparador

comparador: process(A,B)
begin
	if A=B then
	control <= '0';
	else
	control <= '1';
end if;
end process comparador;

end Behavior;