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

type qSTATES is (qReset, qIdle, qPush, qWrite, qBusyWrite, qRead, qBusyRead, qPop, qEnd);
signal STATE, STATE_NEXT : qSTATES;
	
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

-- output
HANDLE_OUTPUT: process(CLK)
begin
	if STATE = qPop then
		if rising_edge(CLK) then  
			X(7 downto 0) <= I2C_FIFO_DO;
		end if;
	end if;
end process;

-- set states transitions
HANDLE_STATES: process(STATE, I2C_Busy, Start)
begin 

	STATE_NEXT <= STATE; -- define next transition

	case (STATE) is
	
		when qReset =>
			if Reset = '0' then
				STATE_NEXT <= qIdle;
			end if;
			
		when qIdle =>
			if Start = '1' then
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
				STATE_NEXT <= qPop;
			end if;
		
		when qPop =>
			STATE_NEXT <= qEnd;
		
		when qEnd =>
			STATE_NEXT <= qEnd;
	
	end case;
		
end process;

-- set states resources
--qPush
I2C_FIFO_DI <= X"00"; -- 4+4[bit]= 1 [bajt]
I2C_FIFO_Push <= '1' when STATE = qPush else '0';

--qWrite/qRead
I2C_Address <= X"3A" when STATE = qWrite else X"3B" when STATE = qRead else X"00";
I2C_Go <= '1' when (STATE = qWrite or STATE = qRead) else '0';
I2C_ReadCnt <= X"1" when STATE = qRead else X"0";

--qPop
I2C_FIFO_Pop <= '1' when STATE = qPop else '0';


end Behavioral;

