----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:42:34 05/13/2019 
-- Design Name: 
-- Module Name:    mod10cnt - Behavioral 
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

entity mod10cnt is
		Port ( clr : in  STD_LOGIC;           
				clk : in  STD_LOGIC;
				res : in std_logic;
				stp: in std_logic;
				q : out  STD_LOGIC_VECTOR (13 downto 0);
				m : out  STD_LOGIC_VECTOR (13 downto 0));
				
end mod10cnt;

architecture Behavioral of mod10cnt is
	signal count :STD_LOGIC_VECTOR (13 downto 0);
	signal countm :STD_LOGIC_VECTOR (13 downto 0);
	signal lastbuttonstate : std_logic :='0';
	type state_type is (s0,s1,s2);
	signal state: state_type;
begin

	process(clk,clr,stp,state,res)
	begin
		if clr = '1' then 
					count <= (others => '0');
					q <= count;
					
elsif rising_edge(clk) then
			case state is
				when s0 => if(stp='1' and lastbuttonstate = '0') then
									state <= s1;
							  else
									count <= count;
									q <= count;
									state <= s2;
							  end if;
							  lastbuttonstate <=stp;
				when s1 => if(stp='1' and lastbuttonstate = '0') then
									state <= s0;
							  elsif(res='1' and lastbuttonstate = '0') then
									countm <= count;
									state <= s2;
							  elsif  conv_integer(count) = 9999 then
									count <= (others => '0');
									q <= count;
							  else
									count <= count + 1;
									q <= count;
							  end if;
							  lastbuttonstate <=stp or res;
				when s2 => if(stp='1' and lastbuttonstate = '0') then
									state <= s1;
							  else
									count  <= count + 1;
									q <= count;
									state <= s0;
							  end if;
							  lastbuttonstate <= stp;
				when others => state <= s0;
			end case;
		end if;
	end process;
end Behavioral;
