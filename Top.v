module Top(
    input clk, nRST,
    input [31:0] A,
    input [31:0] B,
    input Sel,
    output [39:0] Result
);

wire [31:0] w1, w2, w3, w4;
wire [39:0] wireA, wireB;
wire [39:0] wireFinal;

  
/*
모듈 인스턴스화는 6가지 경우에 따라 적절하게 불러올 것.
MyModuleA moduleA(
    .A(w1),
    .B(w3),
    .Cin(0),
    .Sum(wireA),
    .Cout()
);

MyModuleB moduleB(
    .A(w2),
    .B(w4),
    .Cin(0),
    .Sum(wireB),
    .Cout()
);

*/

always @(posedge clk or negedge nRST) begin
    if (!nRST) begin
        w1 <= 31'b0;
        w2 <= 31'b0;
        w3 <= 31'b0;
        w4 <= 31'b0;
    end
    else begin
        w1 <= A;
        w2 <= A;
        w3 <= B;
        w4 <= B;
    end
end

//Sel = 1 : 모듈A 선택
//Sel = 0 : 모듈B 선택
assign wireFinal = Sel ? MyModuleA : MyModuleB;

always@(posedge clk or negedge nRST) begin
    if (!nRST) begin
        Result <= 40'b0;
    end
    else begin
        Result <= wireFinal;
    end
end

endmodule
