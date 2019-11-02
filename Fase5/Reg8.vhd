library ieee;
use ieee.std_logic_1164.all;

entity Reg8 is
	port(	clock	:	in  std_logic;
			enable:	in  std_logic;
			reset	:	in  std_logic;
			input	:	in  std_logic_vector(7 downto 0);
			output:	out std_logic_vector(7 downto 0));
end Reg8;

architecture Behavior of Reg8 is
begin
	
	process(clock, enable, reset)
	begin
		if(rising_edge(clock)) then
			if(reset = '1') then
				output <= "00000000";
			elsif(enable = '1') then
				output <= input;
			else
				output <= output;
			end if;
		end if;
	end process;
end Behavior;