--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   05:55:50 04/05/2019
-- Design Name:   
-- Module Name:   D:/Semester 2/Prak. Rangkaian Logika 2/forloop/tugas_tb.vhd
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
 
ENTITY tugas_tb IS
END tugas_tb;
 
ARCHITECTURE behavior OF tugas_tb IS 
 
    COMPONENT tugas4
    PORT(
         input1 : IN  std_logic_vector(3 downto 0);
         input2 : IN  std_logic_vector(3 downto 0);
         has_bag : OUT  std_logic_vector(3 downto 0);
         modulus : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    
   --Inputs
   signal input1 : std_logic_vector(3 downto 0) := (others => '0');
   signal input2 : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal has_bag : std_logic_vector(3 downto 0);
   signal modulus : std_logic_vector(2 downto 0);
 
BEGIN
	-- Instantiate the Unit Under Test (UUT)
   uut: tugas4 PORT MAP (
          input1 => input1,
          input2 => input2,
          has_bag => has_bag,
          modulus => modulus
        );
 
   -- Stimulus process
   stim_proc: process
   begin		
      wait for 100 ns;	
			input1<="0111";
		end process;
		
	stim_proc: process
	begin
		wait for 100 ns;	
			input2<="0100";
		end process;
END;
