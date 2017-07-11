`timescale 1ns / 1ps

module RegisterFileTest ();

    parameter Halfcycle = 5;

    localparam Cycle = 2*Halfcycle;

    reg Clock;

    initial Clock = 0;
    always #(Halfcycle) Clock = ~Clock;

    reg [4:0] reg1;
    reg [4:0] reg2;
    reg [4:0] wrReg;
    reg wr;
    reg [31:0] writeData;

    wire [31:0] data1, data2;

    RegisterFile file (
        .Clock(Clock),
        .Reset(1'b0),
        .ReadRg1(reg1),
        .ReadRg2(reg2),
        .WriteRg(wrReg),
        .RegWrite(wr),
        .WriteData(writeData),
        .ReadData1(data1),
        .ReadData2(data2)
    );

    task printOutput;
        input [4:0] r1, r2, wrr;
        input [31:0] dIn, dOut1, dOut2;
        begin
            $display ("Read1: %d \nRead2: %d\nWrite: %d\n",r1,r2,wrr);
            $display("Data1: %d \nData2: %d \nDataIn: %d\n\n",dOut1,dOut2,dIn);
        end
    endtask

    initial begin

      wr = 1;
      reg1 = 2;
      reg2 = 0;
      wrReg = 2;
      writeData = 32'b111;
      
      #(Cycle);
      printOutput(reg1,reg2,wrReg,writeData,data1,data2);

      reg1 = 0;
      reg2 = 2;
      wrReg = 3;
      writeData = 32'b1;

      #(Cycle);
      printOutput(reg1,reg2,wrReg,writeData,data1,data2);

      reg1 = 3;
      reg2 = 3;
      wrReg = 0;
      writeData = 32'hFFFFFFFF;

      #(Cycle);
      printOutput(reg1,reg2,wrReg,writeData,data1,data2);

      reg1 = 31;
      reg2 = 30;
      wrReg = 30;
      writeData = 32'hFFFFFFFF;

      #(Cycle);
      printOutput(reg1,reg2,wrReg,writeData,data1,data2);

      reg1 = 3;
      reg2 = 10;
      wrReg = 3;
      writeData = 32'h7FFFFFFF;

      #(Cycle);
      printOutput(reg1,reg2,wrReg,writeData,data1,data2);

      wr = 0;
      wrReg = 3;
      writeData = 32'b0;

      #(Cycle);
      printOutput(reg1,reg2,wrReg,writeData,data1,data2);

      $finish();
    end
endmodule