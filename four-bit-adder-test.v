`include "four-bit-adder.v"
module four_bit_adder_test;
    reg [0:3]x;
    reg [0:3]y;
    reg carry_in;
    wire [0:3]sum;
    wire carry_out;
    wire overflow;
    four_bit_adder adder(x, y, carry_in, sum, carry_out, overflow);

    initial begin
        if (!$value$plusargs("x=%b", x)) begin
            $display("ERROR: please specify +x=<value> to start.");
            $finish;
        end   
        if (!$value$plusargs("y=%b", y)) begin
            $display("ERROR: please specify +y=<value> to start.");
            $finish;
        end
        if (!$value$plusargs("carry_in=%b", carry_in)) begin
            $display("ERROR: please specify +carry_in=<value> to start.");
            $finish;
        end
        
        $display("Expected: %b + %b + %b = %b", x, y, carry_in, {x + y + carry_in});
        #1 // let output propagate
        if ( {carry_out, sum} == x + y + carry_in ) // concatentates carry_out to the left of sun
            $display("PASSED: sum=%b, carry_out=%b", sum, carry_out);
        else    
            $display("FAILED: sum=%b, carry_out=%b", sum, carry_out);
    end

endmodule