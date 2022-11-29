`include "one-bit-adder.v"
module four_bit_adder(input [3:0] x, input [3:0] y, input carry_in, output [3:0] sum, output carry_out, output overflow);
    wire c1, c2, c3;
    one_bit_adder add1(x[0], y[0], carry_in, sum[0], c1);
    one_bit_adder add2(x[1], y[1], c1, sum[1], c2);
    one_bit_adder add3(x[2], y[2], c2, sum[2], c3);
    one_bit_adder add4(x[3], y[3], c3, sum[3], carry_out);
    assign overflow = c3 ^ carry_out;
endmodule