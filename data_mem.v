module data_mem (
    input  wire clk,
    input  wire we,
    input  wire [7:0] addr,
    input  wire [7:0] wd,
    output reg  [7:0] rd
);

    reg [7:0] mem [0:255];
    integer i;

    initial begin
        for (i = 0; i < 256; i = i + 1)
            mem[i] = 8'b0; // initialize memory
    end

    // Write on clock
    always @(posedge clk) begin
        if (we)
            mem[addr] <= wd;
    end

    // Combinational read: rd always has a value
    always @(*) begin
        rd = mem[addr];
    end

endmodule

