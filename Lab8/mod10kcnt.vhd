----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:41:39 05/15/2019 
-- Design Name: 
-- Module Name:    mod10kcnt - Behavioral 
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
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

entity mod10kcnt is
	Port ( clr : in STD_LOGIC;
			clk : in STD_LOGIC;
			q : out STD_LOGIC_VECTOR (13 downto 0));
end mod10kcnt;

architecture Behavioral of mod10kcnt is
	signal count :STD_LOGIC_VECTOR (13 downto 0);
begin
	process(clk,clr )
	begin
		if clr = '1' then
			count <= (others => '0' );
		elsif clk' event and clk ='1' then
				if conv_integer(count) = 9999 then
					count <= (others => '0' );
				else
					count <= count+1;
				end if;
		end if;
	end process;
q <= count ;
end Behavioral;

