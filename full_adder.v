module full_adder(
    input A,
    input B,
    input Cin,
    output sum,
    output Cout
);

assign sum = A^B^Cin;

assign Cout = (B&Cin)|(A&Cin)|(A&B);




endmodule
