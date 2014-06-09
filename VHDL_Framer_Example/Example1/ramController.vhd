---------------------------------------------------------------------------------
--RamController---------------------------------------------------------------------
--By Kyle Williams, 04/07/2011--------------------------------------------------
--CLASS DESCRIPTION------------------------------------------------------------
-----3-After frame detect take every 8 bits and store them in a ram----------------
-----4-After 8 bytes have been written in the ram start reading the data from the ram
----------------Define Libraries to be used-------------------------------------- 
LIBRARY IEEE ;
USE IEEE.std_logic_1164.all ;
USE IEEE.std_logic_unsigned.all;
USE ieee.numeric_std.all;
-----------------ENTITY FOR RAM CONTROLLER------------------------------------------ 
ENTITY ramController is
  GENERIC (    bits   : INTEGER := 8;
               words  : INTEGER := 32);	 -- # of bits per word
  PORT ( reset    : IN  STD_Logic;
         clock		  : IN  STD_LOGIC; 
         enable   : IN  STD_LOGIC;
         ctrl_in	 : IN  STD_LOGIC_VECTOR (bits - 1 DOWNTO 0);	 
         addr		   : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
         wr_ena	  : OUT STD_LOGIC; -- write enable      
	       ctrl_out : OUT STD_LOGIC_VECTOR (bits -1 DOWNTO 0)
	);
END ramController;
-----------------BEHAVIOR OF RAM CONTROLLER----------------------------------------- 
ARCHITECTURE ramController of ramController IS     
Signal temp_addr  : INTEGER:=0;
Signal ctrl_temp  : STD_LOGIC_VECTOR (bits -1 DOWNTO 0);
Signal S_wr_ena	  : STD_LOGIC:='0'; 
 --///CHECK FOR CHANGE IN IMPUT AND ADJUST ACCORDINGLY
 --/SHOULD ALSO BE DOING WORK OF RETRIEVING
  -------------------PROCEDUREE------------------------------ 
  BEGIN     
  Process(clock,reset)
  BEGIN
    IF(reset='0') THEN
      S_wr_ena<='0';   
    ELSIF(rising_edge(clock) AND enable = '1') THEN        
      --you can't increment std_logic directly, 
      --you need to convert it to unsigned and the result 
      --back to std_logic_vector using the numeric_std package.
      --temp_addr <= to_integer(unsigned(S_addr));
      IF(S_wr_ena='1')THEN
        --READ FROM RAM-------------------------------
        --position pointer to end of list if location is 0 to locate the previous address
        S_wr_ena<='0';
      ELSE 
        S_wr_ena<='1';
      END IF;                  
    END IF;    
    wr_ena<=S_wr_ena;  
  END PROCESS;  

CHECKData:Process(clock, reset)
BEGIN
  IF(reset='0') THEN
    ctrl_temp <= ctrl_in;    
    temp_addr <= 0; 
  ELSIF(rising_edge(clock) AND S_wr_ena = '0' AND ctrl_temp /= ctrl_in ) THEN
        ctrl_temp <= ctrl_in;
        --WRITE TO RAM--------------------------------
        --RESET pointer if pointing to location greater than memory else increase address
        IF(temp_addr <= words-2)THEN--for some reason compare with 32 instead of 31 look into this
          temp_addr <= temp_addr+1;
        ELSE
          temp_addr <= 0;
        END IF;   
  END IF;
END PROCESS;

ADDR_CHECK:PROCESS(clock, reset)
Variable S_addr		   : STD_LOGIC_VECTOR(5 DOWNTO 0):="000000";--local variable
 BEGIN
  IF (reset = '0')THEN      
    addr <= (others => '0');
    s_addr := (others => '0'); 
  ELSIF rising_edge (clock)THEN
      s_addr:=std_logic_vector(to_unsigned(temp_addr,6) );
  END IF;
  addr<=s_addr;
  ctrl_out<=ctrl_in;
 END PROCESS;
END ramController;