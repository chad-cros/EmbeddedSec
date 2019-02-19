//sboxes.v
//8 s boxes for f block

module sboxes(out, in);
	input [47:0] in;
	output [31:0] out;
		
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
	
always @(in) begin
//Sbox 1-------------------------------------------------
casex (in1)
6'b0xxxx0: begin
    casex (in1)
    6'bx0000x: begin out1 = 4'he; end
    6'bx0001x: begin out1 = 4'h4; end
    6'bx0010x: begin out1 = 4'hd; end
    6'bx0011x: begin out1 = 4'h1; end
    6'bx0100x: begin out1 = 4'h2; end
    6'bx0101x: begin out1 = 4'hf; end
    6'bx0110x: begin out1 = 4'hb; end
    6'bx0111x: begin out1 = 4'h8; end
    6'bx1000x: begin out1 = 4'h3; end
    6'bx1001x: begin out1 = 4'ha; end
    6'bx1010x: begin out1 = 4'h6; end
    6'bx1011x: begin out1 = 4'hc; end
    6'bx1100x: begin out1 = 4'h5; end
    6'bx1101x: begin out1 = 4'h9; end
    6'bx1110x: begin out1 = 4'h0; end
    6'bx1111x: begin out1 = 4'h7; end
    endcase
end
6'b0xxxx1: begin
    casex (in1)
    6'bx0000x: begin out1 = 4'h0; end
    6'bx0001x: begin out1 = 4'hf; end
    6'bx0010x: begin out1 = 4'h7; end
    6'bx0011x: begin out1 = 4'h4; end
    6'bx0100x: begin out1 = 4'he; end
    6'bx0101x: begin out1 = 4'h2; end
    6'bx0110x: begin out1 = 4'hd; end
    6'bx0111x: begin out1 = 4'h1; end
    6'bx1000x: begin out1 = 4'ha; end
    6'bx1001x: begin out1 = 4'h6; end
    6'bx1010x: begin out1 = 4'hc; end
    6'bx1011x: begin out1 = 4'hb; end
    6'bx1100x: begin out1 = 4'h9; end
    6'bx1101x: begin out1 = 4'h5; end
    6'bx1110x: begin out1 = 4'h3; end
    6'bx1111x: begin out1 = 4'h8; end
    endcase
end
6'b1xxxx0: begin
    casex (in1)
    6'bx0000x: begin out1 = 4'h4; end
    6'bx0001x: begin out1 = 4'h1; end
    6'bx0010x: begin out1 = 4'he; end
    6'bx0011x: begin out1 = 4'h8; end
    6'bx0100x: begin out1 = 4'hd; end
    6'bx0101x: begin out1 = 4'h6; end
    6'bx0110x: begin out1 = 4'h2; end
    6'bx0111x: begin out1 = 4'hb; end
    6'bx1000x: begin out1 = 4'hf; end
    6'bx1001x: begin out1 = 4'hc; end
    6'bx1010x: begin out1 = 4'h9; end
    6'bx1011x: begin out1 = 4'h7; end
    6'bx1100x: begin out1 = 4'h3; end
    6'bx1101x: begin out1 = 4'ha; end
    6'bx1110x: begin out1 = 4'h5; end
    6'bx1111x: begin out1 = 4'h0; end
    endcase
end
6'b1xxxx1: begin
    casex (in1)
    6'bx0000x: begin out1 = 4'hf; end
    6'bx0001x: begin out1 = 4'hc; end
    6'bx0010x: begin out1 = 4'h8; end
    6'bx0011x: begin out1 = 4'h2; end
    6'bx0100x: begin out1 = 4'h4; end
    6'bx0101x: begin out1 = 4'h9; end
    6'bx0110x: begin out1 = 4'h1; end
    6'bx0111x: begin out1 = 4'h7; end
    6'bx1000x: begin out1 = 4'h5; end
    6'bx1001x: begin out1 = 4'hb; end
    6'bx1010x: begin out1 = 4'h3; end
    6'bx1011x: begin out1 = 4'he; end
    6'bx1100x: begin out1 = 4'ha; end
    6'bx1101x: begin out1 = 4'h0; end
    6'bx1110x: begin out1 = 4'h6; end
    6'bx1111x: begin out1 = 4'hd; end
    endcase
