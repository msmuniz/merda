`timescale 1ns / 1ps

/*
    Somador de 32 bits com 2 entradas
*/
module ADD (
    input [31:0] A,
    input [31:0] B,
    output[31:0] C
    );

    assign C = (A + B);
endmodule