---------------------------------------------------------------------------------
--Receiver------------------------------------------------------------
--By Kyle Williams, 04/07/2011--------------------------------------------------
--CLASS DESCRIPTION------------------------------------------------------------
--2--Detect a start of Frame whose pattern is 10101011----------------------------
--3--After frame detect take every 8 bits and store them in a ram----------------
----------------Define Libraries to be used-------------------------------------- 
LIBRARY IEEE ;
USE IEEE.std_logic_1164.all ;
USE IEEE.std_logic_unsigned.all;
-----------------ENTITY FOR RECEIVER------------------------------------------ 
ENTITY receiver is
  GENERIC (    bits   : INTEGER := 8);	 -- # of bits per word
  PORT ( reset    : IN   STD_Logic;
         clock		  : IN  STD_LOGIC; 
	       rec_in	  : IN  STD_LOGIC;
	       enable	  : OUT  STD_LOGIC;
	       rec_out  : OUT STD_LOGIC_VECTOR (bits -1 DOWNTO 0)
	       );
END receiver;
-----------------BEHAVIOR OF RECEIVER----------------------------------------- 
ARCHITECTURE receiver of receiver IS
-------------------VARIABLE DECLARATION---------------------------------------- 
  SIGNAL bit_counter  : INTEGER;
  SIGNAL S_enable      : STD_LOGIC;
  SIGNAL shiftreg     : STD_LOGIC_VECTOR((bits-1) downto 0);
 -------------------PROCEDURE------------------------------ 
BEGIN
  enable <= S_enable;
  
  SHIFTIN: PROCESS(clock, reset)
  BEGIN
    IF(reset = '0')THEN
      shiftreg <= (others => '0');
    ELSIF rising_edge(CLOCK)THEN
      shiftreg <= shiftreg((bits-2) downto 0) & rec_in;
    END IF;
  END PROCESS shiftin;

  Output: PROCESS(clock, reset)
  BEGIN
    IF (reset = '0') THEN
        rec_out <= (others => '0');
    ELSIF rising_edge (clock)THEN
      ------COMPRESS LOOK AT THIS SECTION!!!
      IF(bit_counter = (bits-1) AND S_enable<='1')THEN
        rec_out <= shiftreg;
      END IF;
    END IF;	
  END PROCESS Output;
  
 CheckAndEnable:PROCESS(clock, reset)
 BEGIN
  IF (reset = '0')THEN  
      S_enable <= '0'; 
  ELSIF rising_edge (clock)THEN
    IF (shiftreg = "10101011")THEN
      S_enable <= '1';
    END IF;
  END IF;
 END PROCESS CheckAndEnable;
 
 COUNT_BITS:PROCESS(clock, reset)
 BEGIN
    IF (reset = '0')THEN
      bit_counter <= 0;
    ELSIF rising_edge (clock)THEN
      IF (bit_counter = bits - 1)THEN   
         bit_counter <= 0;
      ELSE
        bit_counter <= bit_counter + 1;
      END IF;
    END IF;
  END PROCESS COUNT_BITS;

END receiver;