end
endcase
//Sbox 2-------------------------------------------------------------------------------------------------
casex (in2)
6'b0xxxx0: begin
	casex (in2)
	6'bx0000x: begin out2 = 4'hf; end
	6'bx0001x: begin out2 = 4'h1; end
	6'bx0010x: begin out2 = 4'h8; end
	6'bx0011x: begin out2 = 4'he; end
	6'bx0100x: begin out2 = 4'h6; end
	6'bx0101x: begin out2 = 4'hb; end
	6'bx0110x: begin out2 = 4'h3; end
	6'bx0111x: begin out2 = 4'h4; end
	6'bx1000x: begin out2 = 4'h9; end
	6'bx1001x: begin out2 = 4'h7; end
	6'bx1010x: begin out2 = 4'h2; end
	6'bx1011x: begin out2 = 4'hd; end
	6'bx1100x: begin out2 = 4'hc; end
	6'bx1101x: begin out2 = 4'h0; end
	6'bx1110x: begin out2 = 4'h5; end
	6'bx1111x: begin out2 = 4'ha; end
	endcase
end
6'b0xxxx1: begin
	casex (in2)
	6'bx0000x: begin out2 = 4'h3; end
	6'bx0001x: begin out2 = 4'hd; end
	6'bx0010x: begin out2 = 4'h4; end
	6'bx0011x: begin out2 = 4'h7; end
	6'bx0100x: begin out2 = 4'hf; end
	6'bx0101x: begin out2 = 4'h2; end
	6'bx0110x: begin out2 = 4'h8; end
	6'bx0111x: begin out2 = 4'he; end
	6'bx1000x: begin out2 = 4'hc; end
	6'bx1001x: begin out2 = 4'h0; end
	6'bx1010x: begin out2 = 4'h1; end
	6'bx1011x: begin out2 = 4'ha; end
	6'bx1100x: begin out2 = 4'h6; end
	6'bx1101x: begin out2 = 4'h9; end
	6'bx1110x: begin out2 = 4'hb; end
	6'bx1111x: begin out2 = 4'h5; end
	endcase
end
6'b1xxxx0: begin
	casex (in2)
	6'bx0000x: begin out2 = 4'h0; end
	6'bx0001x: begin out2 = 4'he; end
	6'bx0010x: begin out2 = 4'h7; end
	6'bx0011x: begin out2 = 4'hb; end
	6'bx0100x: begin out2 = 4'ha; end
	6'bx0101x: begin out2 = 4'h4; end
	6'bx0110x: begin out2 = 4'hd; end
	6'bx0111x: begin out2 = 4'h1; end
	6'bx1000x: begin out2 = 4'h5; end
	6'bx1001x: begin out2 = 4'h8; end
	6'bx1010x: begin out2 = 4'hc; end
	6'bx1011x: begin out2 = 4'h6; end
	6'bx1100x: begin out2 = 4'h9; end
	6'bx1101x: begin out2 = 4'h3; end
	6'bx1110x: begin out2 = 4'h2; end
	6'bx1111x: begin out2 = 4'hf; end
	endcase
end
6'b1xxxx1: begin
	casex (in2)
	6'bx0000x: begin out2 = 4'hd; end
	6'bx0001x: begin out2 = 4'h8; end
	6'bx0010x: begin out2 = 4'ha; end
	6'bx0011x: begin out2 = 4'h1; end
	6'bx0100x: begin out2 = 4'h3; end
	6'bx0101x: begin out2 = 4'hf; end
	6'bx0110x: begin out2 = 4'h4; end
	6'bx0111x: begin out2 = 4'h2; end
	6'bx1000x: begin out2 = 4'hb; end
	6'bx1001x: begin out2 = 4'h6; end
	6'bx1010x: begin out2 = 4'h7; end
	6'bx1011x: begin out2 = 4'hc; end
	6'bx1100x: begin out2 = 4'h0; end
	6'bx1101x: begin out2 = 4'h5; end
	6'bx1110x: begin out2 = 4'he; end
	6'bx1111x: begin out2 = 4'h9; end
	endcase
