//sboxes.v
//8 s boxes for f block

module sboxes(out, in);
	input in[47:0];
	output out[31:0];
	
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
/*********************************************************************************************************/
	//Sbox 2
	/*
	S2
	15 1  8 14 6  11 3  4  9  7 2  13 12 0 5  10	
	3  13 4 7  15 2  8  14 12 0 1  10 6  9 11 5
	0  14 7 11 10 4  13  1 5  8 12 6  9  3 2  15
	13 8 10 1  3  15 4   2 11 6 7  12 0  5 14 9
	*/
	casex (in2)
	6'b0xxxx0: begin 
		casex(in2)
		//S2 row 1: 15 1 8 14 6 11 3 4 9 7 2 13 12 0 5 10
		6'bx0000x: begin
			out2 = 4'hF;
		6'bx0001x: begin
			out2 = 4'h1;
		6'bx0010x: begin
			out2 = 4'h8;
		6'bx0011x: begin
			out2 = 4'hE;
		6'bx0100x: begin
			out2 = 4'h6;
		6'bx0101x: begin
			out2 = 4'hB;
		6'bx0110x: begin
			out2 = 4'h3;
		6'bx0111x: begin
			out2 = 4'h4;
		6'bx1000x: begin
			out2 = 4'h9;
		6'bx1001x: begin
			out2 = 4'h7;
		6'bx1010x: begin
			out2 = 4'h2;
		6'bx1011x: begin
			out2 = 4'hD;
		6'bx1100x: begin
			out2 = 4'hC;
		6'bx1101x: begin
			out2 = 4'h0;
		6'bx1110x: begin
			out2 = 4'h5;
		6'bx1111x: begin
			out2 = 4'hA;
		endcase
	6'b0xxxx1: begin 
		//S2 row 2: 3 13 4 7 15 2 8 14 12 0 1 10 6 9 11 5
		casex (in2)
		6'bx0000x: begin
			out2 = 4'h3;
		6'bx0001x: begin
			out2 = 4'hD;
		6'bx0010x: begin
			out2 = 4'h4;
		6'bx0011x: begin
			out2 = 4'h7;
		6'bx0100x: begin
			out2 = 4'hF;
		6'bx0101x: begin
			out2 = 4'h2;
		6'bx0110x: begin
			out2 = 4'h8;
		6'bx0111x: begin
			out2 = 4'hE;
		6'bx1000x: begin
			out2 = 4'hC;
		6'bx1001x: begin
			out2 = 4'h0;
		6'bx1010x: begin
			out2 = 4'h1;
		6'bx1011x: begin
			out2 = 4'hA;
		6'bx1100x: begin
			out2 = 4'h6;
		6'bx1101x: begin
			out2 = 4'h9;
		6'bx1110x: begin
			out2 = 4'hB;
		6'bx1111x: begin
			out2 = 4'h5;
		endcase
		
	6'b1xxxx0: begin 	
		//S2 row 3: 0 14 7 11 10 4 13 1 5 8 12 6 9 3 2 15
		casex (in2)
		6'bx0000x: 
			out2 = 4'h0;
		6'bx0001x: begin
			out2 = 4'hE;
		6'bx0010x: begin
			out2 = 4'h7;
		6'bx0011x: begin
			out2 = 4'hB;
		6'bx0100x: begin
			out2 = 4'hA;
		6'bx0101x: begin
			out2 = 4'h4;
		6'bx0110x: begin
			out2 = 4'hD;
		6'bx0111x: begin
			out2 = 4'h1;
		6'bx1000x: begin
			out2 = 4'h5;
		6'bx1001x: begin
			out2 = 4'h8;
		6'bx1010x: begin
			out2 = 4'hC;
		6'bx1011x: begin
			out2 = 4'h6;
		6'bx1100x: begin
			out2 = 4'h9;
		6'bx1101x: begin
			out2 = 4'h3;
		6'bx1110x: begin
			out2 = 4'h2;
		6'bx1111x: begin
			out2 = 4'hF;
		endcase
	
	6'b1xxxx1: begin 
		//S2 row 4: 13 8 10 1 3 15 4 2 11 6 7 12 0 5 14 9
		casex (in2)
		6'bx0000x: 
			out2 = 4'hD;
		6'bx0001x: begin
			out2 = 4'h8;
		6'bx0010x: begin
			out2 = 4'hA;
		6'bx0011x: begin
			out2 = 4'h1;
		6'bx0100x: begin
			out2 = 4'h3;
		6'bx0101x: begin
			out2 = 4'hF;
		6'bx0110x: begin
			out2 = 4'h4;
		6'bx0111x: begin
			out2 = 4'h2;
		6'bx1000x: begin
			out2 = 4'hB;
		6'bx1001x: begin
			out2 = 4'h6;
		6'bx1010x: begin
			out2 = 4'h7;
		6'bx1011x: begin
			out2 = 4'hC;
		6'bx1100x: begin
			out2 = 4'h0;
		6'bx1101x: begin
			out2 = 4'h5;
		6'bx1110x: begin
			out2 = 4'hE;
		6'bx1111x: begin
			out2 = 4'h9;
		endcase
	endcase


