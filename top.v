module top(
    input [7:0]sw,
    output [5:0]led);
    
    wire string;
    
    light a_inst(
        .downstairs(sw[0]),
        .upstairs(sw[1]),
        .stair_light(led[0])
       );
       
    adder b_inst(
        .A(sw[2]),
        .B(sw[3]),
        .sum(led[1]),
        .Cout(led[2])
       );
       
    full_adder c_inst(
        .A(sw[4]),
        .B(sw[6]),
        .Cin(1'b0),
        .Cout(string),
        .sum(led[3])

 );
 
    full_adder d_inst(
        .A(sw[5]),
        .B(sw[7]),
        .Cin(string), 
        .sum(led[4]),
        .Cout(led[5])
        
);                       
endmodule
        