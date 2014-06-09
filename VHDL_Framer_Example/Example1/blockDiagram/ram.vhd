---------------------------------------------------------------------------------
--RAM------------------------------------------------------------
--By Kyle Williams, 04/07/2011--------------------------------------------------
--PROJECT DESCRIPTION------------------------------------------------------------
--4--After 8 bytes have been written in the ram start reading the data from the ram
----------------Define Libraries to be used-------------------------------------- 
LIBRARY IEEE ;
USE IEEE.std_logic_1164.all ;
USE IEEE.std_logic_unsigned.all;
USE ieee.numeric_std.all;
-----------------ENTITY FOR RAM------------------------------------------ 
ENTITY ram is
  GENERIC (    bits   : INTEGER := 8;	 -- # of bits per word
	             words  : INTEGER := 32  );	 -- # of words in the memory
  PORT ( wr_ena	  : IN  STD_LOGIC; -- write enable
	       clock		  : IN  STD_LOGIC;
	       reset		  : IN  STD_LOGIC;
	       addr		   : IN  STD_LOGIC_VECTOR(5 DOWNTO 0);
	       ram_in	 : IN  STD_LOGIC_VECTOR (bits - 1 DOWNTO 0);
	       ram_out : OUT STD_LOGIC_VECTOR (bits -1 DOWNTO 0)
	       );
END ram;
-----------------BEHAVIOR OF RAM----------------------------------------- 
ARCHITECTURE ram of ram IS
  
  --TYPE row IS ARRAY (7 downto 0) OF STD_LOGIC;  -- 1D array
  --TYPE matrix IS ARRAY (0 to 3) of row;	   -- 1Dx1D array
  --TYPE matrix IS ARRAY (0 to 4) of STD_LOGIC_VECTOR (7 DOWNTO 0)--1Dx1D
  --Example: 2D array
	--The array below is truly two-dimensional. Notice that its construction is not based on vectors, but rather entirely on scalars
  --TYPE matrix2D IS ARRAY (0 TO 3, 7 DOWNTO 0) of STD_LOGIC; --2D array
  
  TYPE vector_array is ARRAY (0 to words -1) of STD_LOGIC_VECTOR (bits-1 DOWNTO 0);--32x8
  signal memory   : vector_array:=(others=> (others=>'0'));--matrix and set to 0 initially this is wrong but set for conceptual purposes
  signal temp_addr: Integer;
-------------------PROCEDUREE------------------------------ 
BEGIN
  --Design Question should it take 9 ram inputs before output begining output sequence
  --Program works either way so it is up to the manufacturer 
  --temp_addr <= to_integer(unsigned(addr));--offset is 9 ctrl_out changes up here
  PROCESS (clock, wr_ena)
     BEGIN
       IF(reset='0')THEN
         memory    <= (others=> (others=>'0'));
         temp_addr <= 0;  -- only enable if want offset of 1 instead of 9
	     ELSIF(rising_edge(clock)) THEN -- can also use clk'EVENT AND clk = '1'
	       temp_addr <= to_integer(unsigned(addr));--offset is 1 ctrl_out changes up here
	       IF (wr_ena = '1') THEN
	         memory(temp_addr) <= ram_in;
	       ELSE
	         ram_out <= memory(temp_addr);
	       END IF;
	     END IF;
  END PROCESS;
  --ram_out <= memory(temp_addr);--asynchronous
END ram;
