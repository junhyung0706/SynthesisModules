`timescale 1ns / 1ps


module Top(
    input clk, nRST,
    input [31:0] A,
    input [31:0] B,
    input Sel,
    output reg [39:0] Result
);

reg [31:0] w1, w2, w3, w4;
wire [39:0] wireA, wireB;
wire [39:0] wireFinal;
wire C_out;

  
/*
MyModuleA moduleA(
    .A(w1),
    .B(w3),
    .Cin(0),
    .Sum(wireA),
    .Cout()
);

MyModuleB moduleB(
    .A(w2),
    .B(w4),
    .Cin(0),
    .Sum(wireB),
    .Cout()
);

*/
//Comb 1
bit32_RCA moduleA(
    .A(w1),
    .B(w3),
    .Cin(0),
    .Sum(wireA),
    .Cout(C_out)
);

bit32_RCA moduleB(
    .A(w2),
    .B(w4),
    .Cin(0),
    .Sum(wireB),
    .Cout(C_out)
);
//

always @(posedge clk or negedge nRST) begin
    if (!nRST) begin
        w1 <= 31'b0;
        w2 <= 31'b0;
        w3 <= 31'b0;
        w4 <= 31'b0;
    end
    else begin
        w1 <= A;
        w2 <= A;
        w3 <= B;
        w4 <= B;
    end
end

//Sel = 1 : A
//Sel = 0 : B
assign wireFinal = Sel ? wireA : wireB;

always@(posedge clk or negedge nRST) begin
    if (!nRST) begin
        Result <= 40'b0;
    end
    else begin
        Result <= wireFinal;
    end
end

endmodule
