----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:11:07 03/29/2019 
-- Design Name: 
-- Module Name:    tugas4 - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity tugas4 is
port(
	input1 : in std_logic_vector(3 downto 0);
	input2 : in std_logic_vector(3 downto 0);
	has_bag : out std_logic_vector(3 downto 0);
	modulus : out std_logic_vector(2 downto 0)
);
end tugas4;

architecture Behavioral of tugas4 is
 signal has_kali : std_logic_vector(7 downto 0);

begin
	has_kali <= input1*input2;
	
	process(has_kali)
	variable d, n1:std_logic_vector(4 downto 0);
	variable pembagi : std_logic_vector(3 downto 0):="0010";
	variable n2 : std_logic_vector(3 downto 0);

	begin
		d := '0' & pembagi;
		n2 := has_kali(3 downto 0);
		n1 := '0' & has_kali (7 downto 4);
		for i in 0 to 3 loop
			n1 := n1(3 downto 0) & n2(3);
			n2 := n2(2 downto 0) & '0';
			if n1 >= d then
				n1 := n1 - d;
				n2(0):='1';
			end if;
		end loop;
		has_bag <= n2;
		modulus <= n1(2 downto 0);
	end process;
end Behavioral;