end
endcase
//Sbox 3-------------------------------------------------------------------------------------------------
casex (in3)
6'b0xxxx0: begin
	casex (in3)
	6'bx0000x: begin out3 = 4'ha; end
	6'bx0001x: begin out3 = 4'h0; end
	6'bx0010x: begin out3 = 4'h9; end
	6'bx0011x: begin out3 = 4'he; end
	6'bx0100x: begin out3 = 4'h6; end
	6'bx0101x: begin out3 = 4'h3; end
	6'bx0110x: begin out3 = 4'hf; end
	6'bx0111x: begin out3 = 4'h5; end
	6'bx1000x: begin out3 = 4'h1; end
	6'bx1001x: begin out3 = 4'hd; end
	6'bx1010x: begin out3 = 4'hc; end
	6'bx1011x: begin out3 = 4'h7; end
	6'bx1100x: begin out3 = 4'hb; end
	6'bx1101x: begin out3 = 4'h4; end
	6'bx1110x: begin out3 = 4'h2; end
	6'bx1111x: begin out3 = 4'h8; end
	endcase
end
6'b0xxxx1: begin
	casex (in3)
	6'bx0000x: begin out3 = 4'hd; end
	6'bx0001x: begin out3 = 4'h7; end
	6'bx0010x: begin out3 = 4'h0; end
	6'bx0011x: begin out3 = 4'h9; end
	6'bx0100x: begin out3 = 4'h3; end
	6'bx0101x: begin out3 = 4'h4; end
	6'bx0110x: begin out3 = 4'h6; end
	6'bx0111x: begin out3 = 4'ha; end
	6'bx1000x: begin out3 = 4'h2; end
	6'bx1001x: begin out3 = 4'h8; end
	6'bx1010x: begin out3 = 4'h5; end
	6'bx1011x: begin out3 = 4'he; end
	6'bx1100x: begin out3 = 4'hc; end
	6'bx1101x: begin out3 = 4'hb; end
	6'bx1110x: begin out3 = 4'hf; end
	6'bx1111x: begin out3 = 4'h1; end
	endcase
end
6'b1xxxx0: begin
	casex (in3)
	6'bx0000x: begin out3 = 4'hd; end
	6'bx0001x: begin out3 = 4'h6; end
	6'bx0010x: begin out3 = 4'h4; end
	6'bx0011x: begin out3 = 4'h9; end
	6'bx0100x: begin out3 = 4'h8; end
	6'bx0101x: begin out3 = 4'hf; end
	6'bx0110x: begin out3 = 4'h3; end
	6'bx0111x: begin out3 = 4'h0; end
	6'bx1000x: begin out3 = 4'hb; end
	6'bx1001x: begin out3 = 4'h1; end
	6'bx1010x: begin out3 = 4'h2; end
	6'bx1011x: begin out3 = 4'hc; end
	6'bx1100x: begin out3 = 4'h5; end
	6'bx1101x: begin out3 = 4'ha; end
	6'bx1110x: begin out3 = 4'he; end
	6'bx1111x: begin out3 = 4'h7; end
	endcase
end
6'b1xxxx1: begin
	casex (in3)
	6'bx0000x: begin out3 = 4'h1; end
	6'bx0001x: begin out3 = 4'ha; end
	6'bx0010x: begin out3 = 4'hd; end
	6'bx0011x: begin out3 = 4'h0; end
	6'bx0100x: begin out3 = 4'h6; end
	6'bx0101x: begin out3 = 4'h9; end
	6'bx0110x: begin out3 = 4'h8; end
	6'bx0111x: begin out3 = 4'h7; end
	6'bx1000x: begin out3 = 4'h4; end
	6'bx1001x: begin out3 = 4'hf; end
	6'bx1010x: begin out3 = 4'he; end
	6'bx1011x: begin out3 = 4'h3; end
	6'bx1100x: begin out3 = 4'hb; end
	6'bx1101x: begin out3 = 4'h5; end
	6'bx1110x: begin out3 = 4'h2; end
	6'bx1111x: begin out3 = 4'hc; end
	endcase
