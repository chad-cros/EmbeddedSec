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
