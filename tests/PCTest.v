`timescale 1ns / 1ps

module PCTest ();

    parameter Halfcycle = 5;

    localparam Cycle = 2*Halfcycle;

    reg Clock;

    initial Clock = 0;
    always #(Halfcycle) Clock = ~Clock;

    wire [31:0] pc;
    wire [31:0] pc4;
    reg enable;

    Register PC (
        .Clock(Clock),
        .Reset(1'b0),
        .Enable(enable),
        .In(pc4),
        .Out(pc)
    );

    ADD PCplus4 (
        .A(pc),
        .B(32'd4),
        .C(pc4)
    );

    task printOutput;
        input [31:0] in;
        input [31:0] out;
        

        $display ("In: %b \nOut: %b\n\n",in,out);
    endtask

    integer i;
    initial begin
      enable = 1;
      
      for (i=0;i<10;i=i+1) begin
        #(Cycle);
        printOutput(pc,pc4);
      end

      enable = 0;

      #(Cycle);
      printOutput(pc,pc4);

      #(Cycle);
      printOutput(pc,pc4);
    
      enable = 0;

      $finish();
    end
endmodule