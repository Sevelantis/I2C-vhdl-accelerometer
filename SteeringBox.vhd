library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SteeringBox is
  port (
		Reset 			: in STD_LOGIC;
		Clk				: in STD_LOGIC;
		Start				: in STD_LOGIC;
		
		--I2C ports
		I2C_Busy 		: in STD_LOGIC;
		I2C_FIFO_Empty : in STD_LOGIC;
		I2C_FIFO_Full 	: in STD_LOGIC;
		I2C_FIFO_DO 	: in STD_LOGIC_VECTOR ( 7 downto 0 ); 
		
		I2C_FIFO_Pop	 	: out STD_LOGIC := '0'; 
		I2C_Go				: out STD_LOGIC := '0';
		I2C_FIFO_Push 		: out STD_LOGIC := '0'; 
		I2C_Address 		: out STD_LOGIC_VECTOR ( 7 downto 0 );
		I2C_FIFO_DI 		: out STD_LOGIC_VECTOR ( 7 downto 0 );
		I2C_ReadCnt 		: out STD_LOGIC_VECTOR ( 3 downto 0 );

		X 		: out STD_LOGIC_VECTOR ( 15 downto 0 );
		Y		: out STD_LOGIC_VECTOR ( 15 downto 0 );
		Z		: out STD_LOGIC_VECTOR ( 15 downto 0 )
		);
end SteeringBox;


architecture Behavioral of SteeringBox is

type qSTATES is (
		qReset, qIdle, qInitSetAddr, qInitSetAddrVal, qInitWrite, qInitBusyWrite,
		qPush, qWrite, qBusyWrite, qRead, qBusyRead, 
		qPopData, qPop, qWait
		);
signal STATE, STATE_NEXT : qSTATES;

signal CNTR : integer range 0 to 5;
signal CNTR_WAIT : integer range 0 to 500000;
	
begin

-- clock
HANDLE_CLOCK: process (CLK)
begin
	if rising_edge(CLK) then  
		if (Reset = '1') then
			STATE <= qReset;
		else
			STATE <= STATE_NEXT; -- transition
		end if;
	end if;
end process;

-- action on states:  qBusyRead, qPop, qWait
HANDLE_ACTION_ON_STATES: process(CLK)
begin
				
	if rising_edge(CLK) then
	
		if STATE = qBusyRead then
			CNTR_WAIT <= 0;
			CNTR <= 0;
		
		elsif STATE = qPop then

			case(CNTR) is
		
				when 0 =>
					X( 7 downto 0) <= I2C_FIFO_DO;
					
				when 1 =>
					X(15 downto 8) <= I2C_FIFO_DO;
					
				when 2 =>
					Y( 7 downto 0) <= I2C_FIFO_DO;
					
				when 3 =>
					Y(15 downto 8) <= I2C_FIFO_DO;
					
				when 4 =>
					Z( 7 downto 0) <= I2C_FIFO_DO;
					
				when 5 =>
					Z(15 downto 8) <= I2C_FIFO_DO;
					
			end case;
		
			CNTR <= CNTR + 1;
			
		elsif STATE = qWait then
			CNTR_WAIT <= CNTR_WAIT + 1;
			
		end if;
	end if;
end process;

-- set states transitions
HANDLE_STATES: process(STATE, I2C_Busy, Start, CNTR_WAIT)
begin 

	STATE_NEXT <= STATE; -- define next transition

	case (STATE) is
	
		when qReset =>
			if Reset = '0' then
				STATE_NEXT <= qIdle;
			end if;
			
		when qIdle =>
			if Start = '1' then
				STATE_NEXT <= qInitSetAddr;
			end if;
		
		when qInitSetAddr =>
			STATE_NEXT <= qInitSetAddrVal;
		
		when qInitSetAddrVal =>
			STATE_NEXT <= qInitWrite;
		
		when qInitWrite =>
			STATE_NEXT <= qInitBusyWrite;
			
		when qInitBusyWrite =>
			if I2C_Busy = '0' then
				STATE_NEXT <= qPush;
			end if;
		
		when qPush =>
			STATE_NEXT <= qWrite;
		
		when qWrite =>
			STATE_NEXT <= qBusyWrite;
		
		when qBusyWrite =>
			if I2C_Busy = '0' then
				STATE_NEXT <= qRead;
			end if;
			
		when qRead =>
			STATE_NEXT <= qBusyRead;

		when qBusyRead =>
			if I2C_Busy = '0' then
				STATE_NEXT <= qPopData;
			end if;
		
		when qPopData =>
			if CNTR < 6 then
				STATE_NEXT <= qPop;
			else
				STATE_NEXT <= qWait;
			end if;
			
		when qPop =>
			STATE_NEXT <= qPopData;
		
		when qWait =>
			if CNTR_WAIT = 500000 then
				STATE_NEXT <= qPush;
			end if;
	
	end case;
		
end process;

-- set states resources
--I2C_FIFO_DI 					X"00" -> 4+4[bit]= 1 [bajt]
I2C_FIFO_DI <= X"2D" when STATE = qInitSetAddr
							else X"08" when STATE = qInitSetAddrVal
							else X"32" when STATE = qPush;

--I2C_FIFO_Push
I2C_FIFO_Push <= '1' when (STATE = qInitSetAddr or
									STATE = qInitSetAddrVal or
									STATE = qPush)
									else '0';
--I2C_Address
I2C_Address <= X"3A" when (STATE = qInitWrite or STATE = qWrite)
									else X"3B" when STATE = qRead;

--I2C_Go
I2C_Go <= '1' when (	STATE = qWrite or 
							STATE = qRead or 
							STATE = qInitWrite)
							else '0';								

--I2C_ReadCnt
I2C_ReadCnt <= X"6" when STATE = qRead else X"0";

--I2C_FIFO_Pop
I2C_FIFO_Pop <= '1' when STATE = qPop else '0';

end Behavioral;

