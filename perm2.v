//perm2.v
//Permutation Choice 2 for Round Key Generator
//Compression P


module perm2(round_key_i, intermediate);
input [55:0] intermediate;
output [47:0] round_key_i;

//Possibly wrong

/*PC-2
14 17 11 24 1 5
3 28 15 6 21 10
23 19 12 4 26 8
16 7 27 20 13 2
41 52 31 37 47 55
30 40 51 45 33 48
44 49 39 56 34 53
46 42 50 36 29 32 
*/

assign round_key_i[0] = intermediate[14];
assign round_key_i[1] = intermediate[17];
assign round_key_i[2] = intermediate[11];
assign round_key_i[3] = intermediate[24];
assign round_key_i[4] = intermediate[1];
assign round_key_i[5] = intermediate[5];


assign round_key_i[6] = intermediate[3];
assign round_key_i[7] = intermediate[28];
assign round_key_i[8] = intermediate[15];
assign round_key_i[9] = intermediate[6];
assign round_key_i[10] = intermediate[21];


assign round_key_i[11] = intermediate[10];
assign round_key_i[12] = intermediate[23];
assign round_key_i[13] = intermediate[19];
assign round_key_i[14] = intermediate[12];
assign round_key_i[15] = intermediate[4];


assign round_key_i[16] = intermediate[26];
assign round_key_i[17] = intermediate[8];
assign round_key_i[18] = intermediate[16];
assign round_key_i[19] = intermediate[7];
assign round_key_i[20] = intermediate[27];


assign round_key_i[21] = intermediate[20];
assign round_key_i[22] = intermediate[13];
assign round_key_i[23] = intermediate[2];
assign round_key_i[24] = intermediate[41];
assign round_key_i[25] = intermediate[52];


assign round_key_i[26] = intermediate[31];
assign round_key_i[27] = intermediate[37];
assign round_key_i[28] = intermediate[47];
assign round_key_i[29] = intermediate[55];
assign round_key_i[30] = intermediate[30];


assign round_key_i[31] = intermediate[40];
assign round_key_i[32] = intermediate[51];
assign round_key_i[33] = intermediate[45];
assign round_key_i[34] = intermediate[33];
assign round_key_i[35] = intermediate[48];


assign round_key_i[36] = intermediate[44];
assign round_key_i[37] = intermediate[49];
assign round_key_i[38] = intermediate[39];
assign round_key_i[39] = intermediate[56];
assign round_key_i[40] = intermediate[34];


assign round_key_i[41] = intermediate[53];
assign round_key_i[42] = intermediate[46];
assign round_key_i[43] = intermediate[42];
assign round_key_i[44] = intermediate[50];
assign round_key_i[45] = intermediate[36];


assign round_key_i[46] = intermediate[29];
assign round_key_i[47] = intermediate[32];


endmodule
