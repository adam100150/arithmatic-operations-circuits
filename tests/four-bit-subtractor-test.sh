iverilog -o four-bit-subtractor-test.out four-bit-subtractor-test.v
vvp four-bit-subtractor-test.out +a=0011 +b=0001
echo "---------------------------------------------"
vvp four-bit-subtractor-test.out +a=1010 +b=0001
echo "---------------------------------------------"
vvp four-bit-subtractor-test.out +a=1000 +b=0011
echo "---------------------------------------------"
vvp four-bit-subtractor-test.out +a=1000 +b=0111
rm four-bit-subtractor-test.out