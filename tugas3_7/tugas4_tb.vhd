--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:44:08 03/08/2019
-- Design Name:   
-- Module Name:   D:/Semester 2/Prak. Rangkaian Logika 2/tugas3_7/tugas4_tb.vhd
-- Project Name:  tugas3_7
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: tugas3_7
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
 
    COMPONENT tugas3_7
    PORT(
         a : IN  std_logic_vector(1 downto 0);
         en : IN  std_logic;
         y : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(1 downto 0) := (others => '0');
   signal en : std_logic := '0';

 	--Outputs
   signal y : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: tugas3_7 PORT MAP (
          a => a,
          en => en,
          y => y
        );
   -- Stimulus process
   stim_proc: process
   begin		
      wait for 100 ns;
		a(0) <= not a(0);
   end process;
	
	stim_proc1: process
   begin		
      wait for 200 ns;
		a(1) <= not a(1);
   end process;
	
	stim_proc3: process
   begin		
      wait for 500 ns;
		en <= not en;
   end process;

END;
