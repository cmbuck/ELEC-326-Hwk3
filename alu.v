module alu(aluOp, operand1, operand2, jump, branch, pc, addrInfo, aluResult, targetAddr);

input wire  [31:0] operand1, operand2;
input wire [31:0] pc;
input wire [25:0] addrInfo;
input wire jump, branch;
input wire [2:0] aluOp;

output reg [31:0] aluResult, targetAddr;

   // Set "aluResult" to  the result of the ALU operation indicated by "aluOp".
   // Set "targetAddr" if either "branch" or "jump" signal is  set.
   
   // aluOP operations
   // 1: Add operands.
   // 2: Subtract operand2 from operand1.
   // 3: Bitwise AND of operands.
   // 4: Bitwise OR of operands.
   // 5: Output set to TRUE if operand1 is less than operand2 interpreted as unsigned integers; else set to FALSE.
   // 6: Output set to TRUE if operands are equal; else set to FALSE.
   // 7: Output set to TRUE if operand1 is less than operand2 interpreted as signed integers; else set to FALSE.
      

   // Target Address for Branch
   //  Sign-extend the lower 16 bits of  "addrInfo", scale it by 4, and add to  "pc".  

   // Target Address for Jump
   // The 26-bit "addrInfo" is scaled by 4 and concatenated to the 4 high-order bits of "pc". 



endmodule



