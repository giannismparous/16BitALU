Library ieee;
Use ieee.std_logic_1164.all;


--κωδικας για πολυπλεκτη 4 προς 1(4-to-1 multiplexer )

Entity my_mux4to1 is 
	port ( w0 , w1 , w2 , w3 : in std_logic;
			operation : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			out1 : out std_logic);
End my_mux4to1;

Architecture Behavior of my_mux4to1 is 
	Begin 
		with operation select
			out1 <=  w0 when "00",
						w1 when "01",
						w2 when "10",
						w3 when others;
End Behavior;

-------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;	

--κωδικας για λογικο AND 2 μεταβλητων(logical AND with 2 inputs)
		
Entity product_of_2 is 
	port ( a , b : in std_logic;
			out1	: out std_logic);
End product_of_2;

Architecture model_conc of product_of_2 is
	Begin 
		out1<= a and b;
End model_conc;

-------------------------------------------------------------------------
	
library ieee;
use ieee.std_logic_1164.all;	
		
--κωδικας για λογικο OR 2 μεταβλητων(logical OR with 2 inputs)		
		
Entity addition_of_2 is 
	port ( a , b : in std_logic;
			out1	: out std_logic);
End addition_of_2;

Architecture model_conc of addition_of_2 is
	Begin 
		out1<= a or b;
End model_conc;

--------------------------------------------------------------------------	
	
LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

--κωδικας για εναν FullAdder (πληρης αθροιστης)

ENTITY fullAdd IS
	PORT (CarryIn, x, y : IN STD_LOGIC ;
			Sum, CO : OUT STD_LOGIC ) ;
END fullAdd ;


ARCHITECTURE LogicFunc OF fullAdd IS
	BEGIN
		Sum <= x XOR y XOR CarryIn ; 
		CO <= (x AND y) OR (CarryIn AND x) OR (CarryIn AND y) ; 
END LogicFunc ;
	
----------------------------------------------------------------------------
	
Library ieee;
Use ieee.std_logic_1164.all;

--κωδικας για πολυπλεκτη 2 προς 1 (2-to-1 multiplexer )

Entity my_mux2to1Binvert is 
	port ( b: in std_logic;
			Binvert : IN STD_LOGIC;
			out1 : out std_logic);
End my_mux2to1Binvert;

Architecture Behavior of my_mux2to1Binvert is 
	Begin 
		with Binvert select
			out1 <=  b when '0',
						not(b) when others;
End Behavior;
	

----------------------------------------------------------------------------	
	
Library ieee;
Use ieee.std_logic_1164.all;

--κωδικας για πολυπλεκτη 2 προς 1(2-to-1 multiplexer )

Entity my_mux2to1Ainvert is 
	port ( a: in std_logic;
			Ainvert : IN STD_LOGIC;
			out1 : out std_logic);
End my_mux2to1Ainvert;

Architecture Behavior of my_mux2to1Ainvert is 
	Begin 
		with Ainvert select
			out1 <=  a when '0',
					not(a) when others;
End Behavior;
		
----------------------------------------------------------------------------	
	
library ieee;
use ieee.std_logic_1164.all;	

--κωδικας για xor 2 μεταβλητων(xor with 2 inputs)
		
Entity xor_of_2 is 
	port ( x1 , x2 : in std_logic;
			out1	: out std_logic);
End xor_of_2;

Architecture model_conc of xor_of_2 is
	Begin 
		out1<=x1 xor x2;
End model_conc;	
	
	
-----------------------------------------------------------------------------

-----------------------------------------------------------------------------	


library ieee;
use ieee.std_logic_1164.all;

-- code for (ALU_1_BIT) using components

Entity ALU_1_BIT is 
	port ( a , b , Ainvert, Binvert, CarryIn: in std_logic;
			operation :IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			CarryOut: out std_LOGIC;
			f: out std_logic);
End ALU_1_BIT;

architecture structural of ALU_1_BIT is

--ALL component we need!

--component for my_mux4to1
component my_mux4to1 
	port (w0 , w1 , w2 , w3: in std_LOGIC; operation :IN STD_LOGIC_VECTOR(1 DOWNTO 0); out1: out std_logic);
 end component;

--component for product_of_2
component product_of_2
	port (a, b: in std_logic; out1: out std_logic);
 end component;
 
 --componet for addition_of_2
component addition_of_2
	port (a, b: in std_logic; out1: out std_logic);
 end component;

 --component for fullAdd
