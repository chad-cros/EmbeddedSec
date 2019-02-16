//straightP.v
//straight P-box for f block

module straightP(in);

	input in[31:0];
	output reg out[31:0];
	
	/*16 7 20 21
	29 12 28 17
	1 15 23 26
	5 18 31 10
	2 8 24 14
	32 27 3 9
	19 13 30 6
	22 11 4 25 */
	
	//16 7 20 21 /*remember to subtract one so indicies are right*/
	assign out[0] = in[15];
	assign out[1] = in[6];
	assign out[2] = in[19];
	assign out[3] = in[20];
	
	//29 12 28 17
	assign out[4] = in[28];
	assign out[5] = in[11];
	assign out[6] = in[27];
	assign out[7] = in[16];
	
	//1 15 23 26
	assign out[8] = in[0];
	assign out[9] = in[14];
	assign out[10] = in[22];
	assign out[11] = in[25];
	
	//5 18 31 10
	assign out[12] = in[4];
	assign out[13] = in[17];
	assign out[14] = in[30];
	assign out[15] = in[9];
	
	//2 8 24 14
	assign out[16] = in[1];
	assign out[17] = in[7];
	assign out[18] = in[23];
	assign out[19] = in[13];
	
	//32 27 3 9
	assign out[20] = in[31];
	assign out[21] = in[26];
	assign out[22] = in[2];
	assign out[23] = in[8];
	
	//19 13 30 6
	assign out[20] = in[18];
	assign out[21] = in[12];
	assign out[22] = in[29];
	assign out[23] = in[5];
	
	//22 11 4 25
	assign out[24] = in[21];
	assign out[25] = in[10];
	assign out[26] = in[3];
	assign out[27] = in[24];

endmodule