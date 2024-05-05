`timescale 1ns / 1ps

module bit32_RCA(
    input [31:0] A, B,
    input Cin,
    output [39:0] Sum,
    output Cout
);

    wire Carry1, Carry2, Carry3, Carry4, Carry5, Carry6, Carry7;

    // 8개의 4비트 RCA 모듈을 인스턴스화
    bit4_RCA RCA0(A[3:0], B[3:0], Cin, Sum[3:0], Carry1);
    bit4_RCA RCA1(A[7:4], B[7:4], Carry1, Sum[7:4], Carry2);
    bit4_RCA RCA2(A[11:8], B[11:8], Carry2, Sum[11:8], Carry3);
    bit4_RCA RCA3(A[15:12], B[15:12], Carry3, Sum[15:12], Carry4);
    bit4_RCA RCA4(A[19:16], B[19:16], Carry4, Sum[19:16], Carry5);
    bit4_RCA RCA5(A[23:20], B[23:20], Carry5, Sum[23:20], Carry6);
    bit4_RCA RCA6(A[27:24], B[27:24], Carry6, Sum[27:24], Carry7);
    bit4_RCA RCA7(A[31:28], B[31:28], Carry7, Sum[31:28], Cout);

    // Cout를 기반으로 추가 비트 설정
    assign Sum[32] = Cout;  // 최종 carry out을 Sum의 추가 비트로 사용
    assign Sum[39:33] = 7'b000_0000;

endmodule