end
endcase
//Sbox 4-------------------------------------------------------------------------------------------------
casex (in4)
6'b0xxxx0: begin
	casex (in4)
	6'bx0000x: begin out4 = 4'h7; end
	6'bx0001x: begin out4 = 4'hd; end
	6'bx0010x: begin out4 = 4'he; end
	6'bx0011x: begin out4 = 4'h3; end
	6'bx0100x: begin out4 = 4'h0; end
	6'bx0101x: begin out4 = 4'h6; end
	6'bx0110x: begin out4 = 4'h9; end
	6'bx0111x: begin out4 = 4'ha; end
	6'bx1000x: begin out4 = 4'h1; end
	6'bx1001x: begin out4 = 4'h2; end
	6'bx1010x: begin out4 = 4'h8; end
	6'bx1011x: begin out4 = 4'h5; end
	6'bx1100x: begin out4 = 4'hb; end
	6'bx1101x: begin out4 = 4'hc; end
	6'bx1110x: begin out4 = 4'h4; end
	6'bx1111x: begin out4 = 4'hf; end
	endcase
end
6'b0xxxx1: begin
	casex (in4)
	6'bx0000x: begin out4 = 4'hd; end
	6'bx0001x: begin out4 = 4'h8; end
	6'bx0010x: begin out4 = 4'hb; end
	6'bx0011x: begin out4 = 4'h5; end
	6'bx0100x: begin out4 = 4'h6; end
	6'bx0101x: begin out4 = 4'hf; end
	6'bx0110x: begin out4 = 4'h0; end
	6'bx0111x: begin out4 = 4'h3; end
	6'bx1000x: begin out4 = 4'h4; end
	6'bx1001x: begin out4 = 4'h7; end
	6'bx1010x: begin out4 = 4'h2; end
	6'bx1011x: begin out4 = 4'hc; end
	6'bx1100x: begin out4 = 4'h1; end
	6'bx1101x: begin out4 = 4'ha; end
	6'bx1110x: begin out4 = 4'he; end
	6'bx1111x: begin out4 = 4'h9; end
	endcase
end
6'b1xxxx0: begin
	casex (in4)
	6'bx0000x: begin out4 = 4'ha; end
	6'bx0001x: begin out4 = 4'h6; end
	6'bx0010x: begin out4 = 4'h9; end
	6'bx0011x: begin out4 = 4'h0; end
	6'bx0100x: begin out4 = 4'hc; end
	6'bx0101x: begin out4 = 4'hb; end
	6'bx0110x: begin out4 = 4'h7; end
	6'bx0111x: begin out4 = 4'hd; end
	6'bx1000x: begin out4 = 4'hf; end
	6'bx1001x: begin out4 = 4'h1; end
	6'bx1010x: begin out4 = 4'h3; end
	6'bx1011x: begin out4 = 4'he; end
	6'bx1100x: begin out4 = 4'h5; end
	6'bx1101x: begin out4 = 4'h2; end
	6'bx1110x: begin out4 = 4'h8; end
	6'bx1111x: begin out4 = 4'h4; end
	endcase
end
6'b1xxxx1: begin
	casex (in4)
	6'bx0000x: begin out4 = 4'h3; end
	6'bx0001x: begin out4 = 4'hf; end
	6'bx0010x: begin out4 = 4'h0; end
	6'bx0011x: begin out4 = 4'h6; end
	6'bx0100x: begin out4 = 4'ha; end
	6'bx0101x: begin out4 = 4'h1; end
	6'bx0110x: begin out4 = 4'hd; end
	6'bx0111x: begin out4 = 4'h8; end
	6'bx1000x: begin out4 = 4'h9; end
	6'bx1001x: begin out4 = 4'h4; end
	6'bx1010x: begin out4 = 4'h5; end
	6'bx1011x: begin out4 = 4'hb; end
	6'bx1100x: begin out4 = 4'hc; end
	6'bx1101x: begin out4 = 4'h7; end
	6'bx1110x: begin out4 = 4'h2; end
	6'bx1111x: begin out4 = 4'he; end
	endcase
