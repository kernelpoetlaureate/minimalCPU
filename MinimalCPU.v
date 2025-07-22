module MinimalCPU(input clk, input rst, output [15:0] pc, output [15:0] alu_result, output [15:0] instruction);
    wire [15:0] pc_next, read_data1, read_data2;
    wire reg_write;
    wire [1:0] alu_op;

    ProgramCounter pc_inst(clk, rst, pc_next, pc);
    InstructionMemory imem_inst(pc, instruction);
    RegisterFile rf_inst(clk, reg_write, instruction[11:10], instruction[9:8], instruction[7:6], alu_result, read_data1, read_data2);
    ALU alu_inst(read_data1, read_data2, alu_op, alu_result);
    ControlUnit cu_inst(instruction[15:12], reg_write, alu_op);

    assign pc_next = pc + 1; // Simple increment for now
endmodule
