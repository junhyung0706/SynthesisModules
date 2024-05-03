module bit32_MUL(
input [31:0] A,
input [7:0] B,
output [39:0] Y
);

wire [14:0] w1,w2,w3;
wire [7:0] LastCarry;

//              a&b,       Sin, Cin, Sout, Cout
bit1_FA FA0_0(A[0] & B[0], 1'b0, 1'b0, Y[0], w1[0]); //A[0]*B[0]을 수행하는 FA
bit1_FA FA0_1(A[0] & B[1], 1'b0, 1'b0, w1[1], w1[2]); //A[0]*B[1]을 수행하는 FA
bit1_FA FA0_2(A[0] & B[2], 1'b0, 1'b0, w1[3], w1[4]);
bit1_FA FA0_3(A[0] & B[3], 1'b0, 1'b0, w1[5], w1[6]);
bit1_FA FA0_4(A[0] & B[4], 1'b0, 1'b0, w1[7], w1[8]);
bit1_FA FA0_5(A[0] & B[5], 1'b0, 1'b0, w1[9], w1[10]);
bit1_FA FA0_6(A[0] & B[6], 1'b0, 1'b0, w1[11], w1[12]);
bit1_FA FA0_7(A[0] & B[7], 1'b0, 1'b0, w1[13], w1[14]);

bit1_FA FA1_0(A[1]& B[0], w1[1], w1[0], Y[1], w2[0]);
bit1_FA FA1_1(A[1]& B[1], w1[3], w1[2], w2[1], w2[2]);
bit1_FA FA1_2(A[1]& B[2], w1[5], w1[4], w2[3], w2[4]);
bit1_FA FA1_3(A[1]& B[3], w1[7] ,w1[6], w2[5], w2[6]);
bit1_FA FA1_4(A[1]& B[4], w1[9], w1[8], w2[7], w2[8]);
bit1_FA FA1_5(A[1]& B[5], w1[11], w1[10], w2[9], w2[10]);
bit1_FA FA1_6(A[1]& B[6], w1[13], w1[12], w2[11], w2[12]);
bit1_FA FA1_7(A[1]& B[7], 1'b0, w1[14], w2[13], w2[14]);

bit1_FA FA2_0(A[2]& B[0], w2[1], w2[0], Y[2], w3[0]);
bit1_FA FA2_1(A[2]& B[1], w2[3], w2[2], w3[1], w3[2]);
bit1_FA FA2_2(A[2]& B[2], w2[5], w2[4], w3[3], w3[4]);
bit1_FA FA2_3(A[2]& B[3], w2[7], w2[6], w3[5], w3[6]);
bit1_FA FA2_4(A[2]& B[4], w2[9], w2[8], w3[7], w3[8]);
bit1_FA FA2_5(A[2]& B[5], w2[11], w2[10], w3[9], w3[10]);
bit1_FA FA2_6(A[2]& B[6], w2[13], w2[12], w3[11], w3[12]);
bit1_FA FA2_7(A[2]& B[7], 1'b0, w2[14], w3[13], w3[14]);

/*
생략된 많은 모듈들
*/

bit1_FA FA31_0(A[31] & B[0], w31[1], w31[0], Y[31], w31[0]);
bit1_FA FA31_1(A[31] & B[1], w31[3], w31[2], w32[1], w32[2]);
bit1_FA FA31_2(A[31] & B[2], w31[5], w31[4], w32[3], w32[4]);
bit1_FA FA31_3(A[31] & B[3], w31[7], w31[6], w32[5], w32[6]);
bit1_FA FA31_4(A[31] & B[4], w31[9], w31[8], w32[7], w32[8]);
bit1_FA FA31_5(A[31] & B[5], w31[11], w31[10], w32[9], w32[10]);
bit1_FA FA31_6(A[31] & B[6], w31[13], w31[12], w32[11], w32[12]);
bit1_FA FA31_7(A[31] & B[7], w31[15], w31[14], w32[13], w32[14]);

//마지막 줄의 모듈들
bit1_FA FA0(w32[1], w32[0], 1'b0, Y[32], LastCarry[0]);
bit1_FA FA0(w32[3], w32[2], LastCarry[0], Y[33], LastCarry[1]);
bit1_FA FA0(w32[5], w32[4], LastCarry[1], Y[34], LastCarry[2]);
bit1_FA FA0(w32[7], w32[6], LastCarry[2], Y[35], LastCarry[3]);
bit1_FA FA0(w32[9], w32[8], LastCarry[3], Y[36], LastCarry[4]);
bit1_FA FA0(w32[11], w32[10], LastCarry[4], Y[37], LastCarry[5]);
bit1_FA FA0(w32[13], w32[12], LastCarry[5], Y[38], LastCarry[6]);
bit1_FA FA0(1'b0, w32[14], LastCarry[6], Y[39], LastCarry[7]);

endmodule
