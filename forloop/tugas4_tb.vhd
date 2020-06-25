--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:42:06 03/29/2019
-- Design Name:   
-- Module Name:   D:/Semester 2/Prak. Rangkaian Logika 2/forloop/tugas4_tb.vhd
-- Project Name:  forloop
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: tugas4
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
 
ENTITY tugas4_tb IS
END tugas4_tb;
 
ARCHITECTURE behavior OF tugas4_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT tugas4
    PORT(
         x : IN  std_logic_vector(3 downto 0);
         y : IN  std_logic_vector(3 downto 0);
         a : OUT  std_logic_vector(3 downto 0);
         b : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal x : std_logic_vector(3 downto 0) := (others => '0');
   signal y : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal a : std_logic_vector(3 downto 0);
   signal b : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: tugas4 PORT MAP (
          x => x,
          y => y,
          a => a,
          b => b
        );

   -- Stimulus process
   stim_proc: process
   begin		
		wait for 200 ns;
			x(3)<=not x(3);
   end process;
	 stim_proc1: process
   begin		
		wait for 100 ns;
			x(2)<=not x(2);
   end process;
 stim_proc2: process
   begin		
		wait for 50 ns;
			x(1)<=not x(1);
   end process;
	 stim_proc3: process
   begin		
		wait for 25 ns;
			x(0)<=not x(0);
   end process;
	 stim_proc4: process
   begin		
		wait for 1600 ns;
			y(3)<=not y(3);
   end process;
	 stim_proc5: process
   begin		
		wait for 800 ns;
			y(2)<=not y(2);
   end process;
	 stim_proc6: process
   begin		
		wait for 400 ns;
			y(1)<=not y(1);
   end process;
	 stim_proc7: process
   begin		
		wait for 200 ns;
			y(0)<=not y(0);
   end process;

END;
