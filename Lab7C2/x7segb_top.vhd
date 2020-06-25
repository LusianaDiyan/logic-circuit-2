library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity x7segb_top is
	Port ( 	x : in STD_LOGiC_VECTOR(15 downto 0);
				clk : in STD_LOGIC;
				clr : in STD_LOGIC;
				--btn : in STD_LOGIC_VECTOR (3 downto 0);
				--sw : in STD_LOGIC_VECTOR (7 downto 0);
				--a_to_g : out STD_LOGIC_VECTOR (6 downto 0);
				segment : out STD_LOGIC_VECTOR (6 downto 0);
				an : out STD_LOGIC_VECTOR (3 downto 0);
				dp : out STD_LOGIC);
end x7segb_top;

architecture Behavioral of x7segb_top is
--	component x7segb is
--		Port ( x : in STD_LOGIC_VECTOR (15 downto 0);
--				clk : in STD_LOGIC;
--				clr : in STD_LOGIC;
--				a_to_g : out STD_LOGIC_VECTOR (6 downto 0);
--				an : out STD_LOGIC_VECTOR (3 downto 0);
--				dp : out STD_LOGIC);
--	end component;
	--signal x : STD_LOGIC_VECTOR (15 downto 0);
	signal s : std_logic_vector (1 downto 0);
	signal digit : std_logic_vector (3 downto 0);
	signal aen : std_logic_vector(3 downto 0);
	signal clkdiv : std_logic_vector(20 downto 0);
begin
--	x <= sw & btn(2 downto 0) & "01010" ; -- di gi t 0 =A
--	x2 : x7segb port map
--	(x=>x, clk=>clk, clr =>btn(3), a_to_g=>a_to_g,an=>an,
--	dp=>dp);

	s<=clkdiv(20 downto 19);
	dp<='1';
	aen(3)<=x(15) or x(14) or x(13) or x(12);
	aen(2)<=x(15) or x(14) or x(13) or x(12) or
			  x(11) or x(10) or x(9) or x(8);
	aen(1)<=x(15) or x(14) or x(13) or x(12) or
			  x(11) or x(10) or x(9) or x(8) or
			  x(7) or x(6) or x(5) or x(4);
	aen(0)<='1';

	process(s,x)
		begin
			case s is
				when "00" => digit <= x(3 downto 0);
				when "01" => digit <= x(7 downto 4);
				when "10" => digit <= x(11 downto 8);
				when others => digit <= x(15 downto 12);
			end case;
	end process;
	process(digit)
		begin
			case digit is
				when x"0" => segment <= "0000001";
				when x"1" => segment <= "1001111";
				when x"2" => segment <= "0010010";
				when x"3" => segment <= "0000110";
				when x"4" => segment <= "1001100";
				when x"5" => segment <= "0100100";
				when x"6" => segment <= "0100000";
				when x"7" => segment <= "0001111";
				when x"8" => segment <= "0000000";
				when x"9" => segment <= "0000100";
				when x"A" => segment <= "0001000";
				when x"B" => segment <= "1100000";
				when x"C" => segment <= "0110001";
				when x"D" => segment <= "1000010";
				when x"E" => segment <= "0110000";
				when others => segment <= "0111000";
			end case;
	end process;
	process(s, aen)
		begin
			an<="1111";
			if aen(conv_integer(s)) = '1' then
				an(conv_integer(s)) <= '0';
			end if;
	end process;
	process(clk, clr)
		begin
			if clr = '1' then
				clkdiv<=(others => '0');
			elsif clk' event and clk='1' then
				clkdiv <= clkdiv + 1;
			end if;
		end process;
end Behavioral;

