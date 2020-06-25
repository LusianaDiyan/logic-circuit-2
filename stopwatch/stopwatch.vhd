----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:00:22 05/13/2019 
-- Design Name: 
-- Module Name:    stopwatch - Behavioral 
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

entity stopwatch is
	port( mclk : in std_logic; 
		btn	: in std_logic; 
		btn2	: in std_logic;
		btn3	: in std_logic;
		a_to_g : out std_logic_vector(6 downto 0); 
		an		: out std_logic_vector(3 downto 0); 
		dp		: out std_logic
);
end stopwatch;

architecture Behavioral of stopwatch is

component clockdiv48and190 is
		Port (	mclk	: in  STD_LOGIC; 
					clr	: in  STD_LOGIC;   
					clk190: out  STD_LOGIC;
					clk48 : out  STD_LOGIC); 
end component;

component mod10cnt is
		Port (	clr	: in  STD_LOGIC;           
					clk	: in  STD_LOGIC;
					stp	: in std_logic;
					res	: in std_logic;
					q		: out  STD_LOGIC_VECTOR (13 downto 0)); 
end component;

component binBCD14 is
	Port (	b : in  STD_LOGIC_VECTOR (13 downto 0);           
				p : out  STD_LOGIC_VECTOR (16 downto 0));
end component;

component x7segbc is
port( x  		: in std_logic_vector (15 downto 0); 
		cclk 		: in std_logic; 
		clr 		: in std_logic; 
		a_to_g	: out std_logic_vector(6 downto 0); 
		an 		: out std_logic_vector (3 downto 0); 
		dp 		: out std_logic 
		); 
end component;

signal b : std_logic_vector(13 downto 0); 
signal p : std_logic_vector(16 downto 0); 
signal clr, clk48, clk190: std_logic;


begin
	clr <= btn;
	a1: clockdiv48and190 port map( 
		mclk => mclk, 
		clr => clr, 
		clk190 => clk190, 
		clk48 => clk48 );

	a2: mod10cnt port map( 
				res => btn,
				stp => btn2, 
				clr => clr, 
				clk => clk48, 
				q => b ); 
	a3: binBCD14 port map( b => b, p => p ); 
	a5: x7segbc port map( x => p(15 downto 0), 
		cclk => clk190, 
		clr => clr,
		a_to_g => a_to_g, 
		an => an, 
		dp => dp );

end Behavioral;