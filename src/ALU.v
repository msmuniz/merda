`timescale 1ns / 1ps

/*
    Unidade Lógica e Aritmética 
*/
module ALU (
    input Clock,
    input Reset,
    input [31:0] A,
    input [31:0] B,
    input [4:0] Shamt,
    input [3:0] ALUOp,
    output reg [31:0] ALUOut,

    output ZERO,
    output NEGATIVE,
    output reg CARRY,
    output OVERFLOW
    );

    `include "ALU_Parameters.v"

    reg [63:0] accumulator;
    wire [31:0] hi,lo;
    wire signed [31:0] As,Bs;
    wire signed [63:0] Mul_Result;
    wire signed [31:0] Quotient;
    wire signed [31:0] Remainder;
    
    assign hi = accumulator[63:32];
    assign lo = accumulator[31:0];
    assign As = A;
    assign Bs = B;
    assign Mul_Result = (As * Bs);
    assign Quotient = (As / Bs);
    assign Remainder = (As % Bs);


    always @(*) begin
        case (ALUOp)
            AluOp_Add:  {CARRY, ALUOut}      <= (A + B);
            AluOp_Sub:  ALUOut      <= (A - B);
            AluOp_Lui:  ALUOut      <= {B[15:0], 16'b0};
            AluOp_Sll:  ALUOut      <= B << Shamt;
            AluOp_Or:   ALUOut      <= (A | B);
            AluOp_Mul:  ALUOut      <= Mul_Result[31:0];
            AluOp_Mfhi: ALUOut      <= hi;
            AluOp_Slt:  ALUOut      <= (As < Bs) ? 32'b1 : 32'b0;
            default:    ALUOut      <= 32'b0;
        endcase
    end

    always @(posedge Clock) begin
        if (Reset) begin
            accumulator <= 64'b0;
        end
        else begin
            case (ALUOp)
                AluOp_Div: accumulator <= {Remainder, Quotient};
                default: accumulator <= accumulator;
            endcase
        end
    end

    // todos os bits de ALUOut devem ser zero
    assign ZERO = ~(|ALUOut);
    
    // verifica se B é maior que A numa operação de subtração
    assign NEGATIVE = ( (A < B) && ALUOp == AluOp_Sub) ? 1 : 0;

    // verifica se houve overflow
    assign OVERFLOW = ({CARRY, ALUOut[31]} == 2'b01);
endmodule
