module instruction_mem (
    input  wire [7:0] addr,
    output reg  [7:0] instruction
);

    reg [7:0] mem [0:255];

    integer i;
    initial begin
        for (i = 0; i < 256; i = i + 1)
            mem[i] = 8'b0; // initialize all instructions to 0

        // Example program (for demo)
        mem[0] = 8'b00010010;
        mem[1] = 8'b00100011;
        mem[2] = 8'b00011001;
    end

    always @(*) begin
        instruction = mem[addr];
    end

endmodule