/**********************************************************************************************/
/*********************************************************************************************************/
	//Sbox 3
	/*
	S3
	10 0 9 14 6 3 15 5 1 13 12 7 11 4 2 8
	13 7 0 9 3 4 6 10 2 8 5 14 12 11 15 1
	13 6 4 9 8 15 3 0 11 1 2 12 5 10 14 7
	1  10 13 0 6 9 8 7 4 15 14 3 11 5 2 12 

	*/
	casex (in3)
	6'b0xxxx0: begin 
		casex(in3)
		//S3 row 1: 10 0 9 14 6 3 15 5 1 13 12 7 11 4 2 8
		6'bx0000x: begin
			out3 = 4'hA;
		6'bx0001x: begin
			out3 = 4'h0;
		6'bx0010x: begin
			out3 = 4'h9;
		6'bx0011x: begin
			out3 = 4'hE;
		6'bx0100x: begin
			out3 = 4'h6;
		6'bx0101x: begin
			out3 = 4'h3;
		6'bx0110x: begin
			out3 = 4'hF;
		6'bx0111x: begin
			out3 = 4'h5;
		6'bx1000x: begin
			out3 = 4'h1;
		6'bx1001x: begin
			out3 = 4'hD;
		6'bx1010x: begin
			out3 = 4'hC;
		6'bx1011x: begin
			out3 = 4'h7;
		6'bx1100x: begin
			out3 = 4'hB;
		6'bx1101x: begin
			out3 = 4'h4;
		6'bx1110x: begin
			out3 = 4'h2;
		6'bx1111x: begin
			out3 = 4'h8;
		endcase
	6'b0xxxx1: begin 
		//S3 row 2: 13 7 0 9 3 4 6 10 2 8 5 14 12 11 15 1
		casex (in3)
		6'bx0000x: begin
			out3 = 4'hD;
		6'bx0001x: begin
			out3 = 4'h7;
		6'bx0010x: begin
			out3 = 4'h0;
		6'bx0011x: begin
			out3 = 4'h9;
		6'bx0100x: begin
			out3 = 4'h3;
		6'bx0101x: begin
			out3 = 4'h4;
		6'bx0110x: begin
			out3 = 4'h6;
		6'bx0111x: begin
			out3 = 4'hA;
		6'bx1000x: begin
			out3 = 4'h2;
		6'bx1001x: begin
			out3 = 4'h8;
		6'bx1010x: begin
			out3 = 4'h5;
		6'bx1011x: begin
			out3 = 4'hE;
		6'bx1100x: begin
			out3 = 4'hC;
		6'bx1101x: begin
			out3 = 4'hB;
		6'bx1110x: begin
			out3 = 4'hF;
		6'bx1111x: begin
			out3 = 4'h1;
		endcase
		
	6'b1xxxx0: begin 	
		//S3 row 3: 13 6 4 9 8 15 3 0 11 1 2 12 5 10 14 7
		casex (in3)
		6'bx0000x: 
			out3 = 4'hD;
		6'bx0001x: begin
			out3 = 4'h6;
		6'bx0010x: begin
			out3 = 4'h4;
		6'bx0011x: begin
			out3 = 4'h9;
		6'bx0100x: begin
			out3 = 4'h8;
		6'bx0101x: begin
			out3 = 4'hF;
		6'bx0110x: begin
			out3 = 4'h3;
		6'bx0111x: begin
			out3 = 4'h0;
		6'bx1000x: begin
			out3 = 4'hB;
		6'bx1001x: begin
			out3 = 4'h1;
		6'bx1010x: begin
			out3 = 4'h2;
		6'bx1011x: begin
			out3 = 4'hC;
		6'bx1100x: begin
			out3 = 4'h5;
		6'bx1101x: begin
			out3 = 4'hA;
		6'bx1110x: begin
			out3 = 4'hE;
		6'bx1111x: begin
			out3 = 4'h7;
		endcase
	
	6'b1xxxx1: begin 
		//S3 row 4: 1  10 13 0 6 9 8 7 4 15 14 3 11 5 2 12 
		casex (in3)
		6'bx0000x: 
			out3 = 4'h1;
		6'bx0001x: begin
			out3 = 4'hA;
		6'bx0010x: begin
			out3 = 4'hD;
		6'bx0011x: begin
			out3 = 4'h0;
		6'bx0100x: begin
			out3 = 4'h6;
		6'bx0101x: begin
			out3 = 4'h9;
		6'bx0110x: begin
			out3 = 4'h8;
		6'bx0111x: begin
			out3 = 4'h7;
		6'bx1000x: begin
			out3 = 4'h4;
		6'bx1001x: begin
			out3 = 4'hF;
		6'bx1010x: begin
			out3 = 4'hE;
		6'bx1011x: begin
			out3 = 4'h3;
		6'bx1100x: begin
			out3 = 4'hB;
		6'bx1101x: begin
			out3 = 4'h5;
		6'bx1110x: begin
			out3 = 4'h2;
		6'bx1111x: begin
			out3 = 4'hC;
		endcase
	endcase

