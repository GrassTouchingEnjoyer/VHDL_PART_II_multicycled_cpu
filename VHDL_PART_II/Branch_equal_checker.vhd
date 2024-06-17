----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:38:45 06/02/2024 
-- Design Name: 
-- Module Name:    Branch_equal_checker - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Branch_equal_checker is
    Port ( 

			  rfa : in  STD_LOGIC_VECTOR (31 downto 0);
           rfb : in  STD_LOGIC_VECTOR (31 downto 0);
			  output : out STD_LOGIC		  
			 );
			 
end Branch_equal_checker;

architecture Behavioral of Branch_equal_checker is

signal outt : STD_LOGIC;

begin
	
	process(rfa,rfb) begin 
	
	IF (rfa = rfb)THEN
	
		outt<='1';

	ELSE 
	
		outt<='0';
		
	END IF;
	
end process;

	output<=outt;

end Behavioral;

