module adder4bit_tb();

reg [3:0]a,b;
reg cin;
wire [3:0] sum;
wire cout;

adder4bit uut(a,b,cin,sum,cout);

initial begin
cin=0;
a=4'b0110; b=4'b1100;
#10;
a=4'b1110; b=4'b1000;
#10;
a=4'b0111; b=4'b1110;
#10;
a=4'b0010; b=4'b1001;
#10;
end
endmodule
