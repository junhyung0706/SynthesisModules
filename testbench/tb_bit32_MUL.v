`timescale 1ns / 1ps

module tb_bit32_MUL;
    reg [31:0] A;
    reg [7:0] B;
    wire [39:0] Result;
    
    bit32_MUL MUL(A,B,Result);
    
    initial begin
        // 0 * 0 = 0
        A = 0;
        B = 0;
        #10;
        // 5 * 6 = 30
        A = 5;
        B = 6;
        #10
        //30 * 10 = 300
        A = 30;
        B = 10;
        #10
        // input constraint로 가장 큰 비트들의 곱을 테스트
        A = 32'b1111_1111_1111_1111_1111_1111_1111_1111;
        B = 7'b1111_1111;
        #30
        $finish;
    end
    
endmodule
