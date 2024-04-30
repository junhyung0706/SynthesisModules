module 32bit_CSA(
    input [31:0] A, B,
    input Cin,
    output [31:0] Sum,
    output Cout
);

    wire [6:0] Carry;
    wire [6:0] Carry0, Carry1;
    wire [31:0] Sum0, Sum1;

    4bit_RCA RCA0(A[3:0], B[3:0], Cin, Sum[3:0], Carry[0]);
    
    4bit_RCA RCA1_0(A[7:4], B[7:4], 1'b0, Sum0[7:4], Carry0[0]);
    4bit_RCA RCA1_1(A[7:4], B[7:4], 1'b1, Sum1[7:4], Carry1[0]);
    
    4bit_RCA RCA2_0(A[11:8], B[11:8], 1'b0, Sum0[11:8], Carry0[1]);
    4bit_RCA RCA2_1(A[11:8], B[11:8], 1'b1, Sum1[11:8], Carry1[1]);

    4bit_RCA RCA3_0(A[15:12], B[15:12], 1'b0, Sum0[15:12], Carry0[2]);
    4bit_RCA RCA3_1(A[15:12], B[15:12], 1'b1, Sum1[15:12], Carry1[2]);
    
    4bit_RCA RCA4_0(A[19:16], B[19:16], 1'b0, Sum0[19:16], Carry0[3]);
    4bit_RCA RCA4_1(A[19:16], B[19:16], 1'b1, Sum1[19:16], Carry1[3]);

    4bit_RCA RCA5_0(A[23:20], B[23:20], 1'b0, Sum0[23:20], Carry0[4]);
    4bit_RCA RCA5_1(A[23:20], B[23:20], 1'b1, Sum1[23:20], Carry1[4]);
    
    4bit_RCA RCA6_0(A[27:24], B[27:24], 1'b0, Sum0[27:24], Carry0[5]);
    4bit_RCA RCA6_1(A[27:24], B[27:24], 1'b1, Sum1[27:24], Carry1[5]);
    
    4bit_RCA RCA7_0(A[31:28], B[31:28], 1'b0, Sum0[31:28], Carry0[6]);
    4bit_RCA RCA7_1(A[31:28], B[31:28], 1'b1, Sum1[31:28], Carry1[6]);

    assign Carry[1] = Carry[0] ? Carry1[0] : Carry0[0];
    assign Carry[2] = Carry[1] ? Carry1[1] : Carry0[1];
    assign Carry[3] = Carry[2] ? Carry1[2] : Carry0[2];
    assign Carry[4] = Carry[3] ? Carry1[3] : Carry0[3];
    assign Carry[5] = Carry[4] ? Carry1[4] : Carry0[4];
    assign Carry[6] = Carry[5] ? Carry1[5] : Carry0[5];
    assign Cout = Carry[6] ? Carry1[6] : Carry0[6];

    assign Sum[7:4] = Carry[0] ? Sum1[7:4] : Sum0[7:4];
    assign Sum[11:8] = Carry[1] ? Sum1[11:8] : Sum0[11:8];
    assign Sum[15:12] = Carry[2] ? Sum1[15:12] : Sum0[15:12];
    assign Sum[19:16] = Carry[3] ? Sum1[19:16] : Sum0[19:16];
    assign Sum[23:20] = Carry[4] ? Sum1[23:20] : Sum0[23:20];
    assign Sum[27:24] = Carry[5] ? Sum1[27:24] : Sum0[27:24];
    assign Sum[31:28] = Carry[6] ? Sum1[31:28] : Sum0[31:28];

endmodule
