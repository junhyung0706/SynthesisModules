`timescale 1ns / 1ps

module tb_bit1_FA;
    reg A, B, Cin;
    wire Sum, Cout;

    //전가산기 모듈을 인스턴스 화
    bit1_FA FA(A, B, Cin, Sum, Cout);

    initial begin
        A = 0; B = 0; Cin =0;    //0 + 0 + 0 = 0
        #10;
        A = 0; B = 0; Cin =1;    // 0 + 0 + 1 = 1
        #10;
        A = 0; B = 1; Cin =0;    // 0 + 1 + 0 = 1
        #10;
        A = 1; B = 0; Cin =1;    // 1 + 0 + 1 = 2
        #10
        A = 1; B = 1; Cin =1;    // 1 + 1 + 1 = 3
        #50;
        $finish;
    end

endmodule
