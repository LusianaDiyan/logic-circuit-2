
-- VHDL Instantiation Created from source file DeBounce.vhd -- 09:34:14 05/27/2019
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT DeBounce
	PORT(
		Clock : IN std_logic;
		Reset : IN std_logic;
		button_in : IN std_logic;          
		pulse_out : OUT std_logic
		);
	END COMPONENT;

	Inst_DeBounce: DeBounce PORT MAP(
		Clock => ,
		Reset => ,
		button_in => ,
		pulse_out => 
	);


