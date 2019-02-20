//sboxes.v
//8 s boxes for f block

module sboxes(sout, in);
	input [47:0] in;

	output [31:0] sout;

	
	wire [5:0] in1;
	wire [5:0] in2;
	wire [5:0] in3;
	wire [5:0] in4;
	wire [5:0] in5;
	wire [5:0] in6;
	wire [5:0] in7;
	wire [5:0] in8;
	
	reg [3:0] out1;
	reg [3:0] out2;
	reg [3:0] out3;
	reg [3:0] out4;
	reg [3:0] out5;
	reg [3:0] out6;
	reg [3:0] out7;
	reg [3:0] out8;
	
	assign in1 = in[47:42];
	assign in2 = in[41:36];
	assign in3 = in[35:30];
	assign in4 = in[29:24];
	assign in5 = in[23:18];
	assign in6 = in[17:12];
	assign in7 = in[11:6];
	assign in8 = in[5:0];
	
always @(*) begin
/*
S1 (from NIST)
14 4 13 1 2 15 11 8 3 10 6 12 5 9 0 7
0 15 7 4 14 2 13 1 10 6 12 11 9 5 3 8
4 1 14 8 13 6 2 11 15 12 9 7 3 10 5 0
15 12 8 2 4 9 1 7 5 11 3 14 10 0 6 13 
*/
case (in1)
	6'b000000: begin out1 = 4'he; end
	6'b000010: begin out1 = 4'h4; end
	6'b000100: begin out1 = 4'hd; end
	6'b000110: begin out1 = 4'h1; end
	6'b001000: begin out1 = 4'h2; end
	6'b001010: begin out1 = 4'hf; end
	6'b001100: begin out1 = 4'hb; end
	6'b001110: begin out1 = 4'h8; end
	6'b010000: begin out1 = 4'h3; end
	6'b010010: begin out1 = 4'ha; end
	6'b010100: begin out1 = 4'h6; end
	6'b010110: begin out1 = 4'hc; end
	6'b011000: begin out1 = 4'h5; end
	6'b011010: begin out1 = 4'h9; end
	6'b011100: begin out1 = 4'h0; end
	6'b011110: begin out1 = 4'h7; end
	6'b000001: begin out1 = 4'h0; end
	6'b000011: begin out1 = 4'hf; end
	6'b000101: begin out1 = 4'h7; end
	6'b000111: begin out1 = 4'h4; end
	6'b001001: begin out1 = 4'he; end
	6'b001011: begin out1 = 4'h2; end
	6'b001101: begin out1 = 4'hd; end
	6'b001111: begin out1 = 4'h1; end
	6'b010001: begin out1 = 4'ha; end
	6'b010011: begin out1 = 4'h6; end
	6'b010101: begin out1 = 4'hc; end
	6'b010111: begin out1 = 4'hb; end
	6'b011001: begin out1 = 4'h9; end
	6'b011011: begin out1 = 4'h5; end
	6'b011101: begin out1 = 4'h3; end
	6'b011111: begin out1 = 4'h8; end
	6'b100000: begin out1 = 4'h4; end
	6'b100010: begin out1 = 4'h1; end
	6'b100100: begin out1 = 4'he; end
	6'b100110: begin out1 = 4'h8; end
	6'b101000: begin out1 = 4'hd; end
	6'b101010: begin out1 = 4'h6; end
	6'b101100: begin out1 = 4'h2; end
	6'b101110: begin out1 = 4'hb; end
	6'b110000: begin out1 = 4'hf; end
	6'b110010: begin out1 = 4'hc; end
	6'b110100: begin out1 = 4'h9; end
	6'b110110: begin out1 = 4'h7; end
	6'b111000: begin out1 = 4'h3; end
	6'b111010: begin out1 = 4'ha; end
	6'b111100: begin out1 = 4'h5; end
	6'b111110: begin out1 = 4'h0; end
	6'b100001: begin out1 = 4'hf; end
	6'b100011: begin out1 = 4'hc; end
	6'b100101: begin out1 = 4'h8; end
	6'b100111: begin out1 = 4'h2; end
	6'b101001: begin out1 = 4'h4; end
	6'b101011: begin out1 = 4'h9; end
	6'b101101: begin out1 = 4'h1; end
	6'b101111: begin out1 = 4'h7; end
	6'b110001: begin out1 = 4'h5; end
	6'b110011: begin out1 = 4'hb; end
	6'b110101: begin out1 = 4'h3; end
	6'b110111: begin out1 = 4'he; end
	6'b111001: begin out1 = 4'ha; end
	6'b111011: begin out1 = 4'h0; end
	6'b111101: begin out1 = 4'h6; end
	6'b111111: begin out1 = 4'hd; end
