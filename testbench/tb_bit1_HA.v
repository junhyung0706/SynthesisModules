`timescale 1ns / 1ps

module tb_bit1_HA;
    reg A, B;
    wire Sum, Cout;
    
    bit1_HA HA(A, B, Sum, Cout);

    initial begin
        A = 0; B = 0;    // 두 입력이 0일 때
        #10;
        A = 0; B = 1;    // 입력이 각각 0, 1일 때
        #10;
        A = 1; B = 0;    // 입력이 각각 1, 0일 때
        #10;
        A = 1; B = 1;    // 두 입력이 1일 때
        #10;
        $finish;
    end
    
endmodule
