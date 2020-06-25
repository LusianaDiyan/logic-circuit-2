library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity biner2bcd is
	port(
		a : in STD_LOGIC_VECTOR(15 downto 0);
		x : out STD_LOGIC_VECTOR(15 downto 0)
	);
end biner2bcd;
architecture Behavioral of biner2bcd is
begin
 bcd1:process(a)
	variable z : STD_LOGIC_VECTOR(31 downto 0);
	begin
		for i in 0 to 31 loop
			z(i) := '0';
		end loop;
	z(18 downto 3) := a;
		for i in 0 to 12 loop
			if z(19 downto 16) > 4 then
				z(19 downto 16) := z(19 downto 16)+3;
			end if;
			if z(23 downto 20) > 4 then
				z(23 downto 20) := z(23 downto 20)+3;
			end if;
			if z(27 downto 24) > 4 then
				z(27 downto 24) := z(27 downto 24)+3;
			end if;
			z(31 downto 1):= z(30 downto 0);
			end loop;
		x <= z(31 downto 16);
	end process bcd1;
end Behavioral;

