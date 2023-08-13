module mux4to1_tb();

reg a,b,c,d,s0,s1;
wire out;

mux4to1 uut(a,b,c,d,s0,s1,out);

initial begin 
a=1'b0; b=1'b0; c=1'b0; d=1'b0;
s0=1'b0; s1=1'b0;
#10;
end

always #10 a=~a;
always #20 b=~b;
always #80 c=~c;
always #5 d=~d;
always #80 s0=~s0;
always #160 s1=~s1;

always @(a or b or c or d or s0 or s1)
$monitor ("At time = %t, Output = %d", $time,out);
endmodule
