`timescale 1ns / 1ps

module tb_bit4_RCA;
    reg [3:0] A, B;
    reg Cin;
    wire [3:0] Sum;
    wire Cout;
    
    bit4_RCA RCA(A, B, Cin, Sum, Cout);
    
    initial begin
        A = 4'b0000; B = 4'b0000; Cin =0;
        #10;
        A = 4'b0010; B = 4'b0001; Cin =0;
        #10;
        A = 4'b0010; B = 4'b0001; Cin =1;
        #10;
        A = 4'b1111; B = 4'b1111; Cin =0;
        #10
        A = 4'b0101; B = 4'b1010; Cin =0;
        #50;
        $finish;
    end
    
endmodule
