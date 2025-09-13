module register_file (
    input  wire clk,
    input  wire we,              
    input  wire [1:0] ra1, ra2,  
    input  wire [1:0] wa,        
    input  wire [7:0] wd,        
    output reg [7:0] rd1, rd2,   
    output [7:0] r0, r1, r2, r3  
);

    reg [7:0] regs [0:3];

    initial begin
        regs[0] = 8'b0;
        regs[1] = 8'b0;
        regs[2] = 8'b0;
        regs[3] = 8'b0;
    end

    always @(posedge clk) begin
        if (we)
            regs[wa] <= wd;
    end

    always @(*) begin
        rd1 = regs[ra1];
        rd2 = regs[ra2];
    end

    assign r0 = regs[0];
    assign r1 = regs[1];
    assign r2 = regs[2];
    assign r3 = regs[3];

endmodule
