module SR_ff(s,r,q,qbar,rst,clk);

input s,r,rst,clk;
output qbar;
output reg q;

always @(posedge clk)
begin
	if(!rst) q<=0;
	else begin
	case({s,r})
		2'b00: q <=q;     //no change
		2'b01: q <=1'b0; //reset
		2'b10: q <=1'b1; //set
		2'b11: q <=1'bx; //invalid inputs
		endcase
	end
end
assign qbar = ~q;
endmodule
	
