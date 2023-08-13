module dff_sync_tb();
reg d,clk,rst;
wire q;

dff_sync uut(d,clk,rst,q);
initial begin
d=0;clk=0;rst=1;
end
always #5 clk=~clk;

initial begin 
#10 rst=0;
#5 d=1'b1;
#10 d=1'b1;
#20 d=1'b0;
#15 d=1'b0;
#5 d=1'b1;
#10 d=1'b0;
#15 d=1'b1;
 end

 endmodule
 
