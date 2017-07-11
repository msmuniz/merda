

/* Sinais ativos do datapath para cada 

    Bit     Name        Desc
    11      Jump[1]     Sinaliza a instrução como um Branch ou Jump
    10      Jump[0]     Sinaliza a instrução como um Branch ou Jump
     9      NoDest      Sinaliza que não será necessário um Registrador de destino em EX
     8      AluCtrl[2]  Bit 2 dos 3 bits de Operação da ALU
     7      AluCtrl[1]  Bit 1 dos 3 bits de Operação da ALU
     6      AluCtrl[0]  Bit 0 dos 3 bits de Operação da ALU
     5      ALUSrc      Seleciona entre o dado de um registrador (0) ou valor imediato (1)
     4      RegDst      Seleciona entre o Rt (0) ou Rd (1) como registrador de destino
     3      MemWr       Ativa escrita na memória
     2      MemRd       Ativa leitura da memória
     1      MemtoReg    Seleciona se o dado coletado da memória (0) ou 
                            resultado da ALU (1) será escrito em um registrador
     0      RegWr       Sinaliza se a instrução escreve (1) ou não (0) em um registrador
*/

/*Tipos*/
parameter [11:0] DP_R      = 12'b00_000001_00_01;
parameter [11:0] DP_Branch = 12'b10_110000_00_00;

parameter [11:0] DP_Add   = DP_R;
parameter [11:0] DP_Addi  = 12'b00_001010_00_01;
parameter [11:0] DP_Sub   = DP_R;
parameter [11:0] DP_Lui   = 12'b00_000110_00_01;
parameter [11:0] DP_Sll   = DP_R;
parameter [11:0] DP_Ori   = 12'b00_001110_00_01;
parameter [11:0] DP_Mul   = DP_R;
parameter [11:0] DP_Div   = 12'b00_000000_00_00;
parameter [11:0] DP_Mfhi  = DP_R;
parameter [11:0] DP_Slt   = DP_R;
parameter [11:0] DP_Beq   = DP_Branch;
parameter [11:0] DP_Bne   = DP_Branch;
parameter [11:0] DP_J     = 12'b01_101000_00_00;
parameter [11:0] DP_Jal   = 12'b01_101000_00_01;
parameter [11:0] DP_Jr    = 12'b11_100000_00_00;
parameter [11:0] DP_Lw    = 12'b00_001010_01_11;
parameter [11:0] DP_Sw    = 12'b00_001010_10_00;
