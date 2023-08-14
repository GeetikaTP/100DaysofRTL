module decoder_3to8_tb();

reg [0:2]d;
reg en;
wire [0:7]y;
integer i;

decoder_3to8 uut(d,en,y);

initial begin
$monitor("en=%b, d=%d, y=%b",en,d,y);
	for (i=1; i<16; i=i+1)
		begin
			{en,d}=i;
			#2;
		end
	end
endmodule

		
