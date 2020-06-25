----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:02:28 03/08/2019 
-- Design Name: 
-- Module Name:    tugas3_7 - Behavioral 
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

entity tugas3_7 is
	Port ( a : in STD_LOGIC_VECTOR (1 downto 0);
			en : in STD_LOGIC;
			y : out STD_LOGIC_VECTOR (3 downto 0)
	);
end tugas3_7;

architecture Behavioral of tugas3_7 is
	signal s : std_logic_vector (2 downto 0);
begin
	s <= en & a;
	with s select
	y <= "0000" when "000"|"001"|"010"|"011",
			"0001" when "100",
			"0010" when "101",
			"0100" when "110",
			"1000" when others;
end Behavioral;

