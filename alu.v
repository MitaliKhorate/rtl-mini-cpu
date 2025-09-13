module alu (
    input  wire [7:0] a, b,
    input  wire [3:0] alu_op,
    output reg  [7:0] result
);

    initial result = 8'b0; // initialize ALU result

    always @(*) begin
        case(alu_op)
            4'b0001: result = a + b;
            4'b0010: result = a - b;
            default: result = 8'b0;
        endcase
    end

endmodule
