module ProgramCounter(input clk, input rst, input [15:0] pc_next, output reg [15:0] pc);
    always @(posedge clk or negedge rst) begin
        if (!rst)
            pc <= 16'b0;
        else
            pc <= pc_next;
    end
endmodule