end
endcase
//Sbox 5-------------------------------------------------------------------------------------------------
casex (in5)
6'b0xxxx0: begin
	casex (in5)
	6'bx0000x: begin out5 = 4'h2; end
	6'bx0001x: begin out5 = 4'hc; end
	6'bx0010x: begin out5 = 4'h4; end
	6'bx0011x: begin out5 = 4'h1; end
	6'bx0100x: begin out5 = 4'h7; end
	6'bx0101x: begin out5 = 4'ha; end
	6'bx0110x: begin out5 = 4'hb; end
	6'bx0111x: begin out5 = 4'h6; end
	6'bx1000x: begin out5 = 4'h8; end
	6'bx1001x: begin out5 = 4'h5; end
	6'bx1010x: begin out5 = 4'h3; end
	6'bx1011x: begin out5 = 4'hf; end
	6'bx1100x: begin out5 = 4'hd; end
	6'bx1101x: begin out5 = 4'h0; end
	6'bx1110x: begin out5 = 4'he; end
	6'bx1111x: begin out5 = 4'h9; end
	endcase
end
6'b0xxxx1: begin
	casex (in5)
	6'bx0000x: begin out5 = 4'he; end
	6'bx0001x: begin out5 = 4'hb; end
	6'bx0010x: begin out5 = 4'h2; end
	6'bx0011x: begin out5 = 4'hc; end
	6'bx0100x: begin out5 = 4'h4; end
	6'bx0101x: begin out5 = 4'h7; end
	6'bx0110x: begin out5 = 4'hd; end
	6'bx0111x: begin out5 = 4'h1; end
	6'bx1000x: begin out5 = 4'h5; end
	6'bx1001x: begin out5 = 4'h0; end
	6'bx1010x: begin out5 = 4'hf; end
	6'bx1011x: begin out5 = 4'ha; end
	6'bx1100x: begin out5 = 4'h3; end
	6'bx1101x: begin out5 = 4'h9; end
	6'bx1110x: begin out5 = 4'h8; end
	6'bx1111x: begin out5 = 4'h6; end
	endcase
end
6'b1xxxx0: begin
	casex (in5)
	6'bx0000x: begin out5 = 4'h4; end
	6'bx0001x: begin out5 = 4'h2; end
	6'bx0010x: begin out5 = 4'h1; end
	6'bx0011x: begin out5 = 4'hb; end
	6'bx0100x: begin out5 = 4'ha; end
	6'bx0101x: begin out5 = 4'hd; end
	6'bx0110x: begin out5 = 4'h7; end
	6'bx0111x: begin out5 = 4'h8; end
	6'bx1000x: begin out5 = 4'hf; end
	6'bx1001x: begin out5 = 4'h9; end
	6'bx1010x: begin out5 = 4'hc; end
	6'bx1011x: begin out5 = 4'h5; end
	6'bx1100x: begin out5 = 4'h6; end
	6'bx1101x: begin out5 = 4'h3; end
	6'bx1110x: begin out5 = 4'h0; end
	6'bx1111x: begin out5 = 4'he; end
	endcase
end
6'b1xxxx1: begin
	casex (in5)
	6'bx0000x: begin out5 = 4'hb; end
	6'bx0001x: begin out5 = 4'h8; end
	6'bx0010x: begin out5 = 4'hc; end
	6'bx0011x: begin out5 = 4'h7; end
	6'bx0100x: begin out5 = 4'h1; end
	6'bx0101x: begin out5 = 4'he; end
	6'bx0110x: begin out5 = 4'h2; end
	6'bx0111x: begin out5 = 4'hd; end
	6'bx1000x: begin out5 = 4'h6; end
	6'bx1001x: begin out5 = 4'hf; end
	6'bx1010x: begin out5 = 4'h0; end
	6'bx1011x: begin out5 = 4'h9; end
	6'bx1100x: begin out5 = 4'ha; end
	6'bx1101x: begin out5 = 4'h4; end
	6'bx1110x: begin out5 = 4'h5; end
	6'bx1111x: begin out5 = 4'h3; end
	endcase
