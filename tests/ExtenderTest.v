`timescale 1ns / 1ps

module ExtenderTest ();

    parameter Halfcycle = 5;

    localparam Cycle = 2*Halfcycle;

    reg Clock;

    initial Clock = 0;
    always #(Halfcycle) Clock = ~Clock;

    reg [15:0] in;
    wire [31:0] out;
    reg signExt;

    Extender extender (
        .SignExt(signExt),
        .In(in),
        .Out(out)
    );

    task printOutput;
        input sign;
        input [15:0] in;
        input [31:0] out;
        begin
            $display ("signExt: %b \nIn: %b \nOut: %b\n\n",sign,in,out);
        end
    endtask

    initial begin
      signExt = 1'b0;
      in = 16'd1;

      #1;
      printOutput(signExt, in,out);

      signExt = 1'b1;
      in = 16'd2;
      
      #1;
      printOutput(signExt,in,out); 

      in = 16'hF000;
      signExt = 1;

      #1;
      printOutput(signExt,in,out);

      in = 16'hF000;
      signExt = 0;

      #1;
      printOutput(signExt,in,out);

      in = 16'h7000;
      signExt = 1;

      #1;
      printOutput(signExt,in,out);

      $finish();
    end
endmodule