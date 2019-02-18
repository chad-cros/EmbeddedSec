module endianSwap(swappedOutput, originalInput);
input [47:0] originalInput;
output [47:0] swappedOutput;

assign originalInput[0] = swappedOutput[47];
assign originalInput[1] = swappedOutput[46];
assign originalInput[2] = swappedOutput[45];
assign originalInput[3] = swappedOutput[44];
assign originalInput[4] = swappedOutput[43];
assign originalInput[5] = swappedOutput[42];
assign originalInput[6] = swappedOutput[41];
assign originalInput[7] = swappedOutput[40];
assign originalInput[8] = swappedOutput[39];
assign originalInput[9] = swappedOutput[38];
assign originalInput[10] = swappedOutput[37];
assign originalInput[11] = swappedOutput[36];
assign originalInput[12] = swappedOutput[35];
assign originalInput[13] = swappedOutput[34];
assign originalInput[14] = swappedOutput[33];
assign originalInput[15] = swappedOutput[32];
assign originalInput[16] = swappedOutput[31];
assign originalInput[17] = swappedOutput[30];
assign originalInput[18] = swappedOutput[29];
assign originalInput[19] = swappedOutput[28];
assign originalInput[20] = swappedOutput[27];
assign originalInput[21] = swappedOutput[26];
assign originalInput[22] = swappedOutput[25];
assign originalInput[23] = swappedOutput[24];
assign originalInput[24] = swappedOutput[23];
assign originalInput[25] = swappedOutput[22];
assign originalInput[26] = swappedOutput[21];
assign originalInput[27] = swappedOutput[20];
assign originalInput[28] = swappedOutput[19];
assign originalInput[29] = swappedOutput[18];
assign originalInput[30] = swappedOutput[17];
assign originalInput[31] = swappedOutput[16];
assign originalInput[32] = swappedOutput[15];
assign originalInput[33] = swappedOutput[14];
assign originalInput[34] = swappedOutput[13];
assign originalInput[35] = swappedOutput[12];
assign originalInput[36] = swappedOutput[11];
assign originalInput[37] = swappedOutput[10];
assign originalInput[38] = swappedOutput[9];
assign originalInput[39] = swappedOutput[8];
assign originalInput[40] = swappedOutput[7];
assign originalInput[41] = swappedOutput[6];
assign originalInput[42] = swappedOutput[5];
assign originalInput[43] = swappedOutput[4];
assign originalInput[44] = swappedOutput[3];
assign originalInput[45] = swappedOutput[2];
assign originalInput[46] = swappedOutput[1];
assign originalInput[47] = swappedOutput[0];



endmodule