end
endcase
//Sbox 6-------------------------------------------------------------------------------------------------
casex (in6)
6'b0xxxx0: begin
	casex (in6)
	6'bx0000x: begin out6 = 4'hc; end
	6'bx0001x: begin out6 = 4'h1; end
	6'bx0010x: begin out6 = 4'ha; end
	6'bx0011x: begin out6 = 4'hf; end
	6'bx0100x: begin out6 = 4'h9; end
	6'bx0101x: begin out6 = 4'h2; end
	6'bx0110x: begin out6 = 4'h6; end
	6'bx0111x: begin out6 = 4'h8; end
	6'bx1000x: begin out6 = 4'h0; end
	6'bx1001x: begin out6 = 4'hd; end
	6'bx1010x: begin out6 = 4'h3; end
	6'bx1011x: begin out6 = 4'h4; end
	6'bx1100x: begin out6 = 4'he; end
	6'bx1101x: begin out6 = 4'h7; end
	6'bx1110x: begin out6 = 4'h5; end
	6'bx1111x: begin out6 = 4'hb; end
	endcase
end
6'b0xxxx1: begin
	casex (in6)
	6'bx0000x: begin out6 = 4'ha; end
	6'bx0001x: begin out6 = 4'hf; end
	6'bx0010x: begin out6 = 4'h4; end
	6'bx0011x: begin out6 = 4'h2; end
	6'bx0100x: begin out6 = 4'h7; end
	6'bx0101x: begin out6 = 4'hc; end
	6'bx0110x: begin out6 = 4'h9; end
	6'bx0111x: begin out6 = 4'h5; end
	6'bx1000x: begin out6 = 4'h6; end
	6'bx1001x: begin out6 = 4'h1; end
	6'bx1010x: begin out6 = 4'hd; end
	6'bx1011x: begin out6 = 4'he; end
	6'bx1100x: begin out6 = 4'h0; end
	6'bx1101x: begin out6 = 4'hb; end
	6'bx1110x: begin out6 = 4'h3; end
	6'bx1111x: begin out6 = 4'h8; end
	endcase
end
6'b1xxxx0: begin
	casex (in6)
	6'bx0000x: begin out6 = 4'h9; end
	6'bx0001x: begin out6 = 4'he; end
	6'bx0010x: begin out6 = 4'hf; end
	6'bx0011x: begin out6 = 4'h5; end
	6'bx0100x: begin out6 = 4'h2; end
	6'bx0101x: begin out6 = 4'h8; end
	6'bx0110x: begin out6 = 4'hc; end
	6'bx0111x: begin out6 = 4'h3; end
	6'bx1000x: begin out6 = 4'h7; end
	6'bx1001x: begin out6 = 4'h0; end
	6'bx1010x: begin out6 = 4'h4; end
	6'bx1011x: begin out6 = 4'ha; end
	6'bx1100x: begin out6 = 4'h1; end
	6'bx1101x: begin out6 = 4'hd; end
	6'bx1110x: begin out6 = 4'hb; end
	6'bx1111x: begin out6 = 4'h6; end
	endcase
end
6'b1xxxx1: begin
	casex (in6)
	6'bx0000x: begin out6 = 4'h4; end
	6'bx0001x: begin out6 = 4'h3; end
	6'bx0010x: begin out6 = 4'h2; end
	6'bx0011x: begin out6 = 4'hc; end
	6'bx0100x: begin out6 = 4'h9; end
	6'bx0101x: begin out6 = 4'h5; end
	6'bx0110x: begin out6 = 4'hf; end
	6'bx0111x: begin out6 = 4'ha; end
	6'bx1000x: begin out6 = 4'hb; end
	6'bx1001x: begin out6 = 4'he; end
	6'bx1010x: begin out6 = 4'h1; end
	6'bx1011x: begin out6 = 4'h7; end
	6'bx1100x: begin out6 = 4'h6; end
	6'bx1101x: begin out6 = 4'h0; end
	6'bx1110x: begin out6 = 4'h8; end
	6'bx1111x: begin out6 = 4'hd; end
	endcase
