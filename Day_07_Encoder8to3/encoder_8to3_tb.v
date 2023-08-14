module encoder_8to3_tb();

reg en;
reg [0:7]y;
wire [0:2]d;

encoder_8to3 uut(y,en,d);

initial begin
	y = 8'b00000000;
   en = 1'b1;
   #10 y = 8'b00000001;
   #10 y = 8'b00000010;
   #10 y = 8'b00000100;
   #10 y = 8'b00001000;
   #10 y = 8'b00010000;
   #10 y = 8'b00100000;
   #10 y = 8'b01000000;
   #10 y = 8'b10000000;
end
endmodule

