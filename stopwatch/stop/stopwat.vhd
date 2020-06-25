----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:36:13 05/18/2019 
-- Design Name: 
-- Module Name:    stopwat - Behavioral 
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

entity stopwat is
	port( button: in STD_LOGIC;
			CLK: in STD_LOGIC;
			RST: in STD_LOGIC;
			anode: out STD_LOGIC_VECTOR(3 downto 0);
			cathode: out STD_LOGIC_VECTOR (7 downto 0));
end stopwat;

architecture Behavioral of stopwat is
--component clockdiv
	--Port(CLK: in STD_LOGIC;
		--	clock_480: out STD_LOGIC;
			--clock_centi: out STD_LOGIC);
--end component;
component clockdiv48and190 is
		Port ( mclk : in  STD_LOGIC; 
				clr : in  STD_LOGIC;           
				clk190 : out  STD_LOGIC;
				clk48 : out  STD_LOGIC); 
end component;


component display
	port(button: in STD_LOGIC;
			RST: in STD_LOGIC;
			CLK: in STD_LOGIC;
			clock_480: in STD_LOGIC;
			clock_centi: in STD_LOGIC;
			anode: out STD_LOGIC_VECTOR (3 downto 0);
			cathode: out STD_LOGIC_VECTOR (7 downto 0));
end component; 
signal clk1, clk2: STD_LOGIC;
begin

u0: clockdiv48and190 port map (mclk => CLK, clk190 => clk1, clk48 => clk2,clr =>RST);
u1: display port map (CLK => CLK, clock_480 => clk1, clock_centi => clk2, button => button, RST => RST, anode => anode, cathode => cathode);
--u3: DeBounce port map(Clock => CLK,reset=>RST,button_in=>button,pulse_out=>bout);
end Behavioral;

