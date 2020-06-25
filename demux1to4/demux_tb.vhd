--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:10:11 03/15/2019
-- Design Name:   
-- Module Name:   D:/Semester 2/Prak. Rangkaian Logika 2/demux1to4/demux_tb.vhd
-- Project Name:  demux1to4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: demux1to4
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY demux_tb IS
END demux_tb;
ARCHITECTURE behavior OF demux_tb IS 
     COMPONENT demux1to4
    PORT(
         F : IN  std_logic;
         S0 : IN  std_logic;
         S1 : IN  std_logic;
         A : OUT  std_logic;
         B : OUT  std_logic;
         C : OUT  std_logic;
         D : OUT  std_logic
        );
    END COMPONENT;
   --Inputs
   signal F : std_logic := '0';
   signal S0 : std_logic := '0';
   signal S1 : std_logic := '0';
 	--Outputs
   signal A : std_logic;
   signal B : std_logic;
   signal C : std_logic;
   signal D : std_logic;
BEGIN
    uut: demux1to4 PORT MAP (
          F => F,
          S0 => S0,
          S1 => S1,
          A => A,
          B => B,
          C => C,
          D => D
        );
    -- Stimulus process
   stim_proc: process
   begin		
   wait for 100 ns;	
	F <= '1';
	S0 <= '0';S1 <= '0';
	wait for 100 ns;
	S0 <= '1';S1 <= '0';
	wait for 100 ns;
	S0 <= '0'; S1<='1';
	wait for 100 ns;
	S0 <='1'; S1<='1';
	wait for 100 ns;
 wait;
 end process;
END;
