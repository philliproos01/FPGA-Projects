library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity alu is
  port(
	  a : in unsigned(3 downto 0);
	  b : in unsigned(3 downto 0);
	  s : in std_logic_vector(1 downto 0);
	  y : out unsigned(3 downto 0)
  );
end alu;

architecture synth of alu is
begin
  process(a, b, s)
  begin
  if (s = "00") then
    y <= a and b;
  elsif (s = "01") then
    y <= a or b;
  elsif (s = "10") then
    y <= a + b;
  elsif (s = "11") then
    y <= a - b;
    
  end if;
  
  
  end process;
  
end;

