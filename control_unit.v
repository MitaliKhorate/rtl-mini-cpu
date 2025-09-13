module control_unit (
    input  wire [7:0] instruction,
    output wire [3:0] opcode,
    output wire [1:0] rd, rs1, rs2
);

    assign opcode = instruction[7:4];
    assign rd     = instruction[3:2];
    assign rs1    = instruction[1:0];
    assign rs2    = instruction[1:0]; // dummy for demo

endmodule
