--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : scheme_1.vhf
-- /___/   /\     Timestamp : 04/29/2021 21:08:32
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family artix7 -flat -suppress -vhdl /home/jednorozecxd/Desktop/UCISW2/Akcelerometr/scheme_1.vhf -w /home/jednorozecxd/Desktop/UCISW2/Akcelerometr/scheme_1.sch
--Design Name: scheme_1
--Device: artix7
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity scheme_1 is
   port ( Clk   : in    std_logic; 
          Reset : in    std_logic; 
          Start : in    std_logic; 
          NACK  : out   std_logic; 
          SCL   : inout std_logic; 
          SDA   : inout std_logic);
end scheme_1;

architecture BEHAVIORAL of scheme_1 is
   signal XLXN_7  : std_logic;
   signal XLXN_8  : std_logic;
   signal XLXN_9  : std_logic;
   signal XLXN_16 : std_logic_vector (7 downto 0);
   signal XLXN_17 : std_logic;
   signal XLXN_18 : std_logic;
   signal XLXN_19 : std_logic;
   signal XLXN_64 : std_logic_vector (7 downto 0);
   signal XLXN_65 : std_logic_vector (7 downto 0);
   signal XLXN_66 : std_logic_vector (3 downto 0);
   component I2C_Master
      port ( Clk        : in    std_logic; 
             FIFO_Pop   : in    std_logic; 
             Reset      : in    std_logic; 
             Go         : in    std_logic; 
             FIFO_Push  : in    std_logic; 
             Address    : in    std_logic_vector (7 downto 0); 
             FIFO_DI    : in    std_logic_vector (7 downto 0); 
             ReadCnt    : in    std_logic_vector (3 downto 0); 
             SDA        : inout std_logic; 
             SCL        : inout std_logic; 
             NACK       : out   std_logic; 
             Busy       : out   std_logic; 
             FIFO_Empty : out   std_logic; 
             FIFO_Full  : out   std_logic; 
             FIFO_DO    : out   std_logic_vector (7 downto 0));
   end component;
   
   component SteeringBox
      port ( Reset          : in    std_logic; 
             Clk            : in    std_logic; 
             Start          : in    std_logic; 
             I2C_Busy       : in    std_logic; 
             I2C_FIFO_Empty : in    std_logic; 
             I2C_FIFO_Full  : in    std_logic; 
             I2C_FIFO_DO    : in    std_logic_vector (7 downto 0); 
             I2C_FIFO_Pop   : out   std_logic; 
             I2C_Go         : out   std_logic; 
             I2C_FIFO_Push  : out   std_logic; 
             I2C_Address    : out   std_logic_vector (7 downto 0); 
             I2C_FIFO_DI    : out   std_logic_vector (7 downto 0); 
             I2C_ReadCnt    : out   std_logic_vector (3 downto 0); 
             X              : out   std_logic_vector (15 downto 0); 
             Y              : out   std_logic_vector (15 downto 0); 
             Z              : out   std_logic_vector (15 downto 0));
   end component;
   
begin
   XLXI_1 : I2C_Master
      port map (Address(7 downto 0)=>XLXN_64(7 downto 0),
                Clk=>Clk,
                FIFO_DI(7 downto 0)=>XLXN_65(7 downto 0),
                FIFO_Pop=>XLXN_9,
                FIFO_Push=>XLXN_8,
                Go=>XLXN_7,
                ReadCnt(3 downto 0)=>XLXN_66(3 downto 0),
                Reset=>Reset,
                Busy=>XLXN_17,
                FIFO_DO(7 downto 0)=>XLXN_16(7 downto 0),
                FIFO_Empty=>XLXN_19,
                FIFO_Full=>XLXN_18,
                NACK=>NACK,
                SCL=>SCL,
                SDA=>SDA);
   
   XLXI_5 : SteeringBox
      port map (Clk=>Clk,
                I2C_Busy=>XLXN_19,
                I2C_FIFO_DO(7 downto 0)=>XLXN_16(7 downto 0),
                I2C_FIFO_Empty=>XLXN_18,
                I2C_FIFO_Full=>XLXN_17,
                Reset=>Reset,
                Start=>Start,
                I2C_Address(7 downto 0)=>XLXN_64(7 downto 0),
                I2C_FIFO_DI(7 downto 0)=>XLXN_65(7 downto 0),
                I2C_FIFO_Pop=>XLXN_7,
                I2C_FIFO_Push=>XLXN_9,
                I2C_Go=>XLXN_8,
                I2C_ReadCnt(3 downto 0)=>XLXN_66(3 downto 0),
                X=>open,
                Y=>open,
                Z=>open);
   
end BEHAVIORAL;


