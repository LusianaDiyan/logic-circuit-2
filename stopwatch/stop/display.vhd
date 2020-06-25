----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:05:57 05/13/2019 
-- Design Name: 
-- Module Name:    display - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity display is

		port( button: in STD_LOGIC;
				RST: in STD_LOGIC;
				CLK: in STD_LOGIC;
				clock_480: in STD_LOGIC;
				clock_centi: in STD_LOGIC;
				anode: out STD_LOGIC_VECTOR (3 downto 0);
				cathode: out STD_LOGIC_VECTOR (7 downto 0));
end display;

architecture Behavioral of display is

signal a,b,x,y : integer:= 0;
signal PS,NS : STD_LOGIC_VECTOR (1 downto 0):= "00";
signal ss1,ss2, en: STD_LOGIC:='0';
 
begin

	process(CLK)
	begin
		if(rising_edge(CLK)) then
			PS <= NS;
		end if;
	end process;
	
process(button, RST, clock_centi, PS, NS, ss1,ss2)
 begin
 if RST = '1' then
	en <= '0';
	a<= 0;
	b<= 0;
	x<= 0;
	y<= 0;
elsif RST ='0' then
 if(rising_edge(clock_centi)) then
	if button = '1' then
		ss1 <= '1';
	elsif button = '0' then
		ss1 <= '0';
	end if;
	ss2<=ss1;
	
	if ss2 ='0' and ss1 = '1' then
		en <= not en;
	end if;
	
	case (PS) is
		when "11" =>
			if en = '1' then
				NS <= "11";
				y <= y + 1;
				if y = 9 then
					x <= x + 1;
					y <= 0;
					if x = 9 then
						b <= b+1;
						x <= 0;
						if b = 9 then
							a <= a+1;
							b <= 0;
							if a = 5 then
								a <= 0;
								b <= 0;
								x <= 0;
								y <= 0;
							end if;
						end if;
					end if;
				end if;
			elsif en ='0' then
				NS <= "00";
			end if;
			when "00" =>
				if en = '0' then
					NS<="00";
					a <= a;
					b <= b;
					x <= x;
					y <= y;
				elsif en ='1' then
					NS<="11";
				end if;
			when others =>
				NS <= "00";
				a <= 0;
				b <= 0;
				x <= 0;
				y <= 0;
			end case;
		end if;
	end if;
end process;
	
process(clock_480)
	variable digit1, digit2 : STD_LOGIC_VECTOR (1 downto 0):="00";
	
	begin
		if(rising_edge(clock_480)) then
			case (digit1) is
				when "00" =>
					anode <= "0111";
				when "01" =>
					anode <= "1011";
				when "10" =>
					anode <= "1101";
				when others =>
					anode <= "1110";
			end case;
			
			case (digit2) is
				when "00" =>
					case (a) is
						when 0 =>
							cathode <= "00000011";
						when 1 =>
							cathode <= "10011111";
						when 2 =>
							cathode <= "00100101";
						when 3 =>
							cathode <= "00001101";
						when 4 =>
							cathode <= "10011001";
						when 5 =>
							cathode <= "01001001";
						when 6 =>
							cathode <= "01000001";
						when 7 =>
							cathode <= "00011111";
						when 8 =>
							cathode <= "00000001";
						when 9 =>
							cathode <= "00011001";
						when others =>
							cathode <= "11111111";
						end case;
				when "01" =>
					case (b) is
						when 0 =>
							cathode <= "00000010";
						when 1 =>
							cathode <= "10011110";
						when 2 =>
							cathode <= "00100100";
						when 3 =>
							cathode <= "00001100";
						when 4 =>
							cathode <= "10011000";
						when 5 =>
							cathode <= "01001000";
						when 6 =>
							cathode <= "01000000";
						when 7 =>
							cathode <= "00011110";
						when 8 =>
							cathode <= "00000000";
						when 9 =>
							cathode <= "00011000";
						when others =>
							cathode <= "11111110";
						end case;
				when "10" =>
					case (x) is
						when 0 =>
							cathode <= "00000011";
						when 1 =>
							cathode <= "10011111";
						when 2 =>
							cathode <= "00100101";
						when 3 =>
							cathode <= "00001101";
						when 4 =>
							cathode <= "10011001";
						when 5 =>
							cathode <= "01001001";
						when 6 =>
							cathode <= "01000001";
						when 7 =>
							cathode <= "00011111";
						when 8 =>
							cathode <= "00000001";
						when 9 =>
							cathode <= "00011001";
						when others =>
							cathode <= "11111111";
						end case;
				when others =>
					case (y) is
						when 0 =>
							cathode <= "00000011";
						when 1 =>
							cathode <= "10011111";
						when 2 =>
							cathode <= "00100101";
						when 3 =>
							cathode <= "00001101";
						when 4 =>
							cathode <= "10011001";
						when 5 =>
							cathode <= "01001001";
						when 6 =>
							cathode <= "01000001";
						when 7 =>
							cathode <= "00011111";
						when 8 =>
							cathode <= "00000001";
						when 9 =>
							cathode <= "00011001";
						when others =>
							cathode <= "11111111";
						end case;
				end case;
				digit1:=digit1 + 1;
				digit2:=digit2 + 1;
			end if;
		end process;
	
end Behavioral;

