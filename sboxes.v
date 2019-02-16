//sboxes.v
//8 s boxes for f block

module sboxes(in);
	input in[47:0];
	output reg out1[31:0];
	
	reg in1[5:0];
	reg in2[5:0];
	reg in3[5:0];
	reg in4[5:0];
	reg in5[5:0];
	reg in6[5:0];
	reg in7[5:0];
	reg in8[5:0];
	
	reg out1[3:0];
	reg out2[3:0];
	reg out3[3:0];
	reg out4[3:0];
	reg out5[3:0];
	reg out6[3:0];
	reg out7[3:0];
	reg out8[3:0];
	
	assign in1 = in[47:42];
	assign in2 = in[41:36];
	assign in3 = in[35:30];
	assign in4 = in[29:24];
	assign in5 = in[23:18];
	assign in6 = in[17:12];
	assign in7 = in[11:6];
	assign in8 = in[5:0];
	
/*********************************************************************************************************/
	//Sbox 1
	/*
	S1
	14 4  13 1 2  15 11 8  3  10 6  12 5  9  0 7
	0  15 7  4 14 2  13 1  10 6  12 11 9  5  3 8
	4  1  14 8 13 6  2  11 15 12 9  7  3  10 5 0
	15 12 8  2 4  9  1  7  5  11 3  14 10 0  6 13 
	*/
	casex (in1)
	6'b0xxxx0: begin 
		casex(in1)
		//S1 row 1: 14 4 13 1 2 15 11 8 3 10 6 12 5 9 0 7
		6'bx0000x: begin
			out1 = 4'hE;
		6'bx0001x: begin
			out1 = 4'h4;
		6'bx0010x: begin
			out1 = 4'hD;
		6'bx0011x: begin
			out1 = 4'h1;
		6'bx0100x: begin
			out1 = 4'h2;
		6'bx0101x: begin
			out1 = 4'hF;
		6'bx0110x: begin
			out1 = 4'hC;
		6'bx0111x: begin
			out1 = 4'h8;
		6'bx1000x: begin
			out1 = 4'h3;
		6'bx1001x: begin
			out1 = 4'hA;
		6'bx1010x: begin
			out1 = 4'h6;
		6'bx1011x: begin
			out1 = 4'hC;
		6'bx1100x: begin
			out1 = 4'h5;
		6'bx1101x: begin
			out1 = 4'h9;
		6'bx1110x: begin
			out1 = 4'h0;
		6'bx1111x: begin
			out1 = 4'h7;
		endcase
	6'b0xxxx1: begin 
		//S1 row 2: 0 15 7 4 14 2 13 1 10 6 12 11 9 5 3 8
		casex (in1)
		6'bx0000x: begin
			out1 = 4'h0;
		6'bx0001x: begin
			out1 = 4'hF;
		6'bx0010x: begin
			out1 = 4'h7;
		6'bx0011x: begin
			out1 = 4'h4;
		6'bx0100x: begin
			out1 = 4'hE;
		6'bx0101x: begin
			out1 = 4'h2;
		6'bx0110x: begin
			out1 = 4'hD;
		6'bx0111x: begin
			out1 = 4'h1;
		6'bx1000x: begin
			out1 = 4'hA;
		6'bx1001x: begin
			out1 = 4'h6;
		6'bx1010x: begin
			out1 = 4'hC;
		6'bx1011x: begin
			out1 = 4'hB;
		6'bx1100x: begin
			out1 = 4'h9;
		6'bx1101x: begin
			out1 = 4'h5;
		6'bx1110x: begin
			out1 = 4'h3;
		6'bx1111x: begin
			out1 = 4'h8;
		endcase
		
	6'b1xxxx0: begin 	
		//S1 row 3: 4 1 14 8 13 6 2 11 15 12 9 7 3 10 5 0
		casex (in1)
		6'bx0000x: 
			out1 = 4'h4;
		6'bx0001x: begin
			out1 = 4'h1;
		6'bx0010x: begin
			out1 = 4'hE;
		6'bx0011x: begin
			out1 = 4'h8;
		6'bx0100x: begin
			out1 = 4'hD;
		6'bx0101x: begin
			out1 = 4'h6;
		6'bx0110x: begin
			out1 = 4'h2;
		6'bx0111x: begin
			out1 = 4'hB;
		6'bx1000x: begin
			out1 = 4'hF;
		6'bx1001x: begin
			out1 = 4'hC;
		6'bx1010x: begin
			out1 = 4'h9;
		6'bx1011x: begin
			out1 = 4'h7;
		6'bx1100x: begin
			out1 = 4'h3;
		6'bx1101x: begin
			out1 = 4'hA;
		6'bx1110x: begin
			out1 = 4'h5;
		6'bx1111x: begin
			out1 = 4'h0;
		endcase
	
	6'b1xxxx1: begin 
		//S1 row 4: 15 12 8 2 4 9 1 7 5 11 3 14 10 0 6 13
		casex (in1)
		6'bx0000x: 
			out1 = 4'hF;
		6'bx0001x: begin
			out1 = 4'hC;
		6'bx0010x: begin
			out1 = 4'h8;
		6'bx0011x: begin
			out1 = 4'h2;
		6'bx0100x: begin
			out1 = 4'h4;
		6'bx0101x: begin
			out1 = 4'h9;
		6'bx0110x: begin
			out1 = 4'h1;
		6'bx0111x: begin
			out1 = 4'h7;
		6'bx1000x: begin
			out1 = 4'h5;
		6'bx1001x: begin
			out1 = 4'hB;
		6'bx1010x: begin
			out1 = 4'h3;
		6'bx1011x: begin
			out1 = 4'hE;
		6'bx1100x: begin
			out1 = 4'hA;
		6'bx1101x: begin
			out1 = 4'h0;
		6'bx1110x: begin
			out1 = 4'h6;
		6'bx1111x: begin
			out1 = 4'hD;
		endcase
	endcase
/**********************************************************************************************/
// DO THIS 7 more times or put in separate files???
endmodule
