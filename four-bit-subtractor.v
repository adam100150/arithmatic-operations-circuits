`include "four-bit-adder.v"
module four_bit_subtractor(input [3:0] a, input [3:0] b, output sub_carry_out, output [3:0] result, output sub_overflow);   
    wire [3:0] inv_b = b ^ 4'b1111;
    four_bit_adder adder(a, inv_b, 1'b1, result, sub_carry_out, sub_overflow);
endmodule