/**********************************************************************************************/
/*********************************************************************************************************/
	//Sbox 4
	/*
	S4
	7 13 14 3 0 6 9 10 1 2 8 5 11 12 4 15
	13 8 11 5 6 15 0 3 4 7 2 12 1 10 14 9
	10 6 9 0 12 11 7 13 15 1 3 14 5 2 8 4
	3 15 0 6 10 1 13 8 9 4 5 11 12 7 2 14 
	*/
	casex (in4)
	6'b0xxxx0: begin 
		casex(in4)
		//S4 row 1: 7 13 14 3 0 6 9 10 1 2 8 5 11 12 4 15
		6'bx0000x: begin
			out4 = 4'h7;
		6'bx0001x: begin
			out4 = 4'hD;
		6'bx0010x: begin
			out4 = 4'hE;
		6'bx0011x: begin
			out4 = 4'h3;
		6'bx0100x: begin
			out4 = 4'h0;
		6'bx0101x: begin
			out4 = 4'h6;
		6'bx0110x: begin
			out4 = 4'h9;
		6'bx0111x: begin
			out4 = 4'hA;
		6'bx1000x: begin
			out4 = 4'h1;
		6'bx1001x: begin
			out4 = 4'h2;
		6'bx1010x: begin
			out4 = 4'h8;
		6'bx1011x: begin
			out4 = 4'h5;
		6'bx1100x: begin
			out4 = 4'hB;
		6'bx1101x: begin
			out4 = 4'hC;
		6'bx1110x: begin
			out4 = 4'h4;
		6'bx1111x: begin
			out4 = 4'hF;
		endcase
	6'b0xxxx1: begin 
		//S4 row 2: 13 8 11 5 6 15 0 3 4 7 2 12 1 10 14 9
		casex (in4)
		6'bx0000x: begin
			out4 = 4'hD;
		6'bx0001x: begin
			out4 = 4'h8;
		6'bx0010x: begin
			out4 = 4'hB;
		6'bx0011x: begin
			out4 = 4'h5;
		6'bx0100x: begin
			out4 = 4'h6;
		6'bx0101x: begin
			out4 = 4'hF;
		6'bx0110x: begin
			out4 = 4'h0;
		6'bx0111x: begin
			out4 = 4'h3;
		6'bx1000x: begin
			out4 = 4'h4;
		6'bx1001x: begin
			out4 = 4'h7;
		6'bx1010x: begin
			out4 = 4'h2;
		6'bx1011x: begin
			out4 = 4'hC;
		6'bx1100x: begin
			out4 = 4'h1;
		6'bx1101x: begin
			out4 = 4'hA;
		6'bx1110x: begin
			out4 = 4'hE;
		6'bx1111x: begin
			out4 = 4'h9;
		endcase
		
	6'b1xxxx0: begin 	
		//S4 row 3: 10 6 9 0 12 11 7 13 15 1 3 14 5 2 8 4
		casex (in4)
		6'bx0000x: 
			out4 = 4'hA;
		6'bx0001x: begin
			out4 = 4'h6;
		6'bx0010x: begin
			out4 = 4'h9;
		6'bx0011x: begin
			out4 = 4'h0;
		6'bx0100x: begin
			out4 = 4'hC;
		6'bx0101x: begin
			out4 = 4'hB;
		6'bx0110x: begin
			out4 = 4'h7;
		6'bx0111x: begin
			out4 = 4'hD;
		6'bx1000x: begin
			out4 = 4'hF;
		6'bx1001x: begin
			out4 = 4'h1;
		6'bx1010x: begin
			out4 = 4'h3;
		6'bx1011x: begin
			out4 = 4'hE;
		6'bx1100x: begin
			out4 = 4'h5;
		6'bx1101x: begin
			out4 = 4'h2;
		6'bx1110x: begin
			out4 = 4'h8;
		6'bx1111x: begin
			out4 = 4'h4;
		endcase
	
	6'b1xxxx1: begin 
		//S4 row 4: 3 15 0 6 10 1 13 8 9 4 5 11 12 7 2 14 
		casex (in4)
		6'bx0000x: 
			out4 = 4'h3;
		6'bx0001x: begin
			out4 = 4'hF;
		6'bx0010x: begin
			out4 = 4'h0;
		6'bx0011x: begin
			out4 = 4'h6;
		6'bx0100x: begin
			out4 = 4'hA;
		6'bx0101x: begin
			out4 = 4'h1;
		6'bx0110x: begin
			out4 = 4'hD;
		6'bx0111x: begin
			out4 = 4'h8;
		6'bx1000x: begin
			out4 = 4'h9;
		6'bx1001x: begin
			out4 = 4'h4;
		6'bx1010x: begin
			out4 = 4'h5;
		6'bx1011x: begin
			out4 = 4'hB;
		6'bx1100x: begin
			out4 = 4'hC;
		6'bx1101x: begin
			out4 = 4'h7;
		6'bx1110x: begin
			out4 = 4'h2;
		6'bx1111x: begin
			out4 = 4'hE;
		endcase
	endcase	

