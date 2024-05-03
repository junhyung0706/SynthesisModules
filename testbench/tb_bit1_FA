`timescale 1ns / 1ps

module tb_bit1_FA;
    reg A, B, Cin;
    wire Sum, Cout;
    
    bit1_FA FA(A, B, Cin, Sum, Cout);

    initial begin
        A = 0; B = 0; Cin =0;
        #10;
        A = 0; B = 0; Cin =1;
        #10;
        A = 0; B = 1; Cin =0;
        #10;
        A = 1; B = 0; Cin =1;
        #10
        A = 1; B = 1; Cin =1;
        #50;
        $finish;
    end

endmodule