endcase
/*
S2 (from NIST)
15 1 8 14 6 11 3 4 9 7 2 13 12 0 5 10
3 13 4 7 15 2 8 14 12 0 1 10 6 9 11 5
0 14 7 11 10 4 13 1 5 8 12 6 9 3 2 15
13 8 10 1 3 15 4 2 11 6 7 12 0 5 14 9 
*/
case (in2)
	6'b000000: begin out2 = 4'hf; end
	6'b000010: begin out2 = 4'h1; end
	6'b000100: begin out2 = 4'h8; end
	6'b000110: begin out2 = 4'he; end
	6'b001000: begin out2 = 4'h6; end
	6'b001010: begin out2 = 4'hb; end
	6'b001100: begin out2 = 4'h3; end
	6'b001110: begin out2 = 4'h4; end
	6'b010000: begin out2 = 4'h9; end
	6'b010010: begin out2 = 4'h7; end
	6'b010100: begin out2 = 4'h2; end
	6'b010110: begin out2 = 4'hd; end
	6'b011000: begin out2 = 4'hc; end
	6'b011010: begin out2 = 4'h0; end
	6'b011100: begin out2 = 4'h5; end
	6'b011110: begin out2 = 4'ha; end
	6'b000001: begin out2 = 4'h3; end
	6'b000011: begin out2 = 4'hd; end
	6'b000101: begin out2 = 4'h4; end
	6'b000111: begin out2 = 4'h7; end
	6'b001001: begin out2 = 4'hf; end
	6'b001011: begin out2 = 4'h2; end
	6'b001101: begin out2 = 4'h8; end
	6'b001111: begin out2 = 4'he; end
	6'b010001: begin out2 = 4'hc; end
	6'b010011: begin out2 = 4'h0; end
	6'b010101: begin out2 = 4'h1; end
	6'b010111: begin out2 = 4'ha; end
	6'b011001: begin out2 = 4'h6; end
	6'b011011: begin out2 = 4'h9; end
	6'b011101: begin out2 = 4'hb; end
	6'b011111: begin out2 = 4'h5; end
	6'b100000: begin out2 = 4'h0; end
	6'b100010: begin out2 = 4'he; end
	6'b100100: begin out2 = 4'h7; end
	6'b100110: begin out2 = 4'hb; end
	6'b101000: begin out2 = 4'ha; end
	6'b101010: begin out2 = 4'h4; end
	6'b101100: begin out2 = 4'hd; end
	6'b101110: begin out2 = 4'h1; end
	6'b110000: begin out2 = 4'h5; end
	6'b110010: begin out2 = 4'h8; end
	6'b110100: begin out2 = 4'hc; end
	6'b110110: begin out2 = 4'h6; end
	6'b111000: begin out2 = 4'h9; end
	6'b111010: begin out2 = 4'h3; end
	6'b111100: begin out2 = 4'h2; end
	6'b111110: begin out2 = 4'hf; end
	6'b100001: begin out2 = 4'hd; end
	6'b100011: begin out2 = 4'h8; end
	6'b100101: begin out2 = 4'ha; end
	6'b100111: begin out2 = 4'h1; end
	6'b101001: begin out2 = 4'h3; end
	6'b101011: begin out2 = 4'hf; end
	6'b101101: begin out2 = 4'h4; end
	6'b101111: begin out2 = 4'h2; end
	6'b110001: begin out2 = 4'hb; end
	6'b110011: begin out2 = 4'h6; end
	6'b110101: begin out2 = 4'h7; end
	6'b110111: begin out2 = 4'hc; end
	6'b111001: begin out2 = 4'h0; end
	6'b111011: begin out2 = 4'h5; end
	6'b111101: begin out2 = 4'he; end
	6'b111111: begin out2 = 4'h9; end
