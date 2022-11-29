`include "one-bit-adder.v"
module one_bit_adder_test;
    reg a;
    reg b;
    reg cin;
    wire s;
    wire cout;
    one_bit_adder add1(a, b, cin, s, cout);

    initial begin
        if (!$value$plusargs("a=%b", a)) begin
            $display("ERROR: please specify +a=<value> to start.");
            $finish;
        end   
        if (!$value$plusargs("b=%b", b)) begin
            $display("ERROR: please specify +b=<value> to start.");
            $finish;
        end
        if (!$value$plusargs("cin=%b", cin)) begin
            $display("ERROR: please specify +cin=<value> to start.");
            $finish;
        end

        $display("Expected: %b + %b + %b = %b", a, b, cin, {a + b + cin});
        #1 // let output propagate
        if ( {cout, s} == a + b + cin )
            $display("PASSED: sum=%b, carry_out=%b", s, cout);
        else
            $display("FAILED: sum=%b, carry_out=%b", s, cout);
    end
endmodule