module bit1_FA(
	input A, B,
	input Cin,
	output Sum,
	output Cout
);
	
	wire Sum1, Cout1, Cout2;

	bit1_HA HA1(.A(A), .B(B), .Sum(Sum1), .Cout(Cout1));
	bit1_HA HA2(.A(Sum1), .B(Cin), .Sum(Sum), .Cout(Cout2));

	assign Cout = Cout1 | Cout2;
endmodule
