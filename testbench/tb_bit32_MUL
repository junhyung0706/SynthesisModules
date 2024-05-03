`timescale 1ns / 1ps

module tb_bit32_MUL;
    reg [31:0] A;
    reg [7:0] B;
    wire [39:0] Result;
    
    bit32_MUL MUL(A,B,Result);
    
    initial begin
        A = 0;
        B = 0;
        #10;
        A = 5;
        B = 6;
        #10
        A = 30;
        B = 10;
        #30
        $finish;
    end
    
endmodule
