----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:38:36 03/15/2019 
-- Design Name: 
-- Module Name:    hex - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity hex is
port(
	i : in std_logic_vector (3 downto 0);
	o : out std_logic_vector (6 downto 0)
);

end hex;

architecture Behavioral of hex is
begin
process(i)
	begin
		case i is
			when "0000" => o <= "0000001"; --0
			when "0001" => o <= "1001111"; --1
			when "0010" => o <= "0010010"; --2 
			when "0011" => o <= "0000110"; --3
			when "0100" => o <= "1001100"; --4
			when "0101" => o <= "0100100"; --5
			when "0110" => o <= "0100000"; --6
			when "0111" => o <= "0001111"; --7
			when "1000" => o <= "0000000"; --8
			when "1001" => o <= "0000100"; --9
			when "1010" => o <= "0001000"; --A
			when "1011" => o <= "1100000"; --b
			when "1100" => o <= "0110001"; --C
			when "1101" => o <= "1000010"; --d
			when "1110" => o <= "0110000"; --E
			when "1111" => o <= "0111000"; --F
			when others => NULL;
		end case;
	end process;
end Behavioral;

