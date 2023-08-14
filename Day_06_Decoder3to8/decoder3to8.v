module decoder_3to8(d,en,y);

input[0:2]d;
input en;
output [0:7]y;
reg [0:7]y;

always @(d or en)
begin
	if (en)
	begin
	y = 8'd0;
    case(d)                  //using switch statement.
		3'b000: y[0]=1'b1;
		3'b001: y[1]=1'b1;
		3'b010: y[2]=1'b1;
		3'b011: y[3]=1'b1;
		3'b100: y[4]=1'b1;
		3'b101: y[5]=1'b1;
		3'b110: y[6]=1'b1;
		3'b111: y[7]=1'b1;
		default: y=8'd0;
		endcase
	end
else
y=8'd0;
end
endmodule