endcase

/*
S3 (from NIST)
10 0 9 14 6 3 15 5 1 13 12 7 11 4 2 8
13 7 0 9 3 4 6 10 2 8 5 14 12 11 15 1
13 6 4 9 8 15 3 0 11 1 2 12 5 10 14 7
1 10 13 0 6 9 8 7 4 15 14 3 11 5 2 12
*/
case (in3)
	6'b000000: begin out3 = 4'ha; end
	6'b000010: begin out3 = 4'h0; end
	6'b000100: begin out3 = 4'h9; end
	6'b000110: begin out3 = 4'he; end
	6'b001000: begin out3 = 4'h6; end
	6'b001010: begin out3 = 4'h3; end
	6'b001100: begin out3 = 4'hf; end
	6'b001110: begin out3 = 4'h5; end
	6'b010000: begin out3 = 4'h1; end
	6'b010010: begin out3 = 4'hd; end
	6'b010100: begin out3 = 4'hc; end
	6'b010110: begin out3 = 4'h7; end
	6'b011000: begin out3 = 4'hb; end
	6'b011010: begin out3 = 4'h4; end
	6'b011100: begin out3 = 4'h2; end
	6'b011110: begin out3 = 4'h8; end
	6'b000001: begin out3 = 4'hd; end
	6'b000011: begin out3 = 4'h7; end
	6'b000101: begin out3 = 4'h0; end
	6'b000111: begin out3 = 4'h9; end
	6'b001001: begin out3 = 4'h3; end
	6'b001011: begin out3 = 4'h4; end
	6'b001101: begin out3 = 4'h6; end
	6'b001111: begin out3 = 4'ha; end
	6'b010001: begin out3 = 4'h2; end
	6'b010011: begin out3 = 4'h8; end
	6'b010101: begin out3 = 4'h5; end
	6'b010111: begin out3 = 4'he; end
	6'b011001: begin out3 = 4'hc; end
	6'b011011: begin out3 = 4'hb; end
	6'b011101: begin out3 = 4'hf; end
	6'b011111: begin out3 = 4'h1; end
	6'b100000: begin out3 = 4'hd; end
	6'b100010: begin out3 = 4'h6; end
	6'b100100: begin out3 = 4'h4; end
	6'b100110: begin out3 = 4'h9; end
	6'b101000: begin out3 = 4'h8; end
	6'b101010: begin out3 = 4'hf; end
	6'b101100: begin out3 = 4'h3; end
	6'b101110: begin out3 = 4'h0; end
	6'b110000: begin out3 = 4'hb; end
	6'b110010: begin out3 = 4'h1; end
	6'b110100: begin out3 = 4'h2; end
	6'b110110: begin out3 = 4'hc; end
	6'b111000: begin out3 = 4'h5; end
	6'b111010: begin out3 = 4'ha; end
	6'b111100: begin out3 = 4'he; end
	6'b111110: begin out3 = 4'h7; end
	6'b100001: begin out3 = 4'h1; end
	6'b100011: begin out3 = 4'ha; end
	6'b100101: begin out3 = 4'hd; end
	6'b100111: begin out3 = 4'h0; end
	6'b101001: begin out3 = 4'h6; end
	6'b101011: begin out3 = 4'h9; end
	6'b101101: begin out3 = 4'h8; end
	6'b101111: begin out3 = 4'h7; end
	6'b110001: begin out3 = 4'h4; end
	6'b110011: begin out3 = 4'hf; end
	6'b110101: begin out3 = 4'he; end
	6'b110111: begin out3 = 4'h3; end
	6'b111001: begin out3 = 4'hb; end
	6'b111011: begin out3 = 4'h5; end
	6'b111101: begin out3 = 4'h2; end
	6'b111111: begin out3 = 4'hc; end
