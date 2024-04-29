module 1bit_FA(A, B, C_in, Sum, C_out);
	input A, B, C_in;
	output Sum, C_out;

	assign Sum = (~A & ~B & C_in) | (~A & B & ~C_in) | (A & B & C_in) | (A & ~B & ~C_in); 
	assign C_out = (A & B) | (B & C_in) | (A & C_in);

endmodule
