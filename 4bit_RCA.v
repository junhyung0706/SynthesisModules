module bit4_RCA(
    input [3:0] A, B,
    input Cin,
    output [3:0] Sum,
    output Cout
);

    wire Carry1, Carry2, Carry3;

bit1_FA FA0(.A(A[0]), .B(B[0]), .Cin(Cin), .Sum(Sum[0]), .Cout(Carry1));
bit1_FA FA1(.A(A[1]), .B(B[1]), .Cin(Carry1), .Sum(Sum[1]), .Cout(Carry2));
bit1_FA FA2(.A(A[2]), .B(B[2]), .Cin(Carry2), .Sum(Sum[2]), .Cout(Carry3));
bit1_FA FA3(.A(A[3]), .B(B[3]), .Cin(Carry3), .Sum(Sum[3]), .Cout(Cout));

endmodule
