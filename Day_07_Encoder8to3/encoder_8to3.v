module encoder_8to3(y,en,d);

input [0:7]y;
input en;
output [0:2]d;
reg [0:2]d;



always @(y or en)
begin
	if (en)
	begin
	d = 3'd0;
	case(y)
		8'b0000_0001: d=3'd0;
		8'b0000_0010: d=3'd1;
		8'b0000_0100: d=3'd2;
		8'b0000_1000: d=3'd3;
		8'b0001_0000: d=3'd4;
		8'b0010_0000: d=3'd5;
		8'b0100_0000: d=3'd6;
		8'b1000_0000: d=3'd7;
		default: d=3'd0;
		endcase
	end
else
d=3'd0;
end
endmodule

	
