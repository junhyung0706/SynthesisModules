module 1bit_HA(
    input A, B,
    output Sum,
    output Cout,
);

    assign Sum = A ^ B;
    assign Cout = A & B;
    
endmodule
