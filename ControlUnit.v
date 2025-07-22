module ControlUnit(input [3:0] opcode, output reg reg_write, output reg [1:0] alu_op);
    always @(*) begin
        case (opcode)
            4'b0000: begin // ADD
                reg_write = 1;
                alu_op = 2'b00;
            end
            4'b0001: begin // SUB
                reg_write = 1;
                alu_op = 2'b01;
            end
            4'b0010: begin // AND
                reg_write = 1;
                alu_op = 2'b10;
            end
            4'b0011: begin // OR
                reg_write = 1;
                alu_op = 2'b11;
            end
            default: begin
                reg_write = 0;
                alu_op = 2'b00;
            end
        endcase
    end
endmodule
