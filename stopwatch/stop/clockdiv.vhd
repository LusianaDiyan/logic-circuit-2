----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:25:35 05/13/2019 
-- Design Name: 
-- Module Name:    clockdiv - Behavioral 
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
use IEEE.STD_LOGIC_unsigned.ALL;

use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity clockdiv is
	Port( CLK: in STD_LOGIC;
			clock_480: out STD_LOGIC;
			clock_centi: out STD_LOGIC);

end clockdiv;

architecture Behavioral of clockdiv is
signal clk1,clk2: STD_LOGIC;

begin

process (CLK)
	variable count1 : unsigned (17 downto 0):="000000000000000000";
	begin
		if(rising_edge(CLK))then
			if count1 = "110010110111001101" then
				clk1 <= not clk1;
				count1:= "000000000000000000";
			end if;
			count1:= count1 + 1;
		end if;
	end process;


process (CLK)
	variable count2 : unsigned (18 downto 0):="0000000000000000000";
	begin
		if(rising_edge(CLK)) then
			if count2 = "1111010000100100000" then
				clk2 <= not clk2;
				count2 := "0000000000000000000";
			end if;
			count2:=count2 + 1;
		end if;
	end process;

clock_480 <= clk2;
clock_centi <= clk2;

end Behavioral;