end
endcase
//Sbox 7-------------------------------------------------------------------------------------------------
casex (in7)
6'b0xxxx0: begin
	casex (in7)
	6'bx0000x: begin out7 = 4'h4; end
	6'bx0001x: begin out7 = 4'hb; end
	6'bx0010x: begin out7 = 4'h2; end
	6'bx0011x: begin out7 = 4'he; end
	6'bx0100x: begin out7 = 4'hf; end
	6'bx0101x: begin out7 = 4'h0; end
	6'bx0110x: begin out7 = 4'h8; end
	6'bx0111x: begin out7 = 4'hd; end
	6'bx1000x: begin out7 = 4'h3; end
	6'bx1001x: begin out7 = 4'hc; end
	6'bx1010x: begin out7 = 4'h9; end
	6'bx1011x: begin out7 = 4'h7; end
	6'bx1100x: begin out7 = 4'h5; end
	6'bx1101x: begin out7 = 4'ha; end
	6'bx1110x: begin out7 = 4'h6; end
	6'bx1111x: begin out7 = 4'h1; end
	endcase
end
6'b0xxxx1: begin
	casex (in7)
	6'bx0000x: begin out7 = 4'hd; end
	6'bx0001x: begin out7 = 4'h0; end
	6'bx0010x: begin out7 = 4'hb; end
	6'bx0011x: begin out7 = 4'h7; end
	6'bx0100x: begin out7 = 4'h4; end
	6'bx0101x: begin out7 = 4'h9; end
	6'bx0110x: begin out7 = 4'h1; end
	6'bx0111x: begin out7 = 4'ha; end
	6'bx1000x: begin out7 = 4'he; end
	6'bx1001x: begin out7 = 4'h3; end
	6'bx1010x: begin out7 = 4'h5; end
	6'bx1011x: begin out7 = 4'hc; end
	6'bx1100x: begin out7 = 4'h2; end
	6'bx1101x: begin out7 = 4'hf; end
	6'bx1110x: begin out7 = 4'h8; end
	6'bx1111x: begin out7 = 4'h6; end
	endcase
end
6'b1xxxx0: begin
	casex (in7)
	6'bx0000x: begin out7 = 4'h1; end
	6'bx0001x: begin out7 = 4'h4; end
	6'bx0010x: begin out7 = 4'hb; end
	6'bx0011x: begin out7 = 4'hd; end
	6'bx0100x: begin out7 = 4'hc; end
	6'bx0101x: begin out7 = 4'h3; end
	6'bx0110x: begin out7 = 4'h7; end
	6'bx0111x: begin out7 = 4'he; end
	6'bx1000x: begin out7 = 4'ha; end
	6'bx1001x: begin out7 = 4'hf; end
	6'bx1010x: begin out7 = 4'h6; end
	6'bx1011x: begin out7 = 4'h8; end
	6'bx1100x: begin out7 = 4'h0; end
	6'bx1101x: begin out7 = 4'h5; end
	6'bx1110x: begin out7 = 4'h9; end
	6'bx1111x: begin out7 = 4'h2; end
	endcase
end
6'b1xxxx1: begin
	casex (in7)
	6'bx0000x: begin out7 = 4'h6; end
	6'bx0001x: begin out7 = 4'hb; end
	6'bx0010x: begin out7 = 4'hd; end
	6'bx0011x: begin out7 = 4'h8; end
	6'bx0100x: begin out7 = 4'h1; end
	6'bx0101x: begin out7 = 4'h4; end
	6'bx0110x: begin out7 = 4'ha; end
	6'bx0111x: begin out7 = 4'h7; end
	6'bx1000x: begin out7 = 4'h9; end
	6'bx1001x: begin out7 = 4'h5; end
	6'bx1010x: begin out7 = 4'h0; end
	6'bx1011x: begin out7 = 4'hf; end
	6'bx1100x: begin out7 = 4'he; end
	6'bx1101x: begin out7 = 4'h2; end
	6'bx1110x: begin out7 = 4'h3; end
	6'bx1111x: begin out7 = 4'hc; end
	endcase
