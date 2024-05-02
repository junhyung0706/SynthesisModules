module 32bit_MUL(
    input [31:0] A,
    input [7:0] B,
    output [39:0] Y
);

wire [15:0] a,b,c;

//              a&b,       Sin, Cin, Sout, Cout
1bit_FA FA0_0(A[0] & B[0], 1'b0, 1'b0, Y[0], a[1]); //A[0]*B[0]을 수행하는 FA
1bit_FA FA0_1(A[0] & B[1], 1'b0, 1'b0, a[2], a[3]); //A[0]*B[1]을 수행하는 FA
1bit_FA FA0_2(A[0] & B[2], 1'b0, 1'b0, a[4], a[5]);
1bit_FA FA0_3(A[0] & B[3], 1'b0, 1'b0, a[6], a[7]);
1bit_FA FA0_4(A[0] & B[4], 1'b0, 1'b0, a[8], a[9]);
1bit_FA FA0_5(A[0] & B[5], 1'b0, 1'b0, a[10], a[11]);
1bit_FA FA0_6(A[0] & B[6], 1'b0, 1'b0, a[12], a[13]);
1bit_FA FA0_7(A[0] & B[7], 1'b0, 1'b0, a[14], a[15]);

1bit_FA FA1_0(A[1]& B[0], a[2], a[1], Y[1], b[1]);
1bit_FA FA1_1(A[1]& B[1], a[4], a[3], b[2], b[3]);
1bit_FA FA1_2(A[1]& B[2], a[6], a[5], b[4], b[5]);
1bit_FA FA1_3(A[1]& B[3], a[8] ,a[7], b[6], b[7]);
1bit_FA FA1_4(A[1]& B[4], a[10], a[9], b[8], b[9]);
1bit_FA FA1_5(A[1]& B[5], a[12], a[11], b[10], b[11]);
1bit_FA FA1_6(A[1]& B[6], a[14], a[13], b[12], b[13]);
1bit_FA FA1_7(A[1]& B[7], 1'b0, a[14], b[14], b[15]);

1bit_FA FA2_0(A[2]& B[0], b[2], b[1], Y[2], c[1]);
1bit_FA FA2_1(A[2]& B[1], b[4], b[3], c[2], c[3]);
1bit_FA FA2_2(A[2]& B[2], b[6], b[5], c[4], c[5]);
1bit_FA FA2_3(A[2]& B[3], b[8], b[7], c[6], c[7]);
1bit_FA FA2_4(A[2]& B[4], b[10], b[9], c[8], c[9]);
1bit_FA FA2_5(A[2]& B[5], b[12], b[11], c[10], c[11]);
1bit_FA FA2_6(A[2]& B[6], b[14], b[13], c[12], c[13]);
1bit_FA FA2_7(A[2]& B[7], 1'b0, b[14], c14, c15);




endmodule