module 32bit_MUL(
    input [31:0] A,
    input [7:0] B,
    output [39:0] Y
);

wire a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15;
wire b1, b2, b3, b4, b5, b6, b7, b8, b9, b10, b11, b12, b13, b14, b15;
wire c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15;

//              a&b,       Sin, Cin, Sout, Cout
1bit_FA FA0_0(A[0] & B[0], 1'b0, 1'b0, Y[0], a1); //A[0]*B[0]을 수행하는 FA
1bit_FA FA0_1(A[0] & B[1], 1'b0, 1'b0, a2, a3); //A[0]*B[1]을 수행하는 FA
1bit_FA FA0_2(A[0] & B[2], 1'b0, 1'b0, a4, a5);
1bit_FA FA0_3(A[0] & B[3], 1'b0, 1'b0, a6, a7);
1bit_FA FA0_4(A[0] & B[4], 1'b0, 1'b0, a8, a9);
1bit_FA FA0_5(A[0] & B[5], 1'b0, 1'b0, a10, a11);
1bit_FA FA0_6(A[0] & B[6], 1'b0, 1'b0, a12, a13);
1bit_FA FA0_7(A[0] & B[7], 1'b0, 1'b0, a14, a15);

1bit_FA FA1_0(A[1]& B[0], a2, a1, Y[1], b1);
1bit_FA FA1_1(A[1]& B[1], a4, a3, b2, b3);
1bit_FA FA1_2(A[1]& B[2], a6, a5, b4, b5);
1bit_FA FA1_3(A[1]& B[3], a8 ,a7, b6, b7);
1bit_FA FA1_4(A[1]& B[4], a10, a9, b8, b9);
1bit_FA FA1_5(A[1]& B[5], a12, a11, b10, b11);
1bit_FA FA1_6(A[1]& B[6], a14, a13, b12, b13);
1bit_FA FA1_7(A[1]& B[7], 1'b0, a14, b14, b15);

1bit_FA FA2_0(A[2]& B[0], b2, b1, Y[2], c1);
1bit_FA FA2_1(A[2]& B[1], b4, b3, c2, c3);
1bit_FA FA2_2(A[2]& B[2], b6, b5, c4, c5);
1bit_FA FA2_3(A[2]& B[3], b8 ,b7, c6, c7);
1bit_FA FA2_4(A[2]& B[4], b10, b9, c8, c9);
1bit_FA FA2_5(A[2]& B[5], b12, b11, c10, c11);
1bit_FA FA2_6(A[2]& B[6], b14, b13, c12, c13);
1bit_FA FA2_7(A[2]& B[7], 1'b0, b14, c14, c15);
 



endmodule
