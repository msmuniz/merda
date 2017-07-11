`timescale 1ns / 1ps

module BranchForwardUnit(

    input EXMEM_RegWrite,
    input MEMWB_RegWrite,
    input [4:0] IFID_RegRs,
    input [4:0] IFID_RegRt,
    input [4:0] EXMEM_RegRd,
    input [4:0] MEMWB_RegRd,
    output [1:0] ForBranchA,
    output [1:0] ForBranchB
    );

    // checa se IF/ID.Rs == EX/MEM.Rd 
    wire IFID_EQ_EXMEM_Rs = (IFID_RegRs == EXMEM_RegRd);
    // checa se IF/ID.Rt == EX/MEM.Rd
    wire IFID_EQ_EXMEM_Rt = (IFID_RegRt == EXMEM_RegRd);

    // checa se IF/ID.Rs == MEM/WB.Rd
    wire IFID_EQ_MEMWB_Rs = (IFID_RegRs == MEMWB_RegRd);
    // checa se IF/ID.Rt == MEM/WB.Rd
    wire IFID_EQ_MEMWB_Rt = (IFID_RegRt == MEMWB_RegRd);
    
    wire MEM_ForwardA = (EXMEM_RegWrite & EXMEM_RegRd != 0 & IFID_EQ_EXMEM_Rs);
    wire MEM_ForwardB = (EXMEM_RegWrite & EXMEM_RegRd != 0 & IFID_EQ_EXMEM_Rt);

    wire WB_ForwardA = (MEMWB_RegWrite & MEMWB_RegRd != 0 & IFID_EQ_MEMWB_Rs);
    wire WB_ForwardB = (MEMWB_RegWrite & MEMWB_RegRd != 0 & IFID_EQ_MEMWB_Rt);

    assign ForBranchA = (MEM_ForwardA) ? 2'b10 : ((WB_ForwardA) ? 2'b01 : 2'b00 );
    assign ForBranchB = (MEM_ForwardB) ? 2'b10 : ((WB_ForwardB) ? 2'b01 : 2'b00 );

/*
    if(exmem_regwrite != 1'b0 && exmem_reg_rd != 1'b0)
        begin
	    if(exmem_reg_rd == ifid_reg_rs) begin
	        for_branchA <= 2'10;
            end
            else begin
                if(exmem_reg_rd == ifid_reg_rt) begin
		    for_branchB <= 2'10;
		end
            end
	end

    if((memwb_regwrite != 1'b0 && memwb_reg_rd != 1'b0) && (exmem_regwrite == 1'b0 && exmem_reg_rd == 1'b0))
	begin
	    if(exmem_reg_rd != ifid_reg_rs && memwb_reg_rd == ifid_reg_rs) begin
	        for_branchA <= 2'01;
            end
            else begin
                if(exmem_reg_rd != ifid_reg_rt && memwb_reg_rd == ifid_reg_rt) begin
		    for_branchB <= 2'01;
		end
            end
	end
    */
endmodule
