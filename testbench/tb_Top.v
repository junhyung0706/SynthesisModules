`timescale 1ns / 1ps

module tb_Top;
    reg [31:0] A, B;
    reg clk, nRST;
    reg Sel;
    wire [39:0] Result;

    Top top(clk, nRST, A, B, Sel, Result);
    
    initial begin
        clk = 0;
        forever #10 clk = ~clk;
    end
    
    initial begin
        nRST <= 0;
        #10;
        nRST <= 1;
        Sel = 0;
        A <= 0;
        B <= 0;
        #30
        A <= 10; B <= 20;
        #30;
        Sel <= 1;
        A <= 99; B <= 2;
        #30
        A <= 80; B <= 90;
        #100;
        $finish;
    end
endmodule
