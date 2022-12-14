`include "four-bit-subtractor.v"
module four_bit_subtractor_test;
    reg [3:0]a;
    reg [3:0]b;
    wire [3:0] result;
    wire sub_carry_out;
    wire sub_overflow;
    four_bit_subtractor subtactor(a, b, sub_carry_out, result, sub_overflow);

    initial begin
        if (!$value$plusargs("a=%b", a)) begin
            $display("ERROR: please specify +a=<value> to start.");
            $finish;
        end   
        if (!$value$plusargs("b=%b", b)) begin
            $display("ERROR: please specify +b=<value> to start.");
            $finish;
        end
        
        $display("Expected: %b - %b = %b", a, b, {a - b});
        #1 // let output propagate
        if ( result == a - b ) // concatentates carry_out to the left of sub_out
            $display("PASSED: result=%b, carry out=%b", result, sub_carry_out);
        else    
            $display("FAILED: result=%b, carry_out=%b", result, sub_carry_out);
    end

endmodule