endcase
/*
S4 (from NIST)
7 13 14 3 0 6 9 10 1 2 8 5 11 12 4 15
13 8 11 5 6 15 0 3 4 7 2 12 1 10 14 9
10 6 9 0 12 11 7 13 15 1 3 14 5 2 8 4
3 15 0 6 10 1 13 8 9 4 5 11 12 7 2 14
*/
case (in4)
	6'b000000: begin out4 = 4'h7; end
	6'b000010: begin out4 = 4'hd; end
	6'b000100: begin out4 = 4'he; end
	6'b000110: begin out4 = 4'h3; end
	6'b001000: begin out4 = 4'h0; end
	6'b001010: begin out4 = 4'h6; end
	6'b001100: begin out4 = 4'h9; end
	6'b001110: begin out4 = 4'ha; end
	6'b010000: begin out4 = 4'h1; end
	6'b010010: begin out4 = 4'h2; end
	6'b010100: begin out4 = 4'h8; end
	6'b010110: begin out4 = 4'h5; end
	6'b011000: begin out4 = 4'hb; end
	6'b011010: begin out4 = 4'hc; end
	6'b011100: begin out4 = 4'h4; end
	6'b011110: begin out4 = 4'hf; end
	6'b000001: begin out4 = 4'hd; end
	6'b000011: begin out4 = 4'h8; end
	6'b000101: begin out4 = 4'hb; end
	6'b000111: begin out4 = 4'h5; end
	6'b001001: begin out4 = 4'h6; end
	6'b001011: begin out4 = 4'hf; end
	6'b001101: begin out4 = 4'h0; end
	6'b001111: begin out4 = 4'h3; end
	6'b010001: begin out4 = 4'h4; end
	6'b010011: begin out4 = 4'h7; end
	6'b010101: begin out4 = 4'h2; end
	6'b010111: begin out4 = 4'hc; end
	6'b011001: begin out4 = 4'h1; end
	6'b011011: begin out4 = 4'ha; end
	6'b011101: begin out4 = 4'he; end
	6'b011111: begin out4 = 4'h9; end
	6'b100000: begin out4 = 4'ha; end
	6'b100010: begin out4 = 4'h6; end
	6'b100100: begin out4 = 4'h9; end
	6'b100110: begin out4 = 4'h0; end
	6'b101000: begin out4 = 4'hc; end
	6'b101010: begin out4 = 4'hb; end
	6'b101100: begin out4 = 4'h7; end
	6'b101110: begin out4 = 4'hd; end
	6'b110000: begin out4 = 4'hf; end
	6'b110010: begin out4 = 4'h1; end
	6'b110100: begin out4 = 4'h3; end
	6'b110110: begin out4 = 4'he; end
	6'b111000: begin out4 = 4'h5; end
	6'b111010: begin out4 = 4'h2; end
	6'b111100: begin out4 = 4'h8; end
	6'b111110: begin out4 = 4'h4; end
	6'b100001: begin out4 = 4'h3; end
	6'b100011: begin out4 = 4'hf; end
	6'b100101: begin out4 = 4'h0; end
	6'b100111: begin out4 = 4'h6; end
	6'b101001: begin out4 = 4'ha; end
	6'b101011: begin out4 = 4'h1; end
	6'b101101: begin out4 = 4'hd; end
	6'b101111: begin out4 = 4'h8; end
	6'b110001: begin out4 = 4'h9; end
	6'b110011: begin out4 = 4'h4; end
	6'b110101: begin out4 = 4'h5; end
	6'b110111: begin out4 = 4'hb; end
	6'b111001: begin out4 = 4'hc; end
	6'b111011: begin out4 = 4'h7; end
	6'b111101: begin out4 = 4'h2; end
	6'b111111: begin out4 = 4'he; end