/**********************************************************************************************/
/*********************************************************************************************************/
	//Sbox 5
	/*
	S5
	2 12 4 1 7 10 11 6 8 5 3 15 13 0 14 9
	14 11 2 12 4 7 13 1 5 0 15 10 3 9 8 6
	4 2 1 11 10 13 7 8 15 9 12 5 6 3 0 14
	11 8 12 7 1 14 2 13 6 15 0 9 10 4 5 3 
	*/
	casex (in5)
	6'b0xxxx0: begin 
		casex(in5)
		//S5 row 1: 2 12 4 1 7 10 11 6 8 5 3 15 13 0 14 9
		6'bx0000x: begin
			out5 = 4'h2;
		6'bx0001x: begin
			out5 = 4'hC;
		6'bx0010x: begin
			out5 = 4'h4;
		6'bx0011x: begin
			out5 = 4'h1;
		6'bx0100x: begin
			out5 = 4'h7;
		6'bx0101x: begin
			out5 = 4'hA;
		6'bx0110x: begin
			out5 = 4'hB;
		6'bx0111x: begin
			out5 = 4'h6;
		6'bx1000x: begin
			out5 = 4'h8;
		6'bx1001x: begin
			out5 = 4'h5;
		6'bx1010x: begin
			out5 = 4'h3;
		6'bx1011x: begin
			out5 = 4'hF;
		6'bx1100x: begin
			out5 = 4'hD;
		6'bx1101x: begin
			out5 = 4'h0;
		6'bx1110x: begin
			out5 = 4'hE;
		6'bx1111x: begin
			out5 = 4'h9;
		endcase
	6'b0xxxx1: begin 
		//S5 row 2: 14 11 2 12 4 7 13 1 5 0 15 10 3 9 8 6
		casex (in5)
		6'bx0000x: begin
			out5 = 4'hE;
		6'bx0001x: begin
			out5 = 4'hB;
		6'bx0010x: begin
			out5 = 4'h2;
		6'bx0011x: begin
			out5 = 4'hC;
		6'bx0100x: begin
			out5 = 4'h4;
		6'bx0101x: begin
			out5 = 4'h7;
		6'bx0110x: begin
			out5 = 4'hD;
		6'bx0111x: begin
			out5 = 4'h1;
		6'bx1000x: begin
			out5 = 4'h5;
		6'bx1001x: begin
			out5 = 4'h0;
		6'bx1010x: begin
			out5 = 4'hF;
		6'bx1011x: begin
			out5 = 4'hA;
		6'bx1100x: begin
			out5 = 4'h3;
		6'bx1101x: begin
			out5 = 4'h9;
		6'bx1110x: begin
			out5 = 4'h8;
		6'bx1111x: begin
			out5 = 4'h6;
		endcase
		
	6'b1xxxx0: begin 	
		//S5 row 3: 4 2 1 11 10 13 7 8 15 9 12 5 6 3 0 14
		casex (in5)
		6'bx0000x: 
			out5 = 4'h4;
		6'bx0001x: begin
			out5 = 4'h2;
		6'bx0010x: begin
			out5 = 4'h1;
		6'bx0011x: begin
			out5 = 4'hB;
		6'bx0100x: begin
			out5 = 4'hA;
		6'bx0101x: begin
			out5 = 4'hD;
		6'bx0110x: begin
			out5 = 4'h7;
		6'bx0111x: begin
			out5 = 4'h8;
		6'bx1000x: begin
			out5 = 4'hF;
		6'bx1001x: begin
			out5 = 4'h9;
		6'bx1010x: begin
			out5 = 4'hC;
		6'bx1011x: begin
			out5 = 4'h5;
		6'bx1100x: begin
			out5 = 4'h6;
		6'bx1101x: begin
			out5 = 4'h3;
		6'bx1110x: begin
			out5 = 4'h0;
		6'bx1111x: begin
			out5 = 4'hE;
		endcase
	
	6'b1xxxx1: begin 
		//S5 row 4: 11 8 12 7 1 14 2 13 6 15 0 9 10 4 5 3
		casex (in5)
		6'bx0000x: 
			out5 = 4'hB;
		6'bx0001x: begin
			out5 = 4'h8;
		6'bx0010x: begin
			out5 = 4'hC;
		6'bx0011x: begin
			out5 = 4'h7;
		6'bx0100x: begin
			out5 = 4'h1;
		6'bx0101x: begin
			out5 = 4'hE;
		6'bx0110x: begin
			out5 = 4'h2;
		6'bx0111x: begin
			out5 = 4'hD;
		6'bx1000x: begin
			out5 = 4'h6;
		6'bx1001x: begin
			out5 = 4'hF;
		6'bx1010x: begin
			out5 = 4'h0;
		6'bx1011x: begin
			out5 = 4'h9;
		6'bx1100x: begin
			out5 = 4'hA;
		6'bx1101x: begin
			out5 = 4'h4;
		6'bx1110x: begin
			out5 = 4'h5;
		6'bx1111x: begin
			out5 = 4'h3;
		endcase
	endcase
	
