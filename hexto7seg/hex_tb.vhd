--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:49:16 03/15/2019
-- Design Name:   
-- Module Name:   D:/Semester 2/Prak. Rangkaian Logika 2/hexto7seg/hex_tb.vhd
-- Project Name:  hexto7seg
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: hex
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
 
ENTITY hex_tb IS
END hex_tb;
 
ARCHITECTURE behavior OF hex_tb IS 
  
    COMPONENT hex
    PORT(
         i : IN  std_logic_vector(3 downto 0);
         o : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
   --Inputs
   signal i : std_logic_vector(3 downto 0) := (others => '0');
 	--Outputs
   signal o : std_logic_vector(6 downto 0);
 
BEGIN
 
   uut: hex PORT MAP (
          i => i,
          o => o
        );

   -- Stimulus process
   stim_proc: process
   begin		
	for x in 0 to 15 loop
	i <= conv_std_logic_vector(x,4);
      wait for 50 ns;	
     end loop;
    wait;
   end process;

END;