endcase

/*
S5
2 12 4 1 7 10 11 6 8 5 3 15 13 0 14 9
14 11 2 12 4 7 13 1 5 0 15 10 3 9 8 6
4 2 1 11 10 13 7 8 15 9 12 5 6 3 0 14
11 8 12 7 1 14 2 13 6 15 0 9 10 4 5 3 
*/
case (in5)
	6'b000000: begin out5 = 4'h2; end
	6'b000010: begin out5 = 4'hc; end
	6'b000100: begin out5 = 4'h4; end
	6'b000110: begin out5 = 4'h1; end
	6'b001000: begin out5 = 4'h7; end
	6'b001010: begin out5 = 4'ha; end
	6'b001100: begin out5 = 4'hb; end
	6'b001110: begin out5 = 4'h6; end
	6'b010000: begin out5 = 4'h8; end
	6'b010010: begin out5 = 4'h5; end
	6'b010100: begin out5 = 4'h3; end
	6'b010110: begin out5 = 4'hf; end
	6'b011000: begin out5 = 4'hd; end
	6'b011010: begin out5 = 4'h0; end
	6'b011100: begin out5 = 4'he; end
	6'b011110: begin out5 = 4'h9; end
	6'b000001: begin out5 = 4'he; end
	6'b000011: begin out5 = 4'hb; end
	6'b000101: begin out5 = 4'h2; end
	6'b000111: begin out5 = 4'hc; end
	6'b001001: begin out5 = 4'h4; end
	6'b001011: begin out5 = 4'h7; end
	6'b001101: begin out5 = 4'hd; end
	6'b001111: begin out5 = 4'h1; end
	6'b010001: begin out5 = 4'h5; end
	6'b010011: begin out5 = 4'h0; end
	6'b010101: begin out5 = 4'hf; end
	6'b010111: begin out5 = 4'ha; end
	6'b011001: begin out5 = 4'h3; end
	6'b011011: begin out5 = 4'h9; end
	6'b011101: begin out5 = 4'h8; end
	6'b011111: begin out5 = 4'h6; end
	6'b100000: begin out5 = 4'h4; end
	6'b100010: begin out5 = 4'h2; end
	6'b100100: begin out5 = 4'h1; end
	6'b100110: begin out5 = 4'hb; end
	6'b101000: begin out5 = 4'ha; end
	6'b101010: begin out5 = 4'hd; end
	6'b101100: begin out5 = 4'h7; end
	6'b101110: begin out5 = 4'h8; end
	6'b110000: begin out5 = 4'hf; end
	6'b110010: begin out5 = 4'h9; end
	6'b110100: begin out5 = 4'hc; end
	6'b110110: begin out5 = 4'h5; end
	6'b111000: begin out5 = 4'h6; end
	6'b111010: begin out5 = 4'h3; end
	6'b111100: begin out5 = 4'h0; end
	6'b111110: begin out5 = 4'he; end
	6'b100001: begin out5 = 4'hb; end
	6'b100011: begin out5 = 4'h8; end
	6'b100101: begin out5 = 4'hc; end
	6'b100111: begin out5 = 4'h7; end
	6'b101001: begin out5 = 4'h1; end
	6'b101011: begin out5 = 4'he; end
	6'b101101: begin out5 = 4'h2; end
	6'b101111: begin out5 = 4'hd; end
	6'b110001: begin out5 = 4'h6; end
	6'b110011: begin out5 = 4'hf; end
	6'b110101: begin out5 = 4'h0; end
	6'b110111: begin out5 = 4'h9; end
	6'b111001: begin out5 = 4'ha; end
	6'b111011: begin out5 = 4'h4; end
	6'b111101: begin out5 = 4'h5; end
	6'b111111: begin out5 = 4'h3; end
