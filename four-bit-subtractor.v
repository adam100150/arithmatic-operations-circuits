`include "one-bit-adder.v"
module four_bit_subractor(input [0:3] a, input [0:3] b, output sub_carry_out, output [0:3] sub_out);   
    assign inv_b = b ^ 4'b1111;
    full_adder add1(a, inv_b, 1'b1, sub_carry_out, sub_out);
endmodule