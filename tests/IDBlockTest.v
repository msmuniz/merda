`timescale 1ns / 1ps

module IDBlockTest ();

    parameter Halfcycle = 5;

    localparam Cycle = 2*Halfcycle;

    reg Clock, Reset;

    initial Clock = 0;
    always #(Halfcycle) Clock = ~Clock;

    reg writeEnable;
    wire [31:0] readData, IF_MemAddr;

    wire [31:0] IF_WriteData, ID_Instruction, ID_PCplus4;

    RAM ram (
        .Clock(Clock),
        .Address(IF_MemAddr[15:2]),
        .MemWrite(writeEnable),
        .WriteData(IF_WriteData),
        .ReadData(readData)
    );


    IF_Block ifblock (
        .Clock(Clock),
        .Reset(Reset),
        .ID_PCSrc(2'b00),
        .ID_JumpAddr(32'bx),
        .ID_BranchAddr(32'bx),
        .ID_JrRsData(32'bx),
        .MEM_MemRead(1'b0),
        .MEM_MemWrite(1'b0),
        .MEM_ALUOut(32'bx),
        .MEM_RtData(32'bx),
        .WB_WriteData(32'bx),
        .Mem_ReadData(readData),
        .IF_ForC(1'b0),
        .IF_Write(1'b1),
        .IF_PCWrite(1'b1),
        .IF_Flush(1'b0),
        .Mem_Address(IF_MemAddr),
        .Mem_WriteData(IF_WriteData),
        .ID_Instruction(ID_Instruction),
        .ID_PCplus4(ID_PCplus4)
    );

    ID_Block idblock(
        .Clock(Clock),
        .Reset(Reset),
        .ID_Instruction(),
        .ID_PCplus4(),
        .WB_WriteData(),
        .WB_ALUOut(),
        .ForBranchA(),
        .ForBranchB(),
        .HazZero(),
        .WB_RegWrite(),
        .WB_DestReg(),

        .ID_BranchAddr(),
        .ID_JumpAddr(),
        .ID_JrRsData(),
        .ID_PCSrc(),
        .IF_Flush(),
        .Branch(),
        .EX_PCplus4(),
        .EX_RsData(),
        .EX_RtData(),
        .EX_Immediate(),
        .ID_RsReg(),
        .EX_RsReg(),
        .EX_RtReg(),
        .EX_RdReg(),
        .EX_RegWrite(),
        .EX_MemtoReg(),
        .EX_MemRead(),
        .EX_MemWrite(),
        .EX_ALUSrc(),
        .EX_ALUCtrl(),
        .EX_RegDst(),
        .EX_NoDest(),
        .EX_Instruction()
    );

    task checkOutput;
        input [13:0] ClockCycle;
        input [31:0] fileInstruction, REFInstruction;
        begin
            $display ("CC: %d Instruction: 0x%h REFInstruction: 0x%h",ClockCycle,fileInstruction, REFInstruction);
            if (fileInstruction == REFInstruction)
                $display("Pass!");
            else begin
                $display("Failed.");
                $finish();
            end
        end
    endtask

    localparam wordsInFile = 17;

    reg [31:0] fileContent [0:wordsInFile-1];
    integer i;

    initial begin
      Reset = 1;
      #(Cycle);

      $readmemb("/users/heitor/dropbox/sd/processor/tests/InstructionsNoHazard.input", fileContent);

      writeEnable = 0;
      Reset = 0;  
      
       checkOutput(0,32'b0,ID_Instruction);
      for (i = 0; i < wordsInFile; i=i+1) begin
        $display("FileContent %d: %h",i,fileContent[i]);
        #(Cycle);
        checkOutput(i+1,fileContent[i],ID_Instruction);
      end

      $finish();
    end
endmodule