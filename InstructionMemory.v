module InstructionMemory(
    input [15:0] address,
    output reg [15:0] instruction
);
    // ROM memory to store instructions
    reg [15:0] memory [0:255];  // 256 16-bit instructions

    // Initialize with some sample instructions
    initial begin
        // Sample program - you can modify these instructions
        memory[0] = 16'h0000;  // NOP
        memory[1] = 16'h0001;  // Example instruction
        memory[2] = 16'h0002;  // Example instruction
        // Add more instructions as needed
    end

    // Read instruction from memory
    always @(*) begin
        instruction = memory[address[7:0]];  // Use lower 8 bits of address
    end
endmodule