end
endcase
//Sbox 8-------------------------------------------------------------------------------------------------
casex (in8)
6'b0xxxx0: begin
	casex (in8)
	6'bx0000x: begin out8 = 4'hd; end
	6'bx0001x: begin out8 = 4'h2; end
	6'bx0010x: begin out8 = 4'h8; end
	6'bx0011x: begin out8 = 4'h4; end
	6'bx0100x: begin out8 = 4'h6; end
	6'bx0101x: begin out8 = 4'hf; end
	6'bx0110x: begin out8 = 4'hb; end
	6'bx0111x: begin out8 = 4'h1; end
	6'bx1000x: begin out8 = 4'ha; end
	6'bx1001x: begin out8 = 4'h9; end
	6'bx1010x: begin out8 = 4'h3; end
	6'bx1011x: begin out8 = 4'he; end
	6'bx1100x: begin out8 = 4'h5; end
	6'bx1101x: begin out8 = 4'h0; end
	6'bx1110x: begin out8 = 4'hc; end
	6'bx1111x: begin out8 = 4'h7; end
	endcase
end
6'b0xxxx1: begin
	casex (in8)
	6'bx0000x: begin out8 = 4'h1; end
	6'bx0001x: begin out8 = 4'hf; end
	6'bx0010x: begin out8 = 4'hd; end
	6'bx0011x: begin out8 = 4'h8; end
	6'bx0100x: begin out8 = 4'ha; end
	6'bx0101x: begin out8 = 4'h3; end
	6'bx0110x: begin out8 = 4'h7; end
	6'bx0111x: begin out8 = 4'h4; end
	6'bx1000x: begin out8 = 4'hc; end
	6'bx1001x: begin out8 = 4'h5; end
	6'bx1010x: begin out8 = 4'h6; end
	6'bx1011x: begin out8 = 4'hb; end
	6'bx1100x: begin out8 = 4'h0; end
	6'bx1101x: begin out8 = 4'he; end
	6'bx1110x: begin out8 = 4'h9; end
	6'bx1111x: begin out8 = 4'h2; end
	endcase
end
6'b1xxxx0: begin
	casex (in8)
	6'bx0000x: begin out8 = 4'h7; end
	6'bx0001x: begin out8 = 4'hb; end
	6'bx0010x: begin out8 = 4'h4; end
	6'bx0011x: begin out8 = 4'h1; end
	6'bx0100x: begin out8 = 4'h9; end
	6'bx0101x: begin out8 = 4'hc; end
	6'bx0110x: begin out8 = 4'he; end
	6'bx0111x: begin out8 = 4'h2; end
	6'bx1000x: begin out8 = 4'h0; end
	6'bx1001x: begin out8 = 4'h6; end
	6'bx1010x: begin out8 = 4'ha; end
	6'bx1011x: begin out8 = 4'hd; end
	6'bx1100x: begin out8 = 4'hf; end
	6'bx1101x: begin out8 = 4'h3; end
	6'bx1110x: begin out8 = 4'h5; end
	6'bx1111x: begin out8 = 4'h8; end
	endcase
end
6'b1xxxx1: begin
	casex (in8)
	6'bx0000x: begin out8 = 4'h2; end
	6'bx0001x: begin out8 = 4'h1; end
	6'bx0010x: begin out8 = 4'he; end
	6'bx0011x: begin out8 = 4'h7; end
	6'bx0100x: begin out8 = 4'h4; end
	6'bx0101x: begin out8 = 4'ha; end
	6'bx0110x: begin out8 = 4'h8; end
	6'bx0111x: begin out8 = 4'hd; end
	6'bx1000x: begin out8 = 4'hf; end
	6'bx1001x: begin out8 = 4'hc; end
	6'bx1010x: begin out8 = 4'h9; end
	6'bx1011x: begin out8 = 4'h0; end
	6'bx1100x: begin out8 = 4'h3; end
	6'bx1101x: begin out8 = 4'h5; end
	6'bx1110x: begin out8 = 4'h6; end
	6'bx1111x: begin out8 = 4'hb; end
	endcase
end
endcase
end

	assign out = {out1, out2, out3, out4, out5, out6, out7, out8};
	
endmodule
