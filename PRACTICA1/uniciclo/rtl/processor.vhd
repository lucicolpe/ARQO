--------------------------------------------------------------------------------
-- Procesador MIPS con pipeline curso Arquitectura 2017-18
--
-- Alejandro Cabana Suárez y Lucía Colmenarejo Pérez
-- Pareja 38
--------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity processor is
   port(
      Clk         : in  std_logic; -- Reloj activo flanco subida
      Reset       : in  std_logic; -- Reset asincrono activo nivel alto
      -- Instruction memory
      IAddr      : out std_logic_vector(31 downto 0); -- Direccion
      IDataIn    : in  std_logic_vector(31 downto 0); -- Dato leido
      -- Data memory
      DAddr      : out std_logic_vector(31 downto 0); -- Direccion
      DRdEn      : out std_logic;                     -- Habilitacion lectura
      DWrEn      : out std_logic;                     -- Habilitacion escritura
      DDataOut   : out std_logic_vector(31 downto 0); -- Dato escrito
      DDataIn    : in  std_logic_vector(31 downto 0)  -- Dato leido
		
   );
end processor;

architecture rtl of processor is 

component reg_bank
   port (
      Clk   : in std_logic; -- Reloj activo en flanco de subida
      Reset : in std_logic; -- Reset asíncrono a nivel alto
      A1    : in std_logic_vector(4 downto 0);   -- Dirección para el puerto Rd1
      Rd1   : out std_logic_vector(31 downto 0); -- Dato del puerto Rd1
      A2    : in std_logic_vector(4 downto 0);   -- Dirección para el puerto Rd2
      Rd2   : out std_logic_vector(31 downto 0); -- Dato del puerto Rd2
      A3    : in std_logic_vector(4 downto 0);   -- Dirección para el puerto Wd3
      Wd3   : in std_logic_vector(31 downto 0);  -- Dato de entrada Wd3
      We3   : in std_logic -- Habilitación de la escritura de Wd3
   ); 
end component;

component alu
   port (
      OpA     : in  std_logic_vector (31 downto 0); -- Operando A
      OpB     : in  std_logic_vector (31 downto 0); -- Operando B
      Control : in  std_logic_vector ( 3 downto 0); -- Codigo de control=op. a ejecutar
      Result  : out std_logic_vector (31 downto 0); -- Resultado
      ZFlag   : out std_logic                       -- Flag Z
   );
end component;

component control_unit
   port (
      -- Entrada = codigo de operacion en la instruccion:
      OpCode  : in  std_logic_vector (5 downto 0);
      -- Seniales para el PC
      Branch : out  std_logic; -- 1=Ejecutandose instruccion branch
      Jump : out std_logic; -- 1 =Ejecuntandose instruccion jump 
      -- Seniales relativas a la memoria
      MemToReg : out  std_logic; -- 1=Escribir en registro la salida de la mem.
      MemWrite : out  std_logic; -- Escribir la memoria
      MemRead  : out  std_logic; -- Leer la memoria
      -- Seniales para la ALU
      ALUSrc : out  std_logic;                     -- 0=oper.B es registro, 1=es valor inm.
      ALUOp  : out  std_logic_vector (2 downto 0); -- Tipo operacion para control de la ALU		
      -- Seniales para el GPR
      RegWrite : out  std_logic; -- 1=Escribir registro
      RegDst   : out  std_logic  -- 0=Reg. destino es rt, 1=rd
   );
end component;

component alu_control
   port (
      -- Entradas:
      ALUOp  : in std_logic_vector (2 downto 0); -- Codigo control desde la unidad de control
      Funct  : in std_logic_vector (5 downto 0); -- Campo "funct" de la instruccion
      -- Salida de control para la ALU:
      ALUControl : out std_logic_vector (3 downto 0) -- Define operacion a ejecutar por ALU
   );
end component;


signal A3: std_logic_vector(4 downto 0);
signal RD1, RD2: std_logic_vector(31 downto 0);

signal Result: std_logic_vector(31 downto 0);
signal ZFlag: std_logic;

signal RegDest, Branch, MemRead, MemToReg, MemWrite, ALUSrc, RegWrite, Jump: std_logic;
signal ALUOp: std_logic_vector (2 downto 0);
signal ALUControl: std_logic_vector(3 downto 0);

--Señales auxiliares

signal PC: std_logic_vector(31 downto 0);
signal PCplus4: std_logic_vector(31 downto 0);

signal MUXALUSrc: std_logic_vector(31 downto 0);
signal MUXMemToReg: std_logic_vector(31 downto 0);

signal DatoExtSigno: std_logic_vector(31 downto 0);
signal DatoExtSignoDespl: std_logic_vector(31 downto 0);

signal BTA: std_logic_vector(31 downto 0);
signal MUXBTA: std_logic_vector(31 downto 0);

signal PcSrc: std_logic;
signal MUXPCSrc: std_logic_vector(31 downto 0);

begin

reg: reg_bank PORT MAP(
			Clk => Clk,
			Reset => Reset,
			We3 => RegWrite,
			A1 => IDataIn(25 downto 21),
			A2 => IDataIn(20 downto 16),
			A3 => A3,
			Rd1 => Rd1,
			Rd2 => Rd2, 	
			Wd3 => MUXMemToReg
);

al: alu PORT MAP(
			Control => ALUControl,
			OpA => RD1,
			OpB => MUXALUSrc,
			Result => Result,
			ZFlag => ZFlag
);

ctrl_unit: control_unit PORT MAP(
		OpCode => IDataIn(31 downto 26),
      Branch => Branch,
		Jump => Jump,
      MemToReg => MemToReg,
      MemWrite => MemWrite,
		MemRead => MemRead,
      ALUSrc => ALUSrc,
		ALUOp => ALUOp,
      RegWrite => RegWrite,
      RegDst => RegDest
);

alu_ctrl: alu_control PORT MAP(
		ALUOp => ALUOp,
      Funct => IDataIn(5 downto 0),
      ALUControl => ALUControl
);


--PC
process(Clk, Reset)
begin
	if Reset = '1' then
		PC <= (others => '0');
	elsif Clk = '1' and Clk' event then
		PC <= MUXPCSrc;
	end if;
end process;

IAddr <= PC;

--Memoria de datos
	DAddr <= Result;
	DRdEn <= MemRead;
	DWrEn <= MemWrite;
	DDataOut <= RD2;
	
--Multiplexor ALUSrc
MUXALUSrc <= Rd2 when ALUSrc = '0' else DatoExtSigno;

--Multiplexor RegDest
A3 <= IDataIn(20 downto 16) when RegDest = '0' else IDataIn(15 downto 11);

--Multiplexor MemToReg
MUXMemToReg <= Result when MemToReg = '0' else DDataIn;


-- Implementación de la extensión de signo
DatoExtSigno(31 downto 16) <= (others => IDataIn(15));
DatoExtSigno(15 downto 0) <= IDataIn(15 downto 0);

--Desplazamiento <<2 de DatoExtSigno
DatoExtSignoDespl <= DatoExtSigno(29 downto 0) & "00";

--Sumador
BTA <= DatoExtSignoDespl + PCplus4;

--BTA
PCplus4 <= PC+4;

--Multiplexor BTA
PCSrc <= ZFlag AND Branch;
MUXBTA <= PCplus4 when PCSrc = '0' else BTA;


--Multiplexor Jump
MUXPCSrc <= MUXBTA when Jump = '0' else PCplus4(31 downto 28) & IDataIn(25 downto 0) & "00";


end architecture;
