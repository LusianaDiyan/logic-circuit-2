----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:52:39 03/08/2019 
-- Design Name: 
-- Module Name:    decoder2_4 - Behavioral 
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

entity decoder2_4 is
	Port ( a : in STD_LOGIC_VECTOR (1 downto 0);
			 en : in STD_LOGIC;
			 y : out STD_LOGIC_VECTOR (3 downto 0)
	);
end decoder2_4;

architecture Behavioral of decoder2_4 is
begin
		y <= "0000" when (en='0') else
				"0001" when (a="00") else
				"0010" when (a="01") else
				"0100" when (a="10") else
				"1000";
end Behavioral;