endcase

/*
S6 (from NIST)
12 1 10 15 9 2 6 8 0 13 3 4 14 7 5 11
10 15 4 2 7 12 9 5 6 1 13 14 0 11 3 8
9 14 15 5 2 8 12 3 7 0 4 10 1 13 11 6
4 3 2 12 9 5 15 10 11 14 1 7 6 0 8 13 
*/
case (in6)
	6'b000000: begin out6 = 4'hc; end
	6'b000010: begin out6 = 4'h1; end
	6'b000100: begin out6 = 4'ha; end
	6'b000110: begin out6 = 4'hf; end
	6'b001000: begin out6 = 4'h9; end
	6'b001010: begin out6 = 4'h2; end
	6'b001100: begin out6 = 4'h6; end
	6'b001110: begin out6 = 4'h8; end
	6'b010000: begin out6 = 4'h0; end
	6'b010010: begin out6 = 4'hd; end
	6'b010100: begin out6 = 4'h3; end
	6'b010110: begin out6 = 4'h4; end
	6'b011000: begin out6 = 4'he; end
	6'b011010: begin out6 = 4'h7; end
	6'b011100: begin out6 = 4'h5; end
	6'b011110: begin out6 = 4'hb; end
	6'b000001: begin out6 = 4'ha; end
	6'b000011: begin out6 = 4'hf; end
	6'b000101: begin out6 = 4'h4; end
	6'b000111: begin out6 = 4'h2; end
	6'b001001: begin out6 = 4'h7; end
	6'b001011: begin out6 = 4'hc; end
	6'b001101: begin out6 = 4'h9; end
	6'b001111: begin out6 = 4'h5; end
	6'b010001: begin out6 = 4'h6; end
	6'b010011: begin out6 = 4'h1; end
	6'b010101: begin out6 = 4'hd; end
	6'b010111: begin out6 = 4'he; end
	6'b011001: begin out6 = 4'h0; end
	6'b011011: begin out6 = 4'hb; end
	6'b011101: begin out6 = 4'h3; end
	6'b011111: begin out6 = 4'h8; end
	6'b100000: begin out6 = 4'h9; end
	6'b100010: begin out6 = 4'he; end
	6'b100100: begin out6 = 4'hf; end
	6'b100110: begin out6 = 4'h5; end
	6'b101000: begin out6 = 4'h2; end
	6'b101010: begin out6 = 4'h8; end
	6'b101100: begin out6 = 4'hc; end
	6'b101110: begin out6 = 4'h3; end
	6'b110000: begin out6 = 4'h7; end
	6'b110010: begin out6 = 4'h0; end
	6'b110100: begin out6 = 4'h4; end
	6'b110110: begin out6 = 4'ha; end
	6'b111000: begin out6 = 4'h1; end
	6'b111010: begin out6 = 4'hd; end
	6'b111100: begin out6 = 4'hb; end
	6'b111110: begin out6 = 4'h6; end
	6'b100001: begin out6 = 4'h4; end
	6'b100011: begin out6 = 4'h3; end
	6'b100101: begin out6 = 4'h2; end
	6'b100111: begin out6 = 4'hc; end
	6'b101001: begin out6 = 4'h9; end
	6'b101011: begin out6 = 4'h5; end
	6'b101101: begin out6 = 4'hf; end
	6'b101111: begin out6 = 4'ha; end
	6'b110001: begin out6 = 4'hb; end
	6'b110011: begin out6 = 4'he; end
	6'b110101: begin out6 = 4'h1; end
	6'b110111: begin out6 = 4'h7; end
	6'b111001: begin out6 = 4'h6; end
	6'b111011: begin out6 = 4'h0; end
	6'b111101: begin out6 = 4'h8; end
	6'b111111: begin out6 = 4'hd; end
