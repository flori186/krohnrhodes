----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.07.2025 23:26:00
-- Design Name: 
-- Module Name: core_kr - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity kr_syn is
  Port (
  sw : in std_logic_vector(1 downto 0);
  reset : in std_logic;
  clk : in std_logic;
  led : out std_logic_vector(1 downto 0)
   );
end kr_syn ;

architecture Behavioral of kr_syn is
signal s_sw : std_logic_vector(1 downto 0);
signal s_led : std_logic_vector(1 downto 0);

begin

s_sw<=sw;
led<=s_led;

process(clk)
begin 
if rising_edge(clk) then
    case s_led is
 
    when "00" =>
           case s_sw is
 
            when "00" =>
               s_led<="00";
         
            when "10" | "11" =>
               s_led <= "10";
         
            when "01" =>
               s_led <= "01";
         
            when others =>
               
         
        end case;
 
    when "01" =>
          case s_sw is
 
            when "00" =>
               s_led<="00";
         
            when "10" =>
               s_led <= "10";
         
            when "01"|"11" =>
               s_led <= "11";
         
            when others =>
               
         
        end case;
 
    when "10" =>
         case s_sw is
 
            when "00" =>
               s_led<="10";
         
            when "10" =>
               s_led <= "10";
         
            when "01"|"11" =>
               s_led <= "11";
         
            when others =>
               
         
        end case;
        
    when "11" =>
           case s_sw is
 
            when "00" =>
               s_led<="10";
         
            when "10" =>
               s_led <= "10";
         
            when "01" =>
               s_led <= "01";
               
             when "11" =>
                s_led <= "11";
         
            when others =>
               
         
        end case;
 
    when others =>
       -- sequential statements
 
    end case;
end if;
end process;


end Behavioral;
