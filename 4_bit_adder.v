module four_bit_adder(input [0:3] x, input [0:3] y, input carry_in, output [0:3] sum, output carry_out);
    full_adder add1(x[0], y[0], carry_in, sum[0], carry1);
    full_adder add2(x[1], y[1], carry1, sum[1], carry2);
    full_adder add3(x[2], y[2], carry2, sum[2], carry3);
    full_adder add4(x[3], y[3], carry3, sum[3], carry_out);
endmodule