/**********************************************************************************************/
/*********************************************************************************************************/
	//Sbox 6
	/*
	S6
	12 1 10 15 9 2 6 8 0 13 3 4 14 7 5 11
	10 15 4 2 7 12 9 5 6 1 13 14 0 11 3 8
	9 14 15 5 2 8 12 3 7 0 4 10 1 13 11 6
	4 3 2 12 9 5 15 10 11 14 1 7 6 0 8 13
	*/
	casex (in6)
	6'b0xxxx0: begin 
		casex(in6)
		//S6 row 1: 12 1 10 15 9 2 6 8 0 13 3 4 14 7 5 11
		6'bx0000x: begin
			out6 = 4'hC;
		6'bx0001x: begin
			out6 = 4'h1;
		6'bx0010x: begin
			out6 = 4'hA;
		6'bx0011x: begin
			out6 = 4'hF;
		6'bx0100x: begin
			out6 = 4'h9;
		6'bx0101x: begin
			out6 = 4'h2;
		6'bx0110x: begin
			out6 = 4'h6;
		6'bx0111x: begin
			out6 = 4'h8;
		6'bx1000x: begin
			out6 = 4'h0;
		6'bx1001x: begin
			out6 = 4'hD;
		6'bx1010x: begin
			out6 = 4'h3;
		6'bx1011x: begin
			out6 = 4'h4;
		6'bx1100x: begin
			out6 = 4'hE;
		6'bx1101x: begin
			out6 = 4'h7;
		6'bx1110x: begin
			out6 = 4'h5;
		6'bx1111x: begin
			out6 = 4'hB;
		endcase
	6'b0xxxx1: begin 
		//S6 row 2: 10 15 4 2 7 12 9 5 6 1 13 14 0 11 3 8
		casex (in6)
		6'bx0000x: begin
			out6 = 4'hA;
		6'bx0001x: begin
			out6 = 4'hF;
		6'bx0010x: begin
			out6 = 4'h4;
		6'bx0011x: begin
			out6 = 4'h2;
		6'bx0100x: begin
			out6 = 4'h7;
		6'bx0101x: begin
			out6 = 4'hC;
		6'bx0110x: begin
			out6 = 4'h9;
		6'bx0111x: begin
			out6 = 4'h5;
		6'bx1000x: begin
			out6 = 4'h6;
		6'bx1001x: begin
			out6 = 4'h1;
		6'bx1010x: begin
			out6 = 4'hD;
		6'bx1011x: begin
			out6 = 4'hE;
		6'bx1100x: begin
			out6 = 4'h0;
		6'bx1101x: begin
			out6 = 4'hB;
		6'bx1110x: begin
			out6 = 4'h3;
		6'bx1111x: begin
			out6 = 4'h8;
		endcase
		
	6'b1xxxx0: begin 	
		//S6 row 3: 9 14 15 5 2 8 12 3 7 0 4 10 1 13 11 6
		casex (in6)
		6'bx0000x: 
			out6 = 4'h9;
		6'bx0001x: begin
			out6 = 4'hE;
		6'bx0010x: begin
			out6 = 4'hF;
		6'bx0011x: begin
			out6 = 4'h5;
		6'bx0100x: begin
			out6 = 4'h2;
		6'bx0101x: begin
			out6 = 4'h8;
		6'bx0110x: begin
			out6 = 4'hC;
		6'bx0111x: begin
			out6 = 4'h3;
		6'bx1000x: begin
			out6 = 4'h7;
		6'bx1001x: begin
			out6 = 4'h0;
		6'bx1010x: begin
			out6 = 4'h4;
		6'bx1011x: begin
			out6 = 4'hA;
		6'bx1100x: begin
			out6 = 4'h1;
		6'bx1101x: begin
			out6 = 4'hD;
		6'bx1110x: begin
			out6 = 4'hB;
		6'bx1111x: begin
			out6 = 4'h6;
		endcase
	
	6'b1xxxx1: begin 
		//S6 row 4: 4 3 2 12 9 5 15 10 11 14 1 7 6 0 8 13
		casex (in6)
		6'bx0000x: 
			out6 = 4'h4;
		6'bx0001x: begin
			out6 = 4'h3;
		6'bx0010x: begin
			out6 = 4'h2;
		6'bx0011x: begin
			out6 = 4'hC;
		6'bx0100x: begin
			out6 = 4'h9;
		6'bx0101x: begin
			out6 = 4'h5;
		6'bx0110x: begin
			out6 = 4'hF;
		6'bx0111x: begin
			out6 = 4'hA;
		6'bx1000x: begin
			out6 = 4'hB;
		6'bx1001x: begin
			out6 = 4'hE;
		6'bx1010x: begin
			out6 = 4'h1;
		6'bx1011x: begin
			out6 = 4'h7;
		6'bx1100x: begin
			out6 = 4'h6;
		6'bx1101x: begin
			out6 = 4'h0;
		6'bx1110x: begin
			out6 = 4'h8;
		6'bx1111x: begin
			out6 = 4'hD;
		endcase
	endcase

