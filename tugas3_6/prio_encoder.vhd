----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:20:01 03/08/2019 
-- Design Name: 
-- Module Name:    prio_encoder - Behavioral 
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

entity prio_encoder is
	Port ( r : in STD_LOGIC_VECTOR (4 downto 1);
			pcode : out STD_LOGIC_VECTOR (2 downto 0)
	);
end prio_encoder;

architecture Behavioral of prio_encoder is
begin
	with r select
		pcode <= "100" when "1000"|"1001"|"1010"|"1011"|"1100"|"1101"|"1110"|"1111",
					"011" when "0100"|"0101"|"0110"|"0111",
					"010" when "0010"|"0011",
					"001" when "0001",
					"000" when others;
end Behavioral;

