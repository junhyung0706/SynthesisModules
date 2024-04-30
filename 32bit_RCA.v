module 32bit_RCA(
    input [31:0] A, B,
    input Cin,
    output [31:0] Sum,
    output Cout
);

    wire Carry1, Carry2, Carry3, Carry4, Carry5, Carry6, Carry7;

    4bit_RCA RCA0(A[3:0], B[3:0], Cin, Sum[3:0], Carry1);
    4bit_RCA RCA1(A[7:4], B[7:4], Carry1, Sum[7:4], Carry2);
    4bit_RCA RCA2(A[11:8], B[11:8], Carry2, Sum[11:8], Carry3);
    4bit_RCA RCA3(A[15:12], B[15:12], Carry3, Sum[15:12], Carry4);
    4bit_RCA RCA4(A[19:16], B[19:16], Carry4, Sum[19:16], Carry5);
    4bit_RCA RCA5(A[23:20], B[23:20], Carry5, Sum[23:20], Carry6);
    4bit_RCA RCA6(A[27:24], B[27:24], Carry6, Sum[27:24], Carry7);
    4bit_RCA RCA7(A[31:28], B[31:28], Carry7, Sum[31:28], Cout);

endmodule
