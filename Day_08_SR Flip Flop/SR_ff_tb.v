module SR_ff_tb();

reg s,r,rst,clk;
wire q,qbar;

SR_ff uut(s,r,q,qbar,rst,clk);

always #2 {s,r}={s,r}+1'b1;
always #1 clk=~clk;

initial
begin
clk=0;s=0;r=0;
end

initial #50 $finish;
endmodule
