
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY framer is
  generic(N : integer := 16);
  port(clk		  : in  std_ulogic;
	     sin		  : in  std_ulogic;
	     resetb	: in  std_ulogic;

       SOUT            : out std_ulogic;
       clk_div_8       : out std_ulogic;
	     decode_F628_out : out std_ulogic);
end framer;

architecture behavior of framer is

signal shiftreg_16    : std_ulogic_vector(15 downto 0);
constant F628         : std_ulogic_vector (15 downto 0) := x"F628";
signal decode_F628	   : std_ulogic;
signal parallel_reg   : std_ulogic_vector (7 downto 0);
signal parallel_clk   : std_ulogic;
signal count_4bit     : std_ulogic_vector (3 downto 0);
signal count_4bit_int : natural;

signal bit_counter  : integer;

begin
shiftin: process (clk, resetb)
begin
  if (resetb = '0') then
    SOUT <= '0';
    shiftreg_16 <= (others => '0');
	elsif rising_edge(CLK) then
    shiftreg_16 <= shiftreg_16(14 downto 0) & SIN;
    SOUT <= shiftreg_16(N-1);
  end if;
end process shiftin;

decode_A1A2: process (shiftreg_16)
begin
    if (shiftreg_16 = F628) then
	   decode_F628 <= '1';
	 else
	   decode_F628 <= '0';
	 end if;	
end process;

	decode_F628_out <= decode_F628;

par_load: process (clk, resetb)
begin
    if (resetb = '0') then
      bit_counter <= 0;
    elsif rising_edge (clk) then
        if (decode_F628 = '1') then
           bit_counter <= 0;
        elsif (bit_counter = 7)then
           bit_counter <= 0;
        else
           bit_counter <= bit_counter + 1 mod 8;
        end if;
		end if;
end process;


	    count_4bit <= std_ulogic_vector(to_unsigned  (count_4bit_int,4));
	    clk_div_8 <= count_4bit(2);
	    
process (clk, resetb)
begin
  if (resetb = '0') then
    count_4bit_int <= 0;
  elsif rising_edge (clk) then
    if (decode_F628 = '1') then
      count_4bit_int <= 0;
    elsif (count_4bit_int = 15) then
      count_4bit_int <= 0;
    else
      count_4bit_int <= count_4bit_int + 1;
    end if;
  end if;
end process;

process (clk, resetb)
begin
  if (resetb = '0') then
    parallel_reg <= (others => '0');
  elsif rising_edge (clk) then
    if (decode_F628= '1') then
      parallel_reg <= (shiftreg_16 (15 downto 8));
    elsif (bit_counter = 7) then
      parallel_reg <= (shiftreg_16 (15 downto 8));
    end if;
  end if;
end process;

       


end behavior;