/**********************************************************************************************/
/*********************************************************************************************************/
	//Sbox 7
	/*
	S7
	4 11 2 14 15 0 8 13 3 12 9 7 5 10 6 1
	13 0 11 7 4 9 1 10 14 3 5 12 2 15 8 6
	1 4 11 13 12 3 7 14 10 15 6 8 0 5 9 2
	6 11 13 8 1 4 10 7 9 5 0 15 14 2 3 12 
	*/
	casex (in7)
	6'b0xxxx0: begin 
		casex(in7)
		//S7 row 1: 4 11 2 14 15 0 8 13 3 12 9 7 5 10 6 1
		6'bx0000x: begin
			out7 = 4'h4;
		6'bx0001x: begin
			out7 = 4'hB;
		6'bx0010x: begin
			out7 = 4'h2;
		6'bx0011x: begin
			out7 = 4'hE;
		6'bx0100x: begin
			out7 = 4'hF;
		6'bx0101x: begin
			out7 = 4'h0;
		6'bx0110x: begin
			out7 = 4'h8;
		6'bx0111x: begin
			out7 = 4'hD;
		6'bx1000x: begin
			out7 = 4'h3;
		6'bx1001x: begin
			out7 = 4'hC;
		6'bx1010x: begin
			out7 = 4'h9;
		6'bx1011x: begin
			out7 = 4'h7;
		6'bx1100x: begin
			out7 = 4'h5;
		6'bx1101x: begin
			out7 = 4'hA;
		6'bx1110x: begin
			out7 = 4'h6;
		6'bx1111x: begin
			out7 = 4'h1;
		endcase
	6'b0xxxx1: begin 
		//S7 row 2: 13 0 11 7 4 9 1 10 14 3 5 12 2 15 8 6
		casex (in7)
		6'bx0000x: begin
			out7 = 4'hD;
		6'bx0001x: begin
			out7 = 4'h0;
		6'bx0010x: begin
			out7 = 4'hB;
		6'bx0011x: begin
			out7 = 4'h7;
		6'bx0100x: begin
			out7 = 4'h4;
		6'bx0101x: begin
			out7 = 4'h9;
		6'bx0110x: begin
			out7 = 4'h1;
		6'bx0111x: begin
			out7 = 4'hA;
		6'bx1000x: begin
			out7 = 4'hE;
		6'bx1001x: begin
			out7 = 4'h3;
		6'bx1010x: begin
			out7 = 4'h5;
		6'bx1011x: begin
			out7 = 4'hC;
		6'bx1100x: begin
			out7 = 4'h2;
		6'bx1101x: begin
			out7 = 4'hF;
		6'bx1110x: begin
			out7 = 4'h8;
		6'bx1111x: begin
			out7 = 4'h6;
		endcase
		
	6'b1xxxx0: begin 	
		//S7 row 3: 1 4 11 13 12 3 7 14 10 15 6 8 0 5 9 2
		casex (in7)
		6'bx0000x: 
			out7 = 4'h1;
		6'bx0001x: begin
			out7 = 4'h4;
		6'bx0010x: begin
			out7 = 4'hB;
		6'bx0011x: begin
			out7 = 4'hD;
		6'bx0100x: begin
			out7 = 4'hC;
		6'bx0101x: begin
			out7 = 4'h3;
		6'bx0110x: begin
			out7 = 4'h7;
		6'bx0111x: begin
			out7 = 4'hE;
		6'bx1000x: begin
			out7 = 4'hA;
		6'bx1001x: begin
			out7 = 4'hF;
		6'bx1010x: begin
			out7 = 4'h6;
		6'bx1011x: begin
			out7 = 4'h8;
		6'bx1100x: begin
			out7 = 4'h0;
		6'bx1101x: begin
			out7 = 4'h5;
		6'bx1110x: begin
			out7 = 4'h9;
		6'bx1111x: begin
			out7 = 4'h2;
		endcase
	
	6'b1xxxx1: begin 
		//S7 row 4: 6 11 13 8 1 4 10 7 9 5 0 15 14 2 3 12 
		casex (in7)
		6'bx0000x: 
			out7 = 4'h6;
		6'bx0001x: begin
			out7 = 4'hB;
		6'bx0010x: begin
			out7 = 4'hD;
		6'bx0011x: begin
			out7 = 4'h8;
		6'bx0100x: begin
			out7 = 4'h1;
		6'bx0101x: begin
			out7 = 4'h4;
		6'bx0110x: begin
			out7 = 4'hA;
		6'bx0111x: begin
			out7 = 4'h7;
		6'bx1000x: begin
			out7 = 4'h9;
		6'bx1001x: begin
			out7 = 4'h5;
		6'bx1010x: begin
			out7 = 4'h0;
		6'bx1011x: begin
			out7 = 4'hF;
		6'bx1100x: begin
			out7 = 4'hE;
		6'bx1101x: begin
			out7 = 4'h2;
		6'bx1110x: begin
			out7 = 4'h3;
		6'bx1111x: begin
			out7 = 4'hC;
		endcase
	endcase
	
