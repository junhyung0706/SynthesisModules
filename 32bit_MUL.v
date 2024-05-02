module 32bit_MUL(
    input [31:0] A,
    input [7:0] B,
    output [39:0] Y
);

wire a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15;
wire b1, b2, b3, b4, b5, b6, b7, b8, b9, b10, b11, b12, b13, b14, b15;

//              a&b,       Sin, Cin, Sout, Cout
1bit_FA FA00(A[0] & B[0], 1'b0, 1'b0, Y[0], a1); //A[0]*B[0]을 수행하는 FA
1bit_FA FA01(A[0] & B[1], 1'b0, 1'b0, a2, a3); //A[0]*B[1]을 수행하는 FA
1bit_FA FA02(A[0] & B[2], 1'b0, 1'b0, a4, a5);
1bit_FA FA03(A[0] & B[3], 1'b0, 1'b0, a6, a7);
1bit_FA FA04(A[0] & B[4], 1'b0, 1'b0, a8, a9);
1bit_FA FA05(A[0] & B[5], 1'b0, 1'b0, a10, a11);
1bit_FA FA06(A[0] & B[6], 1'b0, 1'b0, a12, a13);
1bit_FA FA07(A[0] & B[7], 1'b0, 1'b0, a14, a15);

1bit_FA FA10(A[1]& B[0], a2, a1, Y[1], b1);
1bit_FA FA11(A[1]& B[1], a4, a3, b2, b3);
1bit_FA FA12(A[1]& B[2], a6, a5, b4, b5);
1bit_FA FA13(A[1]& B[3], a8 ,a7, b6, b7);
1bit_FA FA14(A[1]& B[4], a10, a9, b8, b9);
1bit_FA FA15(A[1]& B[5], a12, a11, b10, b11);
1bit_FA FA16(A[1]& B[6], a14, a13, b12, b13);
1bit_FA FA17(A[1]& B[7], 1'b0, a14, b14, b15);






endmodule
