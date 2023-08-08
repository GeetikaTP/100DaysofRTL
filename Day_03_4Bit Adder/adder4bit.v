module adder4bit(a,b,cin,sum,cout);

input[3:0] a,b;
input cin;
output[3:0] sum;
output cout;
wire [1:3] c;
//Instantiate four full adder as four instance of full adder.

fulladder FA0(a[0],b[0],cin,sum[0],c[1]);
fulladder FA1(a[1],b[1],c[1],sum[1],c[2]);
fulladder FA2(a[2],b[2],c[2],sum[2],c[3]);
fulladder FA3(a[3],b[3],c[3],sum[3],cout);
endmodule
