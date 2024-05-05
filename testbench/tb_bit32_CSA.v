`timescale 1ns / 1ps


module tb_bit32_CSA;
    reg [31:0] A, B;
    reg Cin;
    wire [39:0] Sum;
    wire Cout;
    
    bit32_CSA CSA(A, B, Cin, Sum, Cout);
    
    initial begin
        A = 32'd0; B = 32'd0; Cin = 0;
        #10;
        A = 32'd8; B = 32'd9; Cin = 0;
        #10
        A = 32'd33; B = 32'd66; Cin = 1;
        #10
        A = 32'b11111111_11111111_11111111_11111110;
        B = 32'b00000000_00000000_00000000_00000010;
        Cin = 0;
        #30
        $finish;
    end
endmodule
