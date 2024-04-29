module 1bit_FA(A, B, C_in, result, C_out);
	input A,B,C_in;
	output wire result, C_out;

	assign result = (~A&~B&C_in) | (~A&B&~C_in) | (A&B&C_in) | (A&~B&~C_in); 
	assign C_out = (A&B) | (B&C_in) | (A&C_in);

endmodule
