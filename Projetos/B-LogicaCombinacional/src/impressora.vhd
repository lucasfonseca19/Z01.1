library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity impressora is
	port (
    SW1,SW2,SW3,SW4 : in  STD_LOGIC;
    x : out STD_LOGIC );
end entity;

architecture arch of impressora is

begin

x <= (not(SW1) and ((SW2 and SW4) or (SW3 and SW4) or (SW2 and SW3))) or (SW1 and not(SW4) and (SW2 or SW3));

end architecture;