component fullAdd
	port (CarryIn, x, y: in std_logic; Sum, CO : OUT STD_LOGIC);
 end component;

 --componet for my_mux2to1Binvert
component my_mux2to1Binvert
	port ( b, Binvert: in std_logic; out1: out std_logic);
 end component;
 
 --component for my_mux2to1Ainvert
component my_mux2to1Ainvert
	port ( a, Ainvert: in std_logic; out1: out std_logic);
 end component;

 --component xor_of_2
component xor_of_2
	port (x1, x2: in std_logic; out1: out std_logic);
 end component;

 
 --all singal i need to create my alu_1_bit
 signal outAinvert , outBinvert , w0, w1, w2, w3: std_logic;
 
 
 begin
Step0: my_mux2to1Ainvert port map (a , Ainvert, outAinvert ); 
Step1: my_mux2to1Binvert port map (b , Binvert, outBinvert);
Step2: product_of_2 port map ( outAinvert , outBinvert, w0); 
Step3: addition_of_2 port map (outAinvert , outBinvert , w1);
Step4: fullAdd port map (CarryIn , outAinvert , outBinvert , w2 ,CarryOut );
Step5: xor_of_2 port map (outAinvert , outBinvert, w3);
Step6: my_mux4to1 port map(w0 ,w1 ,w2 ,w3 ,operation(1 downto 0) ,f);
end structural;



--------Code for Control Circuit(control_circuit)

library ieee;
use ieee.std_logic_1164.all;

Entity control_circuit is 
	port (opcode: in std_LOGIC_VECTOR(2 DOWNTO 0);
			soperation: out std_LOGIC_VECTOR(1 DOWNTO 0);
			sAinvert, sBinvert, sCarryIn: out STD_LOGIC_vector(0 downto 0));
END control_circuit;	
 

Architecture Behavior of control_circuit is
	Begin
		soperation <= "00" when opcode="000" else
						  "01" when opcode="001" else
						  "10" when opcode="010" else
						  "10" when opcode="011" else
						  "00" when opcode="100" else
						  "01" when opcode="101" else
						  "11" when opcode="110";
		
		sAinvert <= "0" when opcode="000" else
						"0" when opcode="001" else
						"0" when opcode="010" else
						"0" when opcode="011" else
						"1" when opcode="100" else
						"1" when opcode="101" else
						"0" when opcode="110";
		sBinvert <= "0" when opcode="000" else
						"0" when opcode="001" else
						"0" when opcode="010" else
						"1" when opcode="011" else
						"1" when opcode="100" else
						"1" when opcode="101" else
						"0" when opcode="110";
		sCarryIn <= "0" when opcode="000" else
						"0" when opcode="001" else
						"0" when opcode="010" else
						"1" when opcode="011" else
						"0" when opcode="100" else
						"0" when opcode="101" else
						"0" when opcode="110";
End Behavior; 


--------Code for ALU using components

library ieee;
use ieee.std_logic_1164.all;

ENTITY ALU IS
	port (a , b : in std_logic_vector(15 DOWNTO 0);
			opcode : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
			overflow: out std_logic;
			Result: out std_logic_vector(15 DOWNTO 0));
End ALU;

Architecture Structure of ALU is
	Signal c : Std_LOGIC_VECTOR(15 DOWNTO 0);
	Signal sAinvert,sBinvert,sCarryIn: Std_LOGIC;
	Signal soperation : std_LOGIC_VECTOR(1 DOWNTO 0);

	
	Component control_circuit
			port (opcode: in std_LOGIC_VECTOR(2 DOWNTO 0);
			soperation: out std_LOGIC_VECTOR(1 DOWNTO 0);
			sAinvert, sBinvert, sCarryIn: out STD_LOGIC);
	End Component;	
	
	Component ALU_1_BIT 
		port (a , b , Ainvert, Binvert, CarryIn: in std_logic;
			operation :IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			CarryOut: out std_LOGIC;
			f: out std_logic);
		End Component;
Begin 
	Selection: control_circuit port map(opcode, soperation, sAinvert, sBinvert, sCarryIn);
	Alu0stage1: ALU_1_BIT port map(a(0),b(0),sAinvert,sBinvert,sCarryIn,soperation,c(0),Result(0));

	leftAlus: for i in 1 to 15 generate
		Alusstage1: alu_1_BIT port map(a(i),b(i),sAinvert,sBinvert,c(i-1),soperation,c(i),Result(i));

	end generate;
	tOverflow: overflow<=(c(14) xor c(15));
End Structure;