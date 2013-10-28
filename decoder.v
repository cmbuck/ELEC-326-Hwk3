//  Suggestion:
//  Define  macros like the following commented block. That alllows you to use  meangful symbolic names (rather than 
// hard-to-parse and easy to  mangle) bit strings in the main code.


/*   Macros
 
 `define RType 
`define ADDI  
`define	LOAD  
`define	STORE 
`define	BEQ   
`define	JMP   


`define ADD  
`define SUB  
`define AND  
`define  OR  
`define SLT  
`define NOP  
*/


module insDecoder(instruction, addrInfo, ALUop, writeReg, memRead, memWrite, iType, wbEnable, isBranch, isJump);

input [31:0] instruction;
output [25:0] addrInfo;
output [2:0] ALUop;
output [4:0] writeReg;
output wbEnable, memRead, memWrite, iType, isBranch, isJump;


   /*
    Input: 
                   32-bit "instruction"
    Outputs:
    
    isBranch, isJump : TRUE  if instruction is branch or jump respectively; FALSE  otherwise.
    memRead: TRUE if instruction will read from data memory; FALSE otherwise.
    memWrite: TRUE if instruction will write to  data memory; FALSE otherwise.
    wbEnable: TRUE if instruction will write a result to a register; FALSE otherwise
    iType: TRUE if it is an IType instruction that is not a Branch; FALSE for Branch and non I-Type istructions.
    
    writeReg: id of register to be written; dont care if wbEnable is set to FALSE.
    addrInfo: the 26 LSBs of the instruction
    ALUop:  Defined by Table 2/
   
    */
	
endmodule



