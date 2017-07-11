`timescale 1ns / 1ps

/*
    Registradores de pipeline entre as fases EX (Execution)
    e MEM (Memory Access).

    Quando EXMEMWrite está em 0, os registradores de ID não recebem os dados de IF.
    Quando EX_Flush está em 1, os registradores de ID são zerados (informação perdida).
*/

module EX_MEM_Stage (
    input Clock,
    input Reset,
    input EXMEMWrite,
    input EX_Flush,
    //Sinais de Controle WB
    input EX_RegWrite,
    input EX_MemtoReg,
    //Sinais de Controle MEM
    input EX_MemRead,
    input EX_MemWrite,
    //Sinais de Dados
    input [31:0] EX_ALUOut,
    input [31:0] EX_RtData,
    input [4:0] EX_RdReg,
    //Debug
    input [31:0] EX_Instruction,

    output reg[31:0] MEM_ALUOut,
    output reg[31:0] MEM_RtData,
    output reg[4:0] MEM_RdReg,

    output reg MEM_RegWrite,
    output reg MEM_MemtoReg,
    output reg MEM_MemRead,
    output reg MEM_MemWrite,
    //Debug
    output reg [31:0] MEM_Instruction
    );

    always@(posedge Clock) begin
        MEM_ALUOut    <= (Reset) ? 32'd0 : ((!EXMEMWrite) ? MEM_ALUOut   : ((EX_Flush) ? 32'd0 : EX_ALUOut  )); 
        MEM_RtData    <= (Reset) ? 32'd0 : ((!EXMEMWrite) ? MEM_RtData   : ((EX_Flush) ? 32'd0 : EX_RtData  )); 
        MEM_RdReg     <= (Reset) ?  5'd0 : ((!EXMEMWrite) ? MEM_RdReg    : ((EX_Flush) ?  5'd0 : EX_RdReg   )); 
        
        MEM_RegWrite  <= (Reset) ?  1'd0 : ((!EXMEMWrite) ? MEM_RegWrite : ((EX_Flush) ?  1'd0 : EX_RegWrite   )); 
        MEM_MemtoReg  <= (Reset) ?  1'd0 : ((!EXMEMWrite) ? MEM_MemtoReg : ((EX_Flush) ?  1'd0 : EX_MemtoReg   )); 
        MEM_MemRead   <= (Reset) ?  1'd0 : ((!EXMEMWrite) ? MEM_MemRead  : ((EX_Flush) ?  1'd0 : EX_MemRead   )); 
        MEM_MemWrite  <= (Reset) ?  1'd0 : ((!EXMEMWrite) ? MEM_MemWrite : ((EX_Flush) ?  1'd0 : EX_MemWrite   )); 

        MEM_Instruction  <= (Reset) ?  32'd0 : ((!EXMEMWrite) ? MEM_Instruction : ((EX_Flush) ?  32'd0 : EX_Instruction   )); 
    end
endmodule