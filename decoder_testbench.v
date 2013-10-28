module decoder_testbench;

insDecoder  myDecoder(instruction, addrInfo, ALUop, writeReg, memRead, memWrite, iType, wbEnable, branch, jump);



reg [31:0] instruction;

wire [25:0] addrInfo;
wire [2:0]  ALUop;
wire [4:0]  writeReg;
wire  wbEnable, memRead, memWrite, iType, branch, jump;

   reg testnum;   
initial begin
   instruction = 0;
   testnum = 0;
   $display("*************************************");
end


   
	 
   always @(*) begin
      while ($time < 22) begin
	
	 #2;instruction = 32'h00430820;
	 #2;instruction = 32'h00851822;
	 #2;instruction = 32'h00C72824;
	 #2;instruction = 32'h01093825;
	 #2;instruction = 32'h014B482A;
	 #2;instruction = 32'h11CFFFFC;
	 #2;instruction = 32'h818BFFFF;
	 #2;instruction = 32'hC1ACFFFE;
	 #2;instruction = 32'h00430820;
	 #2;instruction = 32'h21CDFFFD;
	 #2;instruction = 32'h0BFFFFFB;
	
	 testnum = testnum+10;

   end // always @ (*)
end   



      always @(instruction) begin
      #1;
         $display("Time: %3d\tInstruction = %x", $time, instruction);
	 $display("addrInfo: %x   ALUop: %d     writeReg: %d",  addrInfo, ALUop, writeReg);

	 $display("memRead:%1d menWrite:%1d  iType:%1d wbEnable:%1d  branch:%1d  jump:%1d", memRead, memWrite, iType, wbEnable, branch, jump);
	 $display("*************************************");
	 end
   
endmodule // decoder_testbench






