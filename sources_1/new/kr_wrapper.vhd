----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/06/2025 03:24:35 PM
-- Design Name: 
-- Module Name: kr_wrapper - Behavioral
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

entity kr_wrapper is
  Port (
  sw : in std_logic_vector(2 downto 0);
  reset : in std_logic;
  clk : in std_logic;
  led : out std_logic_vector(1 downto 0)
   );
end kr_wrapper ;

architecture Behavioral of kr_wrapper is

begin
core: entity work.core_kr 
port map
(
     sw => sw,
    reset=> reset,
    clk =>clk,
    led =>led
);







end Behavioral;
