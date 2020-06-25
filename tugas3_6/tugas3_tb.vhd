--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:38:15 03/08/2019
-- Design Name:   
-- Module Name:   D:/Semester 2/Prak. Rangkaian Logika 2/tugas3_6/tugas3_tb.vhd
-- Project Name:  tugas3_6
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: prio_encoder
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
 
ENTITY tugas3_tb IS
END tugas3_tb;
 
ARCHITECTURE behavior OF tugas3_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT prio_encoder
    PORT(
         r : IN  std_logic_vector(4 downto 1);
         pcode : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal r : std_logic_vector(4 downto 1) := (others => '0');

 	--Outputs
   signal pcode : std_logic_vector(2 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: prio_encoder PORT MAP (
          r => r,
          pcode => pcode
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 200 ns;	
		r(1) <= not r(1);
   end process;
	
	stim_proc1: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		r(2) <= not r(2);
   end process;
	
	stim_proc2: process
   begin		
      -- hold reset state for 100 ns.
      wait for 50 ns;	
		r(3) <= not r(3);
   end process;
	
	stim_proc3: process
   begin		
      -- hold reset state for 100 ns.
      wait for 25 ns;	
		r(4) <= not r(4);
   end process;

END;
