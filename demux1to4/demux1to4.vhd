----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:53:05 03/15/2019 
-- Design Name: 
-- Module Name:    demux1to4 - Behavioral 
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

entity demux1to4 is
port(
	F : in std_logic;
	S0,S1 : in std_logic;
	A,B,C,D : out std_logic
);
end demux1to4;

architecture Behavioral of demux1to4 is
begin
process (F,S0,S1) is
begin
	if (S0 = '0' and S1 = '0') then
	A <= F;
	elsif (S0 = '1' and S1 = '0') then
	B <= F;
	elsif (S0 = '0' and S1 = '1') then 
	C <= F;
	else
	D <= F;
	end if;
	end process;

end Behavioral;

