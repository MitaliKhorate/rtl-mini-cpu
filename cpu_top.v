module cpu_top (
    input  wire clk,
    input  wire reset,
    output wire [7:0] pc_out,
    output wire [7:0] instr,
    output wire [7:0] rd1,
    output wire [7:0] rd2,
    output wire [7:0] alu_result,
    output wire [7:0] data_out,
    output wire [7:0] r0, r1, r2, r3
);

    wire [3:0] opcode;
    wire [1:0] rd, rs1, rs2;

    pc PC (.clk(clk), .reset(reset), .pc(pc_out));
    instruction_mem IM (.addr(pc_out), .instruction(instr));
    control_unit CU (.instruction(instr), .opcode(opcode), .rd(rd), .rs1(rs1), .rs2(rs2));
    register_file RF (
        .clk(clk), .we(1'b1),
        .ra1(rs1), .ra2(rs2), .wa(rd),
        .wd(alu_result),
        .rd1(rd1), .rd2(rd2),
        .r0(r0), .r1(r1), .r2(r2), .r3(r3)
    );
    alu ALU (.a(rd1), .b(rd2), .alu_op(opcode), .result(alu_result));
    data_mem DM (.clk(clk), .we(1'b0), .addr(alu_result), .wd(rd2), .rd(data_out));

endmodule
