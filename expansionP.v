//expansionP.v
//expansion P box for f block

module expansionP(out, in);

	input in[31:0];
	output out[47:0];
	
	/*
	E BIT-SELECTION TABLE
	32 1 2 3 4 5
	4 5 6 7 8 9
	8 9 10 11 12 13
	12 13 14 15 16 17
	16 17 18 19 20 21
	20 21 22 23 24 25
	24 25 26 27 28 29
	28 29 30 31 32 1 */
	
	//32 1 2 3 4 5 /*remember to subtract one so indicies are right*/
	assign out[0] = in[31];
	assign out[1] = in[0];
	assign out[2] = in[1];
	assign out[3] = in[2];
	assign out[4] = in[3];
	assign out[5] = in[4];
	
	//4 5 6 7 8 9
	assign out[6] = in[3];
	assign out[7] = in[4];
	assign out[8] = in[5];
	assign out[9] = in[6];
	assign out[10] = in[7];
	assign out[11] = in[8];
	
	//8 9 10 11 12 13
	assign out[12] = in[7];
	assign out[13] = in[8];
	assign out[14] = in[9];
	assign out[15] = in[10];
	assign out[16] = in[11];
	assign out[17] = in[12];
	
	//12 13 14 15 16 17
	assign out[18] = in[11];
	assign out[19] = in[12];
	assign out[20] = in[13];
	assign out[21] = in[14];
	assign out[22] = in[15];
	assign out[23] = in[16];
	
	//16 17 18 19 20 21
	assign out[24] = in[15];
	assign out[25] = in[16];
	assign out[26] = in[17];
	assign out[27] = in[18];
	assign out[28] = in[19];
	assign out[29] = in[20];
	
	//20 21 22 23 24 25
	assign out[30] = in[19];
	assign out[31] = in[20];
	assign out[32] = in[21];
	assign out[33] = in[22];
	assign out[34] = in[23];
	assign out[35] = in[24];
	
	//24 25 26 27 28 29
	assign out[36] = in[23];
	assign out[37] = in[24];
	assign out[38] = in[25];
	assign out[39] = in[26];
	assign out[40] = in[27];
	assign out[41] = in[28];
	
	//28 29 30 31 32 1
	assign out[42] = in[27];
	assign out[43] = in[28];
	assign out[44] = in[29];
	assign out[45] = in[30];
	assign out[46] = in[31];
	assign out[47] = in[0];
	
	
endmodule