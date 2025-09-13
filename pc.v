module pc (
    input  wire clk,
    input  wire reset,
    output reg [7:0] pc
);

    initial pc = 8'b0; // initialize PC to 0

    always @(posedge clk or posedge reset) begin
        if (reset)
            pc <= 8'b0;
        else
            pc <= pc + 1;
    end

endmodule