endcase

/*
S7 (from NIST)
4 11 2 14 15 0 8 13 3 12 9 7 5 10 6 1
13 0 11 7 4 9 1 10 14 3 5 12 2 15 8 6
1 4 11 13 12 3 7 14 10 15 6 8 0 5 9 2
6 11 13 8 1 4 10 7 9 5 0 15 14 2 3 12 
*/
case (in7)
	6'b000000: begin out7 = 4'h4; end
	6'b000010: begin out7 = 4'hb; end
	6'b000100: begin out7 = 4'h2; end
	6'b000110: begin out7 = 4'he; end
	6'b001000: begin out7 = 4'hf; end
	6'b001010: begin out7 = 4'h0; end
	6'b001100: begin out7 = 4'h8; end
	6'b001110: begin out7 = 4'hd; end
	6'b010000: begin out7 = 4'h3; end
	6'b010010: begin out7 = 4'hc; end
	6'b010100: begin out7 = 4'h9; end
	6'b010110: begin out7 = 4'h7; end
	6'b011000: begin out7 = 4'h5; end
	6'b011010: begin out7 = 4'ha; end
	6'b011100: begin out7 = 4'h6; end
	6'b011110: begin out7 = 4'h1; end
	6'b000001: begin out7 = 4'hd; end
	6'b000011: begin out7 = 4'h0; end
	6'b000101: begin out7 = 4'hb; end
	6'b000111: begin out7 = 4'h7; end
	6'b001001: begin out7 = 4'h4; end
	6'b001011: begin out7 = 4'h9; end
	6'b001101: begin out7 = 4'h1; end
	6'b001111: begin out7 = 4'ha; end
	6'b010001: begin out7 = 4'he; end
	6'b010011: begin out7 = 4'h3; end
	6'b010101: begin out7 = 4'h5; end
	6'b010111: begin out7 = 4'hc; end
	6'b011001: begin out7 = 4'h2; end
	6'b011011: begin out7 = 4'hf; end
	6'b011101: begin out7 = 4'h8; end
	6'b011111: begin out7 = 4'h6; end
	6'b100000: begin out7 = 4'h1; end
	6'b100010: begin out7 = 4'h4; end
	6'b100100: begin out7 = 4'hb; end
	6'b100110: begin out7 = 4'hd; end
	6'b101000: begin out7 = 4'hc; end
	6'b101010: begin out7 = 4'h3; end
	6'b101100: begin out7 = 4'h7; end
	6'b101110: begin out7 = 4'he; end
	6'b110000: begin out7 = 4'ha; end
	6'b110010: begin out7 = 4'hf; end
	6'b110100: begin out7 = 4'h6; end
	6'b110110: begin out7 = 4'h8; end
	6'b111000: begin out7 = 4'h0; end
	6'b111010: begin out7 = 4'h5; end
	6'b111100: begin out7 = 4'h9; end
	6'b111110: begin out7 = 4'h2; end
	6'b100001: begin out7 = 4'h6; end
	6'b100011: begin out7 = 4'hb; end
	6'b100101: begin out7 = 4'hd; end
	6'b100111: begin out7 = 4'h8; end
	6'b101001: begin out7 = 4'h1; end
	6'b101011: begin out7 = 4'h4; end
	6'b101101: begin out7 = 4'ha; end
	6'b101111: begin out7 = 4'h7; end
	6'b110001: begin out7 = 4'h9; end
	6'b110011: begin out7 = 4'h5; end
	6'b110101: begin out7 = 4'h0; end
	6'b110111: begin out7 = 4'hf; end
	6'b111001: begin out7 = 4'he; end
	6'b111011: begin out7 = 4'h2; end
	6'b111101: begin out7 = 4'h3; end
	6'b111111: begin out7 = 4'hc; end
