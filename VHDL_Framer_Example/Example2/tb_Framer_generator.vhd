library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_unsigned.all;
  use ieee.numeric_bit.ALL;
entity tb_framer_generator is 
 port (clk      :out   std_logic;
       resetb   :out   std_logic;
       ser_in   :out   std_logic);           
end tb_framer_generator;
        
architecture testbench_gen of tb_framer_generator is           
            
signal clock:std_logic:= '0';        ---clock signal
signal reset_n:std_logic:='0';   ---reset signal
signal bit_count:integer:=0;           ---counter
signal byte_count:integer:=0;      ---incoming byte count
signal din:std_logic;              ---data input             
signal framereg:std_logic_vector(15 downto 0);   ---frame register
signal dout_payload:std_logic_vector(7 downto 0);  ---data out to payload
signal dout_d1_d3:std_logic_vector(7 downto 0);     ---data out to D1-D3 port
signal dout_d4_d12:std_logic_vector(7 downto 0);    ---Data out to D4-D12 ports
signal F6_byte:std_logic_vector(7 downto 0):=X"F6";  ---input F6 byte
signal TE_byte:std_logic_vector(7 downto 0):=X"28";  ---input 28 byte
signal C0_byte:std_logic_vector(7 downto 0):=X"C0";  ---input C0 byte
signal d1_byte: std_logic_vector(7 downto 0):=X"02";  ---input D1 byte
signal d2_byte: std_logic_vector(7 downto 0):=X"17";  ---input  D2 byte
signal d3_byte: std_logic_vector(7 downto 0):=X"81";  ---input D3 byte
signal d4_byte: std_logic_vector(7 downto 0):=X"53";  ---input Ascii S in D4 byte
signal d5_byte: std_logic_vector(7 downto 0):=X"74";  ---input t in D5 byte
signal d6_byte: std_logic_vector(7 downto 0):=X"65";  ---input e in D6 byte
signal d7_byte: std_logic_vector(7 downto 0):=X"61";  ---input a in D7 byte
signal d8_byte: std_logic_vector(7 downto 0):=X"76";  ---input v in D8 byte
signal d9_byte: std_logic_vector(7 downto 0):=X"69";  ---input i in D9 byte
signal d10_byte: std_logic_vector(7 downto 0):=X"61";  ---input a in D10 byte
signal d11_byte: std_logic_vector(7 downto 0):=X"6E";  ---input n in D11 byte
signal d12_byte: std_logic_vector(7 downto 0):=X"53";  ---input S in D12 byte
signal payload_byte:std_logic_vector(7 downto 0):=X"55";  ---payload ?55? byte
signal bit_no: integer:=7;
 
BEGIN
 clocking: block
  BEGIN
  	clock <= not clock after 5 ns;
  END block;

Reset: PROCESS
BEGIN
	reset_n <= '0';
	  wait for 35 ns;
	reset_n <= '1';
	  wait until false;
END Process;

-- output ports driven by signals
   clk <= clock;
   resetb <= reset_n;
   ser_in <= din;

--bit counter
process (clock, reset_n)
  begin
    if (reset_n = '0')  then
        bit_count <= 0;
    elsif (clock'event and clock = '1') then
        if (bit_count = 7) then
            bit_count <= 0;
        else
            bit_count <= bit_count + 1;
        end if;
    end if;
end process;
      
---byte counter
process (clock, reset_n)
  begin
    if (reset_n = '0') then
      byte_count <= 0;  
    elsif (clock'event and clock = '1') then
        if (byte_count = 809) then
            byte_count <= 0;
        elsif (bit_count = 7) then    
            byte_count<=byte_count+1;
        end if;    
    end if;
end process;
                     
process(bit_count, reset_n)
  begin                 
case byte_count is 
  when 0=>
    din<=F6_byte(7 - bit_count);

  when 1=>
    din<=TE_byte(7 - bit_count);
                    
  when 2=>
    din<=C0_byte(7 - bit_count);
                   
  when 3 to 89|93 to 179|183 to 269|273 to 359|363 to 449|453 to 539|543 to 629|633 to 719|723 to 809=>
    din<=payload_byte(7 - bit_count);
                  
  when 180=>
    din<=D1_byte(7 - bit_count);
    
  when 181=>
    din<=D2_byte(7 - bit_count);
                      
  when 182=>
    din<=D3_byte(7 - bit_count);
    
    when 450=>
    din<=D4_byte(7 - bit_count);
    
  when 451=>
    din<=D5_byte(7 - bit_count);
                      
  when 452=>
    din<=D6_byte(7 - bit_count);
    
    when 540=>
    din<=D7_byte(7 - bit_count);
    
  when 541=>
    din<=D8_byte(7 - bit_count);
                      
  when 542=>
    din<=D9_byte(7 - bit_count);
    
    when 630=>
    din<=D10_byte(7 - bit_count);
    
  when 631=>
    din<=D11_byte(7 - bit_count);
                      
  when 632=>
    din<=D12_byte(7 - bit_count);
                   
 -- when 180 to 182|270 to 272|360 to 362|450 to 452|540 to 542|630 to 632|720 to 722 =>
 --  din<=d4_d12_byte(7 - bit_count);
               
  when others=>din<='0';
  end case;

end process;

end testbench_gen;

