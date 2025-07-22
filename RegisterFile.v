module RegisterFile(input clk, input reg_write, input [1:0] rs1, input [1:0] rs2, input [1:0] rd, input [15:0] write_data, output [15:0] read_data1, output [15:0] read_data2);
    reg [15:0] registers [3:0];
    assign read_data1 = registers[rs1];
    assign read_data2 = registers[rs2];
    always @(posedge clk) begin
        if (reg_write)
            registers[rd] <= write_data;
    end
endmodule
