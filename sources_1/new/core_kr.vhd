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

entity core_kr is
  Port (
  sw : in std_logic_vector(2 downto 0);
  reset : in std_logic;
  clk : in std_logic;
  led : out std_logic_vector(1 downto 0)
   );
end core_kr;

architecture Behavioral of core_kr is
signal s_sw : std_logic_vector(2 downto 0);
signal s_led : std_logic_vector(1 downto 0);

begin

s_sw<=sw;
led<=s_led;

syn: entity work.kr_syn 
port map
(
    sw(1) => sw(1),
    sw(0) => sw(0),
    reset=> reset,
    clk =>clk,
    led =>open
);

deeg: entity  work.kr_deeg
port map(
    dc=> sw(2), 
    x1=> sw(1), 
    x0=> sw(0), 
    reset=> reset,
    z1=>led(1),
    z0=>led(0)
);

end Behavioral;
