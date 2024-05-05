`timescale 1ns / 1ps

module tb_bit32_RCA;
    reg [31:0] A, B;
    reg Cin;
    wire [39:0] Sum;
    wire Cout;

    //32비트 RCA모듈을 인스턴스화
    bit32_RCA RCA(A,B,Cin,Sum,Cout);
    
    initial begin
        A = 32'd0; B = 32'd0; Cin = 0;    // 0 + 0 + 0 = 0
        #10;
        A = 32'd8; B = 32'd9; Cin = 0;    // 8 + 9 + 0 = 17
        #10
        A = 32'd33; B = 32'd66; Cin = 1;  // 33 + 66 + 1 = 100
        #10
        
        // 최종 Cout에 자리올림이 발생한 경우를 테스트하기 위함
        A = 32'b11111111_11111111_11111111_11111110;
        B = 32'b00000000_00000000_00000000_00000010;
        Cin = 0;
    end
endmodule
