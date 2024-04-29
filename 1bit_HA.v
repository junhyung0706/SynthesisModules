module 1bit_HA(A, B, Sum, Cout);
    input A, B;
    output Sum;
    output Cout;

    assign Sum = A ^ B;
    assign Cout = A & B;
    
endmodule
