four-bit-adder-tests:
	iverilog -o four-bit-adder-test.out four-bit-adder-test.v
	vvp four-bit-adder-test.out +x=1000 +y=0110 +carry_in=0
	@echo "---------------------------------------------"
	vvp four-bit-adder-test.out +x=1000 +y=0110 +carry_in=1
	@echo "---------------------------------------------"
	vvp four-bit-adder-test.out +x=1000 +y=0111 +carry_in=1
	@echo "---------------------------------------------"
	vvp four-bit-adder-test.out +x=1000 +y=0001 +carry_in=1

clean:
	rm *.out

help:
	@echo "make four-bit-adder-tests  --  Test Four Bit Adder"