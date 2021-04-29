-- Vhdl test bench created from schematic /home/jednorozecxd/Desktop/UCISW2/Akcelerometr/scheme_1.sch - Tue Mar 23 02:14:07 2021
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY scheme_1_scheme_1_sch_tb IS
END scheme_1_scheme_1_sch_tb;
ARCHITECTURE behavioral OF scheme_1_scheme_1_sch_tb IS 

   COMPONENT scheme_1
   PORT( SDA	:	INOUT	STD_LOGIC; 
          SCL	:	INOUT	STD_LOGIC; 
          NACK	:	OUT	STD_LOGIC; 
          Reset	:	IN	STD_LOGIC; 
          Clk	:	IN	STD_LOGIC; 
          Start	:	IN	STD_LOGIC);
   END COMPONENT;

   SIGNAL SDA	:	STD_LOGIC;
   SIGNAL SCL	:	STD_LOGIC;
   SIGNAL NACK	:	STD_LOGIC;
   SIGNAL Reset	:	STD_LOGIC;
   SIGNAL Clk	:	STD_LOGIC;
   SIGNAL Start	:	STD_LOGIC;

BEGIN

   UUT: scheme_1 PORT MAP(
		SDA => SDA, 
		SCL => SCL, 
		NACK => NACK, 
		Reset => Reset, 
		Clk => Clk, 
		Start => Start
   );

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
