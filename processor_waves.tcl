# Load canceled
# Compile of ADD.v was successful.
# Compile of ALU.v was successful.
# Compile of ALUControl.v was successful.
# Compile of BranchForwardUnit.v was successful.
# Compile of ControlUnit.v was successful.
# Compile of EX_Block.v was successful.
# Compile of EX_MEM_Stage.v was successful.
# Compile of Extender.v was successful.
# Compile of ForwardingUnit.v was successful.
# Compile of HazardDetectionUnit.v was successful.
# Compile of ID_Block.v was successful.
# Compile of ID_EX_Stage.v was successful.
# Compile of IF_Block.v was successful.
# Compile of IF_ID_Stage.v was successful.
# Compile of MEM_Block.v was successful.
# Compile of MEM_WB_Stage.v was successful.
# Compile of Mux2.v was successful.
# Compile of Mux4.v was successful.
# Compile of Processor.v was successful.
# Compile of RAM.v was successful.
# Compile of Register.v was successful.
# Compile of RegisterFile.v was successful.
# Compile of WB_Block.v was successful.
# Compile of ProcessorTest.v was successful.
# 24 compiles, 0 failed with no errors. 
vsim +transport_int_delays +transport_int_delays +pulse_e/0 +pulse_r/0 -L altera_lnsim_ver -L altera_ver -L cycloneive_ver -L 220model_ver -L altera_mf_ver -L cycloneiv_ver -gui work.ProcessorTest
# vsim +transport_int_delays +transport_int_delays +transport_int_delays +pulse_e/0 +pulse_r/0 +transport_path_delays -L altera_lnsim_ver -L altera_ver -L cycloneive_ver -L 220model_ver -L altera_mf_ver -L cycloneiv_ver -gui work.ProcessorTest 
# Loading work.ProcessorTest
# Loading work.RAM
# Loading work.Processor
# Loading work.IF_Block
# Loading work.Register
# Loading work.ADD
# Loading work.Mux4
# Loading work.Mux2
# Loading work.IF_ID_Stage
# Loading work.ID_Block
# Loading work.ControlUnit
# Loading work.RegisterFile
# Loading work.Extender
# Loading work.ID_EX_Stage
# Loading work.EX_Block
# Loading work.ALUControl
# Loading work.ALU
# Loading work.EX_MEM_Stage
# Loading work.MEM_Block
# Loading work.MEM_WB_Stage
# Loading work.WB_Block
# Loading work.ForwardingUnit
# Loading work.BranchForwardUnit
# Loading work.HazardDetectionUnit
# ** Warning: (vsim-3015) C:/Users/Heitor/Dropbox/SD/processor/src/ID_Block.v(171): [PCDPC] - Port size (1 or 1) does not match connection size (2) for port 'ID_RegWrite'. The port definition is at: C:/Users/Heitor/Dropbox/SD/processor/src/ID_EX_Stage.v(17).
# 
#         Region: /ProcessorTest/cpu/idblock/IdEx
# ** Warning: (vsim-3015) C:/Users/Heitor/Dropbox/SD/processor/src/ID_Block.v(171): [PCDPC] - Port size (1 or 1) does not match connection size (2) for port 'ID_MemtoReg'. The port definition is at: C:/Users/Heitor/Dropbox/SD/processor/src/ID_EX_Stage.v(18).
# 
#         Region: /ProcessorTest/cpu/idblock/IdEx
# ** Warning: (vsim-3015) C:/Users/Heitor/Dropbox/SD/processor/src/ID_Block.v(171): [PCDPC] - Port size (1 or 1) does not match connection size (2) for port 'ID_MemRead'. The port definition is at: C:/Users/Heitor/Dropbox/SD/processor/src/ID_EX_Stage.v(20).
# 
#         Region: /ProcessorTest/cpu/idblock/IdEx
# ** Warning: (vsim-3015) C:/Users/Heitor/Dropbox/SD/processor/src/ID_Block.v(171): [PCDPC] - Port size (1 or 1) does not match connection size (2) for port 'ID_MemWrite'. The port definition is at: C:/Users/Heitor/Dropbox/SD/processor/src/ID_EX_Stage.v(21).
# 
#         Region: /ProcessorTest/cpu/idblock/IdEx
# ** Warning: (vsim-3015) C:/Users/Heitor/Dropbox/SD/processor/src/ID_Block.v(171): [PCDPC] - Port size (1 or 1) does not match connection size (2) for port 'ID_ALUSrc'. The port definition is at: C:/Users/Heitor/Dropbox/SD/processor/src/ID_EX_Stage.v(23).
# 
#         Region: /ProcessorTest/cpu/idblock/IdEx
# ** Warning: (vsim-3015) C:/Users/Heitor/Dropbox/SD/processor/src/ID_Block.v(171): [PCDPC] - Port size (3 or 3) does not match connection size (2) for port 'ID_ALUCtrl'. The port definition is at: C:/Users/Heitor/Dropbox/SD/processor/src/ID_EX_Stage.v(24).
# 
#         Region: /ProcessorTest/cpu/idblock/IdEx
# ** Warning: (vsim-3015) C:/Users/Heitor/Dropbox/SD/processor/src/ID_Block.v(171): [PCDPC] - Port size (1 or 1) does not match connection size (2) for port 'ID_RegDst'. The port definition is at: C:/Users/Heitor/Dropbox/SD/processor/src/ID_EX_Stage.v(25).
# 
#         Region: /ProcessorTest/cpu/idblock/IdEx
# ** Warning: (vsim-3015) C:/Users/Heitor/Dropbox/SD/processor/src/ID_Block.v(171): [PCDPC] - Port size (1 or 1) does not match connection size (2) for port 'ID_NoDest'. The port definition is at: C:/Users/Heitor/Dropbox/SD/processor/src/ID_EX_Stage.v(26).
# 
#         Region: /ProcessorTest/cpu/idblock/IdEx
# ** Warning: (vsim-3015) C:/Users/Heitor/Dropbox/SD/processor/src/EX_Block.v(80): [PCDPC] - Port size (32 or 32) does not match connection size (5) for port 'In0'. The port definition is at: C:/Users/Heitor/Dropbox/SD/processor/src/Mux2.v(9).
# 
#         Region: /ProcessorTest/cpu/exblock/RtRd_Mux
# ** Warning: (vsim-3015) C:/Users/Heitor/Dropbox/SD/processor/src/EX_Block.v(80): [PCDPC] - Port size (32 or 32) does not match connection size (5) for port 'In1'. The port definition is at: C:/Users/Heitor/Dropbox/SD/processor/src/Mux2.v(9).
# 
#         Region: /ProcessorTest/cpu/exblock/RtRd_Mux
# ** Warning: (vsim-3015) C:/Users/Heitor/Dropbox/SD/processor/src/EX_Block.v(80): [PCDPC] - Port size (32 or 32) does not match connection size (5) for port 'Out'. The port definition is at: C:/Users/Heitor/Dropbox/SD/processor/src/Mux2.v(10).
# 
#         Region: /ProcessorTest/cpu/exblock/RtRd_Mux
# ** Warning: (vsim-3015) C:/Users/Heitor/Dropbox/SD/processor/src/EX_Block.v(88): [PCDPC] - Port size (32 or 32) does not match connection size (5) for port 'Out'. The port definition is at: C:/Users/Heitor/Dropbox/SD/processor/src/Mux2.v(10).
# 
#         Region: /ProcessorTest/cpu/exblock/link_Mux
# ** Warning: (vsim-3015) C:/Users/Heitor/Dropbox/SD/processor/src/EX_Block.v(96): [PCDPC] - Port size (32 or 32) does not match connection size (5) for port 'In0'. The port definition is at: C:/Users/Heitor/Dropbox/SD/processor/src/Mux2.v(9).
# 
#         Region: /ProcessorTest/cpu/exblock/destReg_Mux
# ** Warning: (vsim-3015) C:/Users/Heitor/Dropbox/SD/processor/src/EX_Block.v(96): [PCDPC] - Port size (32 or 32) does not match connection size (5) for port 'In1'. The port definition is at: C:/Users/Heitor/Dropbox/SD/processor/src/Mux2.v(9).
# 
#         Region: /ProcessorTest/cpu/exblock/destReg_Mux
# ** Warning: (vsim-3015) C:/Users/Heitor/Dropbox/SD/processor/src/EX_Block.v(96): [PCDPC] - Port size (32 or 32) does not match connection size (5) for port 'Out'. The port definition is at: C:/Users/Heitor/Dropbox/SD/processor/src/Mux2.v(10).
# 
#         Region: /ProcessorTest/cpu/exblock/destReg_Mux
# ** Warning: (vsim-3017) C:/Users/Heitor/Dropbox/SD/processor/src/Processor.v(179): [TFMPC] - Too few port connections. Expected 4, found 3.
# 
#         Region: /ProcessorTest/cpu/wbblock
# ** Warning: (vsim-3015) C:/Users/Heitor/Dropbox/SD/processor/src/Processor.v(179): [PCDPC] - Port size (1 or 1) does not match connection size (32) for port 'WB_WriteData'. The port definition is at: C:/Users/Heitor/Dropbox/SD/processor/src/WB_Block.v(7).
# 
#         Region: /ProcessorTest/cpu/wbblock
# ** Warning: (vsim-3722) C:/Users/Heitor/Dropbox/SD/processor/src/Processor.v(179): [TFMPC] - Missing connection for port 'WB_MemtoReg'.
# 
# ** Warning: (vsim-3015) C:/Users/Heitor/Dropbox/SD/processor/src/WB_Block.v(17): [PCDPC] - Port size (32 or 32) does not match connection size (1) for port 'Out'. The port definition is at: C:/Users/Heitor/Dropbox/SD/processor/src/Mux2.v(10).
# 
#         Region: /ProcessorTest/cpu/wbblock/MemtoReg_Mux
# ** Warning: (vsim-3017) C:/Users/Heitor/Dropbox/SD/processor/src/Processor.v(221): [TFMPC] - Too few port connections. Expected 12, found 11.
# 
#         Region: /ProcessorTest/cpu/hdu
# ** Warning: (vsim-3722) C:/Users/Heitor/Dropbox/SD/processor/src/Processor.v(221): [TFMPC] - Missing connection for port 'EXMEM_MemRead'.
# 
# Compile of ADD.v was successful.
# Compile of ALU.v was successful with warnings.
# Compile of ALUControl.v was successful.
# Compile of BranchForwardUnit.v was successful.
# Compile of ControlUnit.v was successful.
# Compile of EX_Block.v was successful.
# Compile of EX_MEM_Stage.v was successful.
# Compile of Extender.v was successful.
# Compile of ForwardingUnit.v was successful.
# Compile of HazardDetectionUnit.v was successful.
# Compile of ID_Block.v was successful.
# Compile of ID_EX_Stage.v was successful.
# Compile of IF_Block.v was successful.
# Compile of IF_ID_Stage.v was successful.
# Compile of MEM_Block.v was successful.
# Compile of MEM_WB_Stage.v was successful.
# Compile of Mux2.v was successful.
# Compile of Mux4.v was successful.
# Compile of Processor.v was successful.
# Compile of RAM.v was successful.
# Compile of Register.v was successful.
# Compile of RegisterFile.v was successful.
# Compile of WB_Block.v was successful.
# Compile of ProcessorTest.v was successful.
# 24 compiles, 0 failed with no errors. 
vsim +transport_int_delays +transport_int_delays +transport_int_delays +pulse_e/0 +pulse_r/0 -L altera_lnsim_ver -L altera_ver -L cycloneive_ver -L 220model_ver -L altera_mf_ver -L cycloneiv_ver -gui work.ProcessorTest
# vsim +transport_int_delays +transport_int_delays +transport_int_delays +transport_int_delays +pulse_e/0 +pulse_r/0 +transport_path_delays -L altera_lnsim_ver -L altera_ver -L cycloneive_ver -L 220model_ver -L altera_mf_ver -L cycloneiv_ver -gui work.ProcessorTest 
# Loading work.ProcessorTest
# Loading work.RAM
# Loading work.Processor
# Loading work.IF_Block
# Loading work.Register
# Loading work.ADD
# Loading work.Mux4
# Loading work.Mux2
# Loading work.IF_ID_Stage
# Loading work.ID_Block
# Loading work.ControlUnit
# Loading work.RegisterFile
# Loading work.Extender
# Loading work.ID_EX_Stage
# Loading work.EX_Block
# Loading work.ALUControl
# Loading work.ALU
# Loading work.EX_MEM_Stage
# Loading work.MEM_Block
# Loading work.MEM_WB_Stage
# Loading work.WB_Block
# Loading work.ForwardingUnit
# Loading work.BranchForwardUnit
# Loading work.HazardDetectionUnit
# ** Warning: (vsim-3015) C:/Users/Heitor/Dropbox/SD/processor/src/ID_Block.v(171): [PCDPC] - Port size (3 or 3) does not match connection size (2) for port 'ID_ALUCtrl'. The port definition is at: C:/Users/Heitor/Dropbox/SD/processor/src/ID_EX_Stage.v(24).
# 
#         Region: /ProcessorTest/cpu/idblock/IdEx
# ** Warning: (vsim-3015) C:/Users/Heitor/Dropbox/SD/processor/src/EX_Block.v(80): [PCDPC] - Port size (32 or 32) does not match connection size (5) for port 'In0'. The port definition is at: C:/Users/Heitor/Dropbox/SD/processor/src/Mux2.v(9).
# 
#         Region: /ProcessorTest/cpu/exblock/RtRd_Mux
# ** Warning: (vsim-3015) C:/Users/Heitor/Dropbox/SD/processor/src/EX_Block.v(80): [PCDPC] - Port size (32 or 32) does not match connection size (5) for port 'In1'. The port definition is at: C:/Users/Heitor/Dropbox/SD/processor/src/Mux2.v(9).
# 
#         Region: /ProcessorTest/cpu/exblock/RtRd_Mux
# ** Warning: (vsim-3015) C:/Users/Heitor/Dropbox/SD/processor/src/EX_Block.v(80): [PCDPC] - Port size (32 or 32) does not match connection size (5) for port 'Out'. The port definition is at: C:/Users/Heitor/Dropbox/SD/processor/src/Mux2.v(10).
# 
#         Region: /ProcessorTest/cpu/exblock/RtRd_Mux
# ** Warning: (vsim-3015) C:/Users/Heitor/Dropbox/SD/processor/src/EX_Block.v(88): [PCDPC] - Port size (32 or 32) does not match connection size (5) for port 'Out'. The port definition is at: C:/Users/Heitor/Dropbox/SD/processor/src/Mux2.v(10).
# 
#         Region: /ProcessorTest/cpu/exblock/link_Mux
# ** Warning: (vsim-3015) C:/Users/Heitor/Dropbox/SD/processor/src/EX_Block.v(96): [PCDPC] - Port size (32 or 32) does not match connection size (5) for port 'In0'. The port definition is at: C:/Users/Heitor/Dropbox/SD/processor/src/Mux2.v(9).
# 
#         Region: /ProcessorTest/cpu/exblock/destReg_Mux
# ** Warning: (vsim-3015) C:/Users/Heitor/Dropbox/SD/processor/src/EX_Block.v(96): [PCDPC] - Port size (32 or 32) does not match connection size (5) for port 'In1'. The port definition is at: C:/Users/Heitor/Dropbox/SD/processor/src/Mux2.v(9).
# 
#         Region: /ProcessorTest/cpu/exblock/destReg_Mux
# ** Warning: (vsim-3015) C:/Users/Heitor/Dropbox/SD/processor/src/EX_Block.v(96): [PCDPC] - Port size (32 or 32) does not match connection size (5) for port 'Out'. The port definition is at: C:/Users/Heitor/Dropbox/SD/processor/src/Mux2.v(10).
# 
#         Region: /ProcessorTest/cpu/exblock/destReg_Mux
# ** Warning: (vsim-3017) C:/Users/Heitor/Dropbox/SD/processor/src/Processor.v(179): [TFMPC] - Too few port connections. Expected 4, found 3.
# 
#         Region: /ProcessorTest/cpu/wbblock
# ** Warning: (vsim-3015) C:/Users/Heitor/Dropbox/SD/processor/src/Processor.v(179): [PCDPC] - Port size (1 or 1) does not match connection size (32) for port 'WB_WriteData'. The port definition is at: C:/Users/Heitor/Dropbox/SD/processor/src/WB_Block.v(7).
# 
#         Region: /ProcessorTest/cpu/wbblock
# ** Warning: (vsim-3722) C:/Users/Heitor/Dropbox/SD/processor/src/Processor.v(179): [TFMPC] - Missing connection for port 'WB_MemtoReg'.
# 
# ** Warning: (vsim-3015) C:/Users/Heitor/Dropbox/SD/processor/src/WB_Block.v(17): [PCDPC] - Port size (32 or 32) does not match connection size (1) for port 'Out'. The port definition is at: C:/Users/Heitor/Dropbox/SD/processor/src/Mux2.v(10).
# 
#         Region: /ProcessorTest/cpu/wbblock/MemtoReg_Mux
# ** Warning: (vsim-3017) C:/Users/Heitor/Dropbox/SD/processor/src/Processor.v(221): [TFMPC] - Too few port connections. Expected 12, found 11.
# 
#         Region: /ProcessorTest/cpu/hdu
# ** Warning: (vsim-3722) C:/Users/Heitor/Dropbox/SD/processor/src/Processor.v(221): [TFMPC] - Missing connection for port 'EXMEM_MemRead'.
# 
# Compile of ADD.v was successful.
# Compile of ALU.v was successful.
# Compile of ALUControl.v was successful.
# Compile of BranchForwardUnit.v was successful.
# Compile of ControlUnit.v was successful.
# Compile of EX_Block.v failed with 1 errors.
# Compile of EX_MEM_Stage.v was successful.
# Compile of Extender.v was successful.
# Compile of ForwardingUnit.v was successful.
# Compile of HazardDetectionUnit.v was successful with warnings.
# Compile of ID_Block.v was successful.
# Compile of ID_EX_Stage.v was successful.
# Compile of IF_Block.v was successful.
# Compile of IF_ID_Stage.v was successful.
# Compile of MEM_Block.v was successful.
# Compile of MEM_WB_Stage.v was successful.
# Compile of Mux2.v was successful.
# Compile of Mux4.v was successful.
# Compile of Processor.v was successful.
# Compile of RAM.v was successful.
# Compile of Register.v was successful.
# Compile of RegisterFile.v was successful.
# Compile of WB_Block.v was successful.
# Compile of ProcessorTest.v was successful.
# 24 compiles, 1 failed with 1 error. 
# Compile of EX_Block.v was successful.
vsim +transport_int_delays +transport_int_delays +transport_int_delays +transport_int_delays +pulse_e/0 +pulse_r/0 -L altera_lnsim_ver -L altera_ver -L cycloneive_ver -L 220model_ver -L altera_mf_ver -L cycloneiv_ver -gui work.ProcessorTest
# vsim +transport_int_delays +transport_int_delays +transport_int_delays +transport_int_delays +transport_int_delays +pulse_e/0 +pulse_r/0 +transport_path_delays -L altera_lnsim_ver -L altera_ver -L cycloneive_ver -L 220model_ver -L altera_mf_ver -L cycloneiv_ver -gui work.ProcessorTest 
# Loading work.ProcessorTest
# Loading work.RAM
# Loading work.Processor
# Loading work.IF_Block
# Loading work.Register
# Loading work.ADD
# Loading work.Mux4
# Loading work.Mux2
# Loading work.IF_ID_Stage
# Loading work.ID_Block
# Loading work.ControlUnit
# Loading work.RegisterFile
# Loading work.Extender
# Loading work.ID_EX_Stage
# Loading work.EX_Block
# Loading work.ALUControl
# Loading work.ALU
# Loading work.EX_MEM_Stage
# Loading work.MEM_Block
# Loading work.MEM_WB_Stage
# Loading work.WB_Block
# Loading work.ForwardingUnit
# Loading work.BranchForwardUnit
# Loading work.HazardDetectionUnit
# ** Warning: (vsim-3015) C:/Users/Heitor/Dropbox/SD/processor/src/EX_Block.v(88): [PCDPC] - Port size (32 or 32) does not match connection size (5) for port 'Out'. The port definition is at: C:/Users/Heitor/Dropbox/SD/processor/src/Mux2.v(10).
# 
#         Region: /ProcessorTest/cpu/exblock/link_Mux
# ** Warning: (vsim-3017) C:/Users/Heitor/Dropbox/SD/processor/src/Processor.v(179): [TFMPC] - Too few port connections. Expected 4, found 3.
# 
#         Region: /ProcessorTest/cpu/wbblock
# ** Warning: (vsim-3015) C:/Users/Heitor/Dropbox/SD/processor/src/Processor.v(179): [PCDPC] - Port size (1 or 1) does not match connection size (32) for port 'WB_WriteData'. The port definition is at: C:/Users/Heitor/Dropbox/SD/processor/src/WB_Block.v(7).
# 
#         Region: /ProcessorTest/cpu/wbblock
# ** Warning: (vsim-3722) C:/Users/Heitor/Dropbox/SD/processor/src/Processor.v(179): [TFMPC] - Missing connection for port 'WB_MemtoReg'.
# 
# ** Warning: (vsim-3015) C:/Users/Heitor/Dropbox/SD/processor/src/WB_Block.v(17): [PCDPC] - Port size (32 or 32) does not match connection size (1) for port 'Out'. The port definition is at: C:/Users/Heitor/Dropbox/SD/processor/src/Mux2.v(10).
# 
#         Region: /ProcessorTest/cpu/wbblock/MemtoReg_Mux
# ** Warning: (vsim-3017) C:/Users/Heitor/Dropbox/SD/processor/src/Processor.v(221): [TFMPC] - Too few port connections. Expected 12, found 11.
# 
#         Region: /ProcessorTest/cpu/hdu
# ** Warning: (vsim-3722) C:/Users/Heitor/Dropbox/SD/processor/src/Processor.v(221): [TFMPC] - Missing connection for port 'EXMEM_MemRead'.
# 
# Compile of EX_Block.v was successful.
# Compile of ADD.v was successful.
# Compile of ALU.v was successful.
# Compile of ALUControl.v was successful.
# Compile of BranchForwardUnit.v was successful.
# Compile of ControlUnit.v was successful.
# Compile of EX_Block.v was successful.
# Compile of EX_MEM_Stage.v was successful.
# Compile of Extender.v was successful.
# Compile of ForwardingUnit.v was successful.
# Compile of HazardDetectionUnit.v was successful.
# Compile of ID_Block.v was successful.
# Compile of ID_EX_Stage.v was successful.
# Compile of IF_Block.v was successful.
# Compile of IF_ID_Stage.v was successful.
# Compile of MEM_Block.v was successful.
# Compile of MEM_WB_Stage.v was successful.
# Compile of Mux2.v was successful.
# Compile of Mux4.v was successful.
# Compile of Processor.v was successful.
# Compile of RAM.v was successful.
# Compile of Register.v was successful.
# Compile of RegisterFile.v was successful.
# Compile of WB_Block.v was successful.
# Compile of ProcessorTest.v was successful.
# 24 compiles, 0 failed with no errors. 
vsim +transport_int_delays +transport_int_delays +transport_int_delays +transport_int_delays +transport_int_delays +pulse_e/0 +pulse_r/0 -L altera_lnsim_ver -L altera_ver -L cycloneive_ver -L 220model_ver -L altera_mf_ver -L cycloneiv_ver -gui work.ProcessorTest
# vsim +transport_int_delays +transport_int_delays +transport_int_delays +transport_int_delays +transport_int_delays +transport_int_delays +pulse_e/0 +pulse_r/0 +transport_path_delays -L altera_lnsim_ver -L altera_ver -L cycloneive_ver -L 220model_ver -L altera_mf_ver -L cycloneiv_ver -gui work.ProcessorTest 
# Loading work.ProcessorTest
# Loading work.RAM
# Loading work.Processor
# Loading work.IF_Block
# Loading work.Register
# Loading work.ADD
# Loading work.Mux4
# Loading work.Mux2
# Loading work.IF_ID_Stage
# Loading work.ID_Block
# Loading work.ControlUnit
# Loading work.RegisterFile
# Loading work.Extender
# Loading work.ID_EX_Stage
# Loading work.EX_Block
# Loading work.ALUControl
# Loading work.ALU
# Loading work.EX_MEM_Stage
# Loading work.MEM_Block
# Loading work.MEM_WB_Stage
# Loading work.WB_Block
# Loading work.ForwardingUnit
# Loading work.BranchForwardUnit
# Loading work.HazardDetectionUnit
# ** Warning: (vsim-3015) C:/Users/Heitor/Dropbox/SD/processor/src/EX_Block.v(88): [PCDPC] - Port size (32 or 32) does not match connection size (5) for port 'In0'. The port definition is at: C:/Users/Heitor/Dropbox/SD/processor/src/Mux2.v(9).
# 
#         Region: /ProcessorTest/cpu/exblock/link_Mux
# ** Warning: (vsim-3015) C:/Users/Heitor/Dropbox/SD/processor/src/EX_Block.v(88): [PCDPC] - Port size (32 or 32) does not match connection size (5) for port 'In1'. The port definition is at: C:/Users/Heitor/Dropbox/SD/processor/src/Mux2.v(9).
# 
#         Region: /ProcessorTest/cpu/exblock/link_Mux
# ** Warning: (vsim-3015) C:/Users/Heitor/Dropbox/SD/processor/src/EX_Block.v(88): [PCDPC] - Port size (32 or 32) does not match connection size (5) for port 'Out'. The port definition is at: C:/Users/Heitor/Dropbox/SD/processor/src/Mux2.v(10).
# 
#         Region: /ProcessorTest/cpu/exblock/link_Mux
# ** Warning: (vsim-3017) C:/Users/Heitor/Dropbox/SD/processor/src/Processor.v(222): [TFMPC] - Too few port connections. Expected 12, found 11.
# 
#         Region: /ProcessorTest/cpu/hdu
# ** Warning: (vsim-3722) C:/Users/Heitor/Dropbox/SD/processor/src/Processor.v(222): [TFMPC] - Missing connection for port 'EXMEM_MemRead'.
# 
# Compile of ADD.v was successful.
# Compile of ALU.v was successful.
# Compile of ALUControl.v was successful.
# Compile of BranchForwardUnit.v was successful.
# Compile of ControlUnit.v was successful.
# Compile of EX_Block.v was successful.
# Compile of EX_MEM_Stage.v was successful.
# Compile of Extender.v was successful.
# Compile of ForwardingUnit.v was successful.
# Compile of HazardDetectionUnit.v was successful.
# Compile of ID_Block.v was successful.
# Compile of ID_EX_Stage.v was successful.
# Compile of IF_Block.v was successful.
# Compile of IF_ID_Stage.v was successful.
# Compile of MEM_Block.v was successful.
# Compile of MEM_WB_Stage.v was successful.
# Compile of Mux2.v was successful.
# Compile of Mux4.v was successful.
# Compile of Processor.v was successful.
# Compile of RAM.v was successful.
# Compile of Register.v was successful.
# Compile of RegisterFile.v was successful.
# Compile of WB_Block.v was successful.
# Compile of ProcessorTest.v was successful.
# 24 compiles, 0 failed with no errors. 
vsim +transport_int_delays +transport_int_delays +transport_int_delays +transport_int_delays +transport_int_delays +transport_int_delays +pulse_e/0 +pulse_r/0 -L altera_lnsim_ver -L altera_ver -L cycloneive_ver -L 220model_ver -L altera_mf_ver -L cycloneiv_ver -gui work.ProcessorTest
# vsim +transport_int_delays +transport_int_delays +transport_int_delays +transport_int_delays +transport_int_delays +transport_int_delays +transport_int_delays +pulse_e/0 +pulse_r/0 +transport_path_delays -L altera_lnsim_ver -L altera_ver -L cycloneive_ver -L 220model_ver -L altera_mf_ver -L cycloneiv_ver -gui work.ProcessorTest 
# Loading work.ProcessorTest
# Loading work.RAM
# Loading work.Processor
# Loading work.IF_Block
# Loading work.Register
# Loading work.ADD
# Loading work.Mux4
# Loading work.Mux2
# Loading work.IF_ID_Stage
# Loading work.ID_Block
# Loading work.ControlUnit
# Loading work.RegisterFile
# Loading work.Extender
# Loading work.ID_EX_Stage
# Loading work.EX_Block
# Loading work.ALUControl
# Loading work.ALU
# Loading work.EX_MEM_Stage
# Loading work.MEM_Block
# Loading work.MEM_WB_Stage
# Loading work.WB_Block
# Loading work.ForwardingUnit
# Loading work.BranchForwardUnit
# Loading work.HazardDetectionUnit
# WARNING: No extended dataflow license exists
add wave -position insertpoint  \
sim:/ProcessorTest/cpu/idblock/ID_Instruction
# ** Warning: (vsim-WLF-5000) WLF file currently in use: vsim.wlf
# 
#           File in use by: Heitor  Hostname: MEUPCA  ProcessID: 6460
# 
#           Attempting to use alternate WLF file "./wlfteh03qe".
# ** Warning: (vsim-WLF-5001) Could not open WLF file: vsim.wlf
# 
#           Using alternate file: ./wlfteh03qe
# 
add wave -position insertpoint  \
sim:/ProcessorTest/cpu/idblock/EX_Instruction
add wave -position insertpoint  \
sim:/ProcessorTest/cpu/exblock/MEM_Instruction
add wave -position insertpoint  \
sim:/ProcessorTest/cpu/memblock/WB_Instruction
add wave -position insertpoint  \
sim:/ProcessorTest/ram/Address
add wave -position insertpoint  \
sim:/ProcessorTest/ram/ReadData
add wave -position insertpoint  \
sim:/ProcessorTest/ram/WriteData
add wave -position insertpoint  \
sim:/ProcessorTest/cpu/hdu/IFID_Write
add wave -position insertpoint  \
sim:/ProcessorTest/cpu/hdu/PCWrite
add wave -position insertpoint  \
sim:/ProcessorTest/cpu/hdu/HazZero
add wave -position insertpoint  \
sim:/ProcessorTest/cpu/bfu/ForBranchA
add wave -position insertpoint  \
sim:/ProcessorTest/cpu/bfu/ForBranchB
add wave -position insertpoint  \
sim:/ProcessorTest/cpu/fu/ForA
add wave -position insertpoint  \
sim:/ProcessorTest/cpu/fu/ForB
add wave -position insertpoint  \
sim:/ProcessorTest/cpu/fu/ForC
run -all
# 1
# Break in Module ProcessorTest at C:/Users/Heitor/Dropbox/SD/processor/tests/ProcessorTest.v line 58
# Compile of ProcessorTest.v was successful.
restart -f
# Loading work.ProcessorTest
run -all
# 1
# Break in Module ProcessorTest at C:/Users/Heitor/Dropbox/SD/processor/tests/ProcessorTest.v line 61
