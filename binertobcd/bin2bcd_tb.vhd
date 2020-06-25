LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY bin2bcd_tb IS
END bin2bcd_tb;
ARCHITECTURE behavior OF bin2bcd_tb IS 
    COMPONENT biner2bcd
    PORT(
         a : IN  std_logic_vector(15 downto 0);
         x : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
   --Inputs
   signal a : std_logic_vector(15 downto 0) := (others => '0');
 	--Outputs
   signal x : std_logic_vector(15 downto 0);

BEGIN
   uut: biner2bcd PORT MAP (
          a => a,
          x => x
        );
   stim_proc: process
   begin
		wait for 10 ns;
      a <= "0010011100001111";
   end process;
END;
