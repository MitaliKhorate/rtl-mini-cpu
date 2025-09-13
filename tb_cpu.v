`timescale 1ns/1ps
module tb_cpu;

    reg clk, reset;

    wire [7:0] pc_out, instr, rd1, rd2, alu_result, data_out;
    wire [7:0] r0, r1, r2, r3;

    cpu_top uut (
        .clk(clk),
        .reset(reset),
        .pc_out(pc_out),
        .instr(instr),
        .rd1(rd1),
        .rd2(rd2),
        .alu_result(alu_result),
        .data_out(data_out),
        .r0(r0), .r1(r1), .r2(r2), .r3(r3)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        $dumpfile("cpu.vcd");
        $dumpvars(0, tb_cpu);

        reset = 1;
        #10 reset = 0;

        #200;
        $display("Simulation complete.");
        $finish;
    end

endmodule