/**********************************************************************************************/
/*********************************************************************************************************/
	//Sbox 8
	/*
	S8
	13 2 8 4 6 15 11 1 10 9 3 14 5 0 12 7
	1 15 13 8 10 3 7 4 12 5 6 11 0 14 9 2
	7 11 4 1 9 12 14 2 0 6 10 13 15 3 5 8
	2 1 14 7 4 10 8 13 15 12 9 0 3 5 6 11  
	*/
	casex (in8)
	6'b0xxxx0: begin 
		casex(in8)
		//S8 row 1: 13 2 8 4 6 15 11 1 10 9 3 14 5 0 12 7
		6'bx0000x: begin
			out8 = 4'hD;
		6'bx0001x: begin
			out8 = 4'h2;
		6'bx0010x: begin
			out8 = 4'h8;
		6'bx0011x: begin
			out8 = 4'h4;
		6'bx0100x: begin
			out8 = 4'h6;
		6'bx0101x: begin
			out8 = 4'hF;
		6'bx0110x: begin
			out8 = 4'hB;
		6'bx0111x: begin
			out8 = 4'h1;
		6'bx1000x: begin
			out8 = 4'hA;
		6'bx1001x: begin
			out8 = 4'h9;
		6'bx1010x: begin
			out8 = 4'h3;
		6'bx1011x: begin
			out8 = 4'hE;
		6'bx1100x: begin
			out8 = 4'h5;
		6'bx1101x: begin
			out8 = 4'h0;
		6'bx1110x: begin
			out8 = 4'hC;
		6'bx1111x: begin
			out8 = 4'h7;
		endcase
	6'b0xxxx1: begin 
		//S8 row 2: 1 15 13 8 10 3 7 4 12 5 6 11 0 14 9 2
		casex (in8)
		6'bx0000x: begin
			out8 = 4'h1;
		6'bx0001x: begin
			out8 = 4'hF;
		6'bx0010x: begin
			out8 = 4'hD;
		6'bx0011x: begin
			out8 = 4'h8;
		6'bx0100x: begin
			out8 = 4'hA;
		6'bx0101x: begin
			out8 = 4'h3;
		6'bx0110x: begin
			out8 = 4'h7;
		6'bx0111x: begin
			out8 = 4'h4;
		6'bx1000x: begin
			out8 = 4'hC;
		6'bx1001x: begin
			out8 = 4'h5;
		6'bx1010x: begin
			out8 = 4'h6;
		6'bx1011x: begin
			out8 = 4'hB;
		6'bx1100x: begin
			out8 = 4'h0;
		6'bx1101x: begin
			out8 = 4'hE;
		6'bx1110x: begin
			out8 = 4'h9;
		6'bx1111x: begin
			out8 = 4'h2;
		endcase
		
	6'b1xxxx0: begin 	
		//S8 row 3: 7 11 4 1 9 12 14 2 0 6 10 13 15 3 5 8
		casex (in8)
		6'bx0000x: 
			out8 = 4'h7;
		6'bx0001x: begin
			out8 = 4'hB;
		6'bx0010x: begin
			out8 = 4'h4;
		6'bx0011x: begin
			out8 = 4'h1;
		6'bx0100x: begin
			out8 = 4'h9;
		6'bx0101x: begin
			out8 = 4'hC;
		6'bx0110x: begin
			out8 = 4'hE;
		6'bx0111x: begin
			out8 = 4'h2;
		6'bx1000x: begin
			out8 = 4'h0;
		6'bx1001x: begin
			out8 = 4'h6;
		6'bx1010x: begin
			out8 = 4'hA;
		6'bx1011x: begin
			out8 = 4'hD;
		6'bx1100x: begin
			out8 = 4'hF;
		6'bx1101x: begin
			out8 = 4'h3;
		6'bx1110x: begin
			out8 = 4'h5;
		6'bx1111x: begin
			out8 = 4'h8;
		endcase
	
	6'b1xxxx1: begin 
		//S8 row 4: 2 1 14 7 4 10 8 13 15 12 9 0 3 5 6 11
		casex (in8)
		6'bx0000x: 
			out8 = 4'h2;
		6'bx0001x: begin
			out8 = 4'h1;
		6'bx0010x: begin
			out8 = 4'hE;
		6'bx0011x: begin
			out8 = 4'h7;
		6'bx0100x: begin
			out8 = 4'h4;
		6'bx0101x: begin
			out8 = 4'hA;
		6'bx0110x: begin
			out8 = 4'h8;
		6'bx0111x: begin
			out8 = 4'hD;
		6'bx1000x: begin
			out8 = 4'hF;
		6'bx1001x: begin
			out8 = 4'hC;
		6'bx1010x: begin
			out8 = 4'h9;
		6'bx1011x: begin
			out8 = 4'h0;
		6'bx1100x: begin
			out8 = 4'h3;
		6'bx1101x: begin
			out8 = 4'h5;
		6'bx1110x: begin
			out8 = 4'h6;
		6'bx1111x: begin
			out8 = 4'hB;
		endcase
	endcase

endmodule
