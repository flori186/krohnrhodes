----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/06/2025 03:25:35 PM
-- Design Name: 
-- Module Name: kr_deeg - Behavioral
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

entity kr_deeg is
  Port (
    dc, x1,x0,reset: in std_logic;
    z0,z1: out std_logic
  );
end kr_deeg;

architecture Behavioral of kr_deeg is
signal sf0,sfbar0: std_logic;
begin

stage0: entity work.dualRail 
generic map(INIT_PATTERN => X"F00000000FFF0000")
port map(
    dcbar=> dc,
    x(3)=>x1,
    x(2)=>x0,
    x(1)=>'1',
    x(0)=>'1',
    f_out=>sf0,
    fbar_out=>sfbar0
);

stage1: entity work.dualRail 
port map(
    dcbar=> dc,
    x(3)=>x1,
    x(2)=>x0,
    x(1)=>'1',
    x(0)=>'1',
    f_out=>z0,
    fbar_out=>z1
);




end Behavioral;
