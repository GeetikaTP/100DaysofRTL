module halfadder_tb;
reg a,b;
wire sum,carry;

halfadder uut(a,b,sum,carry);

initial begin
a = 0; b = 0;
#10;
b = 0; b = 1;
#10;
a = 1; b = 0;
#10;
b = 1; b = 1;
#10;
end
                
endmodule