endcase

/*
S8
13 2 8 4 6 15 11 1 10 9 3 14 5 0 12 7
1 15 13 8 10 3 7 4 12 5 6 11 0 14 9 2
7 11 4 1 9 12 14 2 0 6 10 13 15 3 5 8
2 1 14 7 4 10 8 13 15 12 9 0 3 5 6 11 
*/
case (in8)
	6'b000000: begin out8 = 4'hd; end
	6'b000010: begin out8 = 4'h2; end
	6'b000100: begin out8 = 4'h8; end
	6'b000110: begin out8 = 4'h4; end
	6'b001000: begin out8 = 4'h6; end
	6'b001010: begin out8 = 4'hf; end
	6'b001100: begin out8 = 4'hb; end
	6'b001110: begin out8 = 4'h1; end
	6'b010000: begin out8 = 4'ha; end
	6'b010010: begin out8 = 4'h9; end
	6'b010100: begin out8 = 4'h3; end
	6'b010110: begin out8 = 4'he; end
	6'b011000: begin out8 = 4'h5; end
	6'b011010: begin out8 = 4'h0; end
	6'b011100: begin out8 = 4'hc; end
	6'b011110: begin out8 = 4'h7; end
	6'b000001: begin out8 = 4'h1; end
	6'b000011: begin out8 = 4'hf; end
	6'b000101: begin out8 = 4'hd; end
	6'b000111: begin out8 = 4'h8; end
	6'b001001: begin out8 = 4'ha; end
	6'b001011: begin out8 = 4'h3; end
	6'b001101: begin out8 = 4'h7; end
	6'b001111: begin out8 = 4'h4; end
	6'b010001: begin out8 = 4'hc; end
	6'b010011: begin out8 = 4'h5; end
	6'b010101: begin out8 = 4'h6; end
	6'b010111: begin out8 = 4'hb; end
	6'b011001: begin out8 = 4'h0; end
	6'b011011: begin out8 = 4'he; end
	6'b011101: begin out8 = 4'h9; end
	6'b011111: begin out8 = 4'h2; end
	6'b100000: begin out8 = 4'h7; end
	6'b100010: begin out8 = 4'hb; end
	6'b100100: begin out8 = 4'h4; end
	6'b100110: begin out8 = 4'h1; end
	6'b101000: begin out8 = 4'h9; end
	6'b101010: begin out8 = 4'hc; end
	6'b101100: begin out8 = 4'he; end
	6'b101110: begin out8 = 4'h2; end
	6'b110000: begin out8 = 4'h0; end
	6'b110010: begin out8 = 4'h6; end
	6'b110100: begin out8 = 4'ha; end
	6'b110110: begin out8 = 4'hd; end
	6'b111000: begin out8 = 4'hf; end
	6'b111010: begin out8 = 4'h3; end
	6'b111100: begin out8 = 4'h5; end
	6'b111110: begin out8 = 4'h8; end
	6'b100001: begin out8 = 4'h2; end
	6'b100011: begin out8 = 4'h1; end
	6'b100101: begin out8 = 4'he; end
	6'b100111: begin out8 = 4'h7; end
	6'b101001: begin out8 = 4'h4; end
	6'b101011: begin out8 = 4'ha; end
	6'b101101: begin out8 = 4'h8; end
	6'b101111: begin out8 = 4'hd; end
	6'b110001: begin out8 = 4'hf; end
	6'b110011: begin out8 = 4'hc; end
	6'b110101: begin out8 = 4'h9; end
	6'b110111: begin out8 = 4'h0; end
	6'b111001: begin out8 = 4'h3; end
	6'b111011: begin out8 = 4'h5; end
	6'b111101: begin out8 = 4'h6; end
	6'b111111: begin out8 = 4'hb; end
endcase



end
assign sout = {out1, out2, out3, out4, out5, out6, out7, out8};
endmodule
