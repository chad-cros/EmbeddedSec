//Final permutation before the ciphertext is output.
//Again, only for obscurity, no actual cryptography happens here

module final_perm (CT, preoutput);

	input [63:0] preoutput;
	output [63:0] CT; //Final round text 
	
	//40 8 48 16 56 24 64 32 /*remember to subtract one so indicies are right*/
	assign CT[0] = preoutput[39];
	assign CT[1] = preoutput[7]; 
	assign CT[2] = preoutput[47];
	assign CT[3] = preoutput[15];
	assign CT[4] = preoutput[55];
	assign CT[5] = preoutput[23];
	assign CT[6] = preoutput[63];
	assign CT[7] = preoutput[31];
	
	//39 7 47 15 55 23 63 31
	assign CT[8] = preoutput[38];
	assign CT[9] = preoutput[6]; 
	assign CT[10] = preoutput[46];
	assign CT[11] = preoutput[14];
	assign CT[12] = preoutput[54];
	assign CT[13] = preoutput[22];
	assign CT[14] = preoutput[62];
	assign CT[15] = preoutput[30];
	
	//38 6 46 14 54 22 62 30
	assign CT[16] = preoutput[37];
	assign CT[17] = preoutput[5]; 
	assign CT[18] = preoutput[45];
	assign CT[19] = preoutput[13];
	assign CT[20] = preoutput[53];
	assign CT[21] = preoutput[21];
	assign CT[22] = preoutput[61];
	assign CT[23] = preoutput[29];
	
	//37 5 45 13 53 21 61 29
	assign CT[24] = preoutput[36];
	assign CT[25] = preoutput[4]; 
	assign CT[26] = preoutput[44];
	assign CT[27] = preoutput[12];
	assign CT[28] = preoutput[52];
	assign CT[29] = preoutput[20];
	assign CT[30] = preoutput[60];
	assign CT[31] = preoutput[28];
	
	//36 4 44 12 52 20 60 28
	assign CT[32] = preoutput[35];
	assign CT[33] = preoutput[3]; 
	assign CT[34] = preoutput[43];
	assign CT[35] = preoutput[11];
	assign CT[36] = preoutput[51];
	assign CT[37] = preoutput[19];
	assign CT[38] = preoutput[59];
	assign CT[39] = preoutput[27];
	
	//35 3 43 11 51 19 59 27
	assign CT[40] = preoutput[34];
	assign CT[41] = preoutput[2]; 
	assign CT[42] = preoutput[42];
	assign CT[43] = preoutput[10];
	assign CT[44] = preoutput[50];
	assign CT[45] = preoutput[18];
	assign CT[46] = preoutput[58];
	assign CT[47] = preoutput[26];
	
	//34 2 42 10 50 18 58 26
	assign CT[48] = preoutput[33];
	assign CT[49] = preoutput[1]; 
	assign CT[50] = preoutput[41];
	assign CT[51] = preoutput[9];
	assign CT[52] = preoutput[49];
	assign CT[53] = preoutput[17];
	assign CT[54] = preoutput[57];
	assign CT[55] = preoutput[25];
	
	//33 1 41 9 49 17 57 25 
	assign CT[56] = preoutput[32];
	assign CT[57] = preoutput[0]; 
	assign CT[58] = preoutput[40];
	assign CT[59] = preoutput[8];
	assign CT[60] = preoutput[48];
	assign CT[61] = preoutput[16];
	assign CT[62] = preoutput[56];
	assign CT[63] = preoutput[24];
	

endmodule