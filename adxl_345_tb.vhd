
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
use ieee.std_logic_textio.all;

LIBRARY std;
use std.textio.all;

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
          Start	:	IN	STD_LOGIC; 
          X	:	OUT	STD_LOGIC_VECTOR (15 DOWNTO 0); 
          Y	:	OUT	STD_LOGIC_VECTOR (15 DOWNTO 0); 
          Z	:	OUT	STD_LOGIC_VECTOR (15 DOWNTO 0));
   END COMPONENT;

   SIGNAL SDA	:	STD_LOGIC;
   SIGNAL SCL	:	STD_LOGIC;
   SIGNAL NACK	:	STD_LOGIC;
   SIGNAL Reset	:	STD_LOGIC;
   SIGNAL Start	:	STD_LOGIC;
   SIGNAL X	:	STD_LOGIC_VECTOR (15 DOWNTO 0);
   SIGNAL Y	:	STD_LOGIC_VECTOR (15 DOWNTO 0);
   SIGNAL Z	:	STD_LOGIC_VECTOR (15 DOWNTO 0);
	
	-- clock
   signal Clk : std_logic := '0';
   constant Clk_period : time := 20 ns;

BEGIN

   UUT: scheme_1 PORT MAP(
		SDA => SDA, 
		SCL => SCL, 
		NACK => NACK, 
		Reset => Reset, 
		Clk => Clk, 
		Start => Start, 
		X => X, 
		Y => Y, 
		Z => Z
   );

---- *** Test Bench - User Defined Section ***
--   tb : PROCESS
--   BEGIN
--      WAIT; -- will wait forever
--   END PROCESS;
---- *** End Test Bench - User Defined Section ***

	-- user code
	Reset <= '1', '0' after 100 ns;
	Start <= '0', '1' after 200 ns;
	-- user code end

	-- clock process 1
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;

   -- clock process 2
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for Clk_period*10;

      -- insert stimulus here 

      wait;
   end process;
	-- clock process end

	----------------------------------------------------------------
	-- I2C SLAVE
   SDA <= 'H';
   SCL <= 'H';
   process
      variable bAddr  : std_logic_vector( 7 downto 0 );             -- I2C adress received as the first byte
      variable bWrite : std_logic_vector( 7 downto 0 );             -- byte received in write transfers
      variable bRead  : std_logic_vector( 7 downto 0 ) := X"35";    -- byte transmitted in read transfers
      variable Ack : std_logic;
      variable L: line;	-- simulation messages (textio)
   begin
      SDA <= 'Z';
      loop
         -- wait for start condition
         wait until falling_edge( SDA ) and SCL /= '0';
         -- Report
         write( L, "[I2C " ); write( L, now, UNIT => us ); write( L, "] START condition" );
         writeline( output, L );

         -- 8 bits of address
         for i in 0 to 8 loop
            wait until falling_edge( SCL );
            bAddr := bAddr( 6 downto 0 ) & SDA;
         end loop;
         -- Report
         write( L, "[I2C " ); write( L, now, UNIT => us ); write( L, "] address byte: " ); hwrite( L, bAddr );
         writeline( output, L );
         
         -- pull down ACK for address byte
         wait for 2.5 us / 4;
         SDA <= '0';
         wait for 2.5 us;
         SDA <= 'Z';
         
         if bAddr( 0 ) = '0' then

            -- Master is writing
            loop
               -- Be prepared for Stop condition
               wait until rising_edge( SCL ); 
               wait until rising_edge( SDA ) or falling_edge( SCL );
               if rising_edge( SDA ) then
                  write( L, "[I2C " ); write( L, now, UNIT => us ); write( L, "] STOP condition" );
                  writeline( output, L );
                  exit;
               end if;
               
               -- Another byte write, first bit (MSB)
               bWrite( 0 ) := SDA;
               
               -- another 7 bits of the write
               for i in 1 to 7 loop
                  wait until falling_edge( SCL );
                  bWrite := bWrite( 6 downto 0 ) & SDA;
               end loop;
               
               -- Report
               write( L, "[I2C " ); write( L, now, UNIT => us ); write( L, "] byte received: " ); hwrite( L, bWrite );
               writeline( output, L );

               -- pull down for ACK the write
               wait for 2.5 us / 4;
               SDA <= '0';
               wait for 2.5 us;
               SDA <= 'Z';
             end loop;

         else

            -- Master is reading
            loop
               for i in 7 downto 0 loop
                  if bRead( i ) = '1' then
                     SDA <= 'Z';
                  else
                     SDA <= '0';
                  end if;
                  wait until falling_edge( SCL );
                  wait for 2.5 us / 4;
               end loop;
               SDA <= 'Z';
               
               -- Read ACK
               wait until rising_edge( SCL );
               wait for 2.5 us / 4;
               Ack := SDA;
               wait for 2.5 us / 2;
               
               -- Report
               write( L, "[I2C " ); write( L, now, UNIT => us ); write( L, "] byte transmitted: " ); hwrite( L, bRead );
               if Ack = '0' then
                  write( L, " with positive ACK" );
               else
                  write( L, ", NACK in response" );
               end if;
               writeline( output, L );

               exit when Ack /= '0';

               -- Increment byte to be transmitted in the next read slot
               bRead := std_logic_vector( unsigned( bRead ) + 1 );
            end loop;

         end if;
         
      end loop;
   end process;

END;
