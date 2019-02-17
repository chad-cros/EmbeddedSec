//Initial round permutation, (The part that happens before any of the
//actual cryptography. This essentially scrambles the input wires
//around to add obscurity.

module init (IT, PT);

	input [63:0] PT;	//Plaintext input
	output [63:0] IT;	//initial round text 
	
	//58 50 42 34 26 18 10 2
	assign IT[0] = PT[57];
	assign IT[1] = PT[49]; 
	assign IT[2] = PT[41];
	assign IT[3] = PT[33];
	assign IT[4] = PT[25];
	assign IT[5] = PT[17];
	assign IT[6] = PT[9];
	assign IT[7] = PT[1];
	
	//60 52 44 36 28 20 12 4
	assign IT[8] = PT[59];
	assign IT[9] = PT[51]; 
	assign IT[10] = PT[43];
	assign IT[11] = PT[35];
	assign IT[12] = PT[27];
	assign IT[13] = PT[19];
	assign IT[14] = PT[11];
	assign IT[15] = PT[3];
	
	//62 54 46 38 30 22 14 6
	assign IT[16] = PT[61];
	assign IT[17] = PT[53]; 
	assign IT[18] = PT[45];
	assign IT[19] = PT[37];
	assign IT[20] = PT[29];
	assign IT[21] = PT[21];
	assign IT[22] = PT[13];
	assign IT[23] = PT[5];
	
	//64 56 48 40 32 24 16 8
	assign IT[24] = PT[57];
	assign IT[25] = PT[49]; 
	assign IT[26] = PT[41];
	assign IT[27] = PT[33];
	assign IT[28] = PT[25];
	assign IT[29] = PT[17];
	assign IT[30] = PT[9];
	assign IT[31] = PT[1];
	
	//57 49 41 33 25 17 9 1
	assign IT[32] = PT[56];
	assign IT[33] = PT[48]; 
	assign IT[34] = PT[40];
	assign IT[35] = PT[32];
	assign IT[36] = PT[24];
	assign IT[37] = PT[16];
	assign IT[38] = PT[8];
	assign IT[39] = PT[0];
	
	//59 51 43 35 27 19 11 3
	assign IT[40] = PT[58];
	assign IT[41] = PT[50]; 
	assign IT[42] = PT[42];
	assign IT[43] = PT[34];
	assign IT[44] = PT[26];
	assign IT[45] = PT[18];
	assign IT[46] = PT[10];
	assign IT[47] = PT[2];
	
	//61 53 45 37 29 21 13 5
	assign IT[48] = PT[60];
	assign IT[49] = PT[52]; 
	assign IT[50] = PT[44];
	assign IT[51] = PT[36];
	assign IT[52] = PT[28];
	assign IT[53] = PT[20];
	assign IT[54] = PT[12];
	assign IT[55] = PT[4];
	
	//63 55 47 39 31 23 15 7 
	assign IT[56] = PT[62];
	assign IT[57] = PT[54]; 
	assign IT[58] = PT[46];
	assign IT[59] = PT[38];
	assign IT[60] = PT[30];
	assign IT[61] = PT[22];
	assign IT[62] = PT[14];
	assign IT[63] = PT[6];
	

endmodule
