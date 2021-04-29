--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:08:32 04/29/2021
-- Design Name:   
-- Module Name:   /home/jednorozecxd/Desktop/UCISW2/Akcelerometr/steeringBox_tb.vhd
-- Project Name:  Akcelerometr
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SteeringBox
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
 
ENTITY steeringBox_tb IS
END steeringBox_tb;
 
ARCHITECTURE behavior OF steeringBox_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SteeringBox
    PORT(
         Reset : IN  std_logic;
         Clk : IN  std_logic;
         Start : IN  std_logic;
         I2C_Busy : IN  std_logic;
         I2C_FIFO_Empty : IN  std_logic;
         I2C_FIFO_Full : IN  std_logic;
         I2C_FIFO_DO : IN  std_logic_vector(7 downto 0);
         I2C_FIFO_Pop : OUT  std_logic;
         I2C_Go : OUT  std_logic;
         I2C_FIFO_Push : OUT  std_logic;
         I2C_Address : OUT  std_logic_vector(7 downto 0);
         I2C_FIFO_DI : OUT  std_logic_vector(7 downto 0);
         I2C_ReadCnt : OUT  std_logic_vector(3 downto 0);
         X : OUT  std_logic_vector(15 downto 0);
         Y : OUT  std_logic_vector(15 downto 0);
         Z : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Reset : std_logic := '0';
   signal Clk : std_logic := '0';
   signal Start : std_logic := '0';
   signal I2C_Busy : std_logic := '0';
   signal I2C_FIFO_Empty : std_logic := '0';
   signal I2C_FIFO_Full : std_logic := '0';
   signal I2C_FIFO_DO : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal I2C_FIFO_Pop : std_logic;
   signal I2C_Go : std_logic;
   signal I2C_FIFO_Push : std_logic;
   signal I2C_Address : std_logic_vector(7 downto 0);
   signal I2C_FIFO_DI : std_logic_vector(7 downto 0);
   signal I2C_ReadCnt : std_logic_vector(3 downto 0);
   signal X : std_logic_vector(15 downto 0);
   signal Y : std_logic_vector(15 downto 0);
   signal Z : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SteeringBox PORT MAP (
          Reset => Reset,
          Clk => Clk,
          Start => Start,
          I2C_Busy => I2C_Busy,
          I2C_FIFO_Empty => I2C_FIFO_Empty,
          I2C_FIFO_Full => I2C_FIFO_Full,
          I2C_FIFO_DO => I2C_FIFO_DO,
          I2C_FIFO_Pop => I2C_FIFO_Pop,
          I2C_Go => I2C_Go,
          I2C_FIFO_Push => I2C_FIFO_Push,
          I2C_Address => I2C_Address,
          I2C_FIFO_DI => I2C_FIFO_DI,
          I2C_ReadCnt => I2C_ReadCnt,
          X => X,
          Y => Y,
          Z => Z
        );

	-- user code
	Reset <= '1', '0' after 100 ns;
	Start <= '0', '1' after 200 ns;
	-- user code

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/122;
		Clk <= '1';
		wait for Clk_period/122;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for Clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
