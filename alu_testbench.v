module alu_testbench;

alu  myALU(op, data1, data2, isJump, isBranch, pc, offset, ALUOut, JumpAddr);
   

`define FALSE 0
`define TRUE 1

   
reg [31:0] data1,  data2, pc;
reg [2:0] op;
reg [25:0] offset;
reg  isJump, isBranch;
wire [31:0] ALUOut, JumpAddr;
   
initial begin
   data1 = 32'h0FFFFFFE;
   data2 = 32'hFFFFFFFF;
   pc = 32'h10001000;
   op = 0;
   $display("*************************************");
end
   
	 
   always @(*) begin
      while ($time < 20) begin
	 #2;	 op = op+1;
      end

      #2;      offset = 26'h300FFFF;
               isBranch = `TRUE;      
      
      #2;      isBranch = `FALSE;

      #2;      isJump = `TRUE;

      #2;      isJump = `FALSE;		   		        
   end // always @ (*)
   

   always @(op) begin
      #1;
      $display("Time: %3d\tOP changed:\t op=%d  D1=%x D2=%x\tALUout=%x  JumpAddr=%x", $time, op, data1, data2, ALUOut, JumpAddr);
   $display("*************************************");
   end

   
      always @(isBranch) begin
      #1;
	 $display("Time: %3d\tisBranch changed:\t\tisBranch=%x  pc=%x  offset=%x\t\t Target Addr=%x", $time, isBranch, pc, offset, JumpAddr);
      $display("*************************************");
      end


         always @(isJump) begin
      #1;
	 $display("Time: %3d\tisJump  changed:\t\tisjump = %x  pc =%x  offset=%x\t Target Addr = %x", $time, isJump, pc, offset, JumpAddr);
      $display("*************************************");
	 end
   

   
endmodule // alu_testbench






