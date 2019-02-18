module endianSwap32(swappedOutput, originalInput);

output [31:0] swappedOutput;
input [31:0] originalInput;

assign originalInput[0] = swappedOutput[31];
assign originalInput[1] = swappedOutput[30];
assign originalInput[2] = swappedOutput[29];
assign originalInput[3] = swappedOutput[28];
assign originalInput[4] = swappedOutput[27];
assign originalInput[5] = swappedOutput[26];
assign originalInput[6] = swappedOutput[25];
assign originalInput[7] = swappedOutput[24];
assign originalInput[8] = swappedOutput[23];
assign originalInput[9] = swappedOutput[22];
assign originalInput[10] = swappedOutput[21];
assign originalInput[11] = swappedOutput[20];
assign originalInput[12] = swappedOutput[19];
assign originalInput[13] = swappedOutput[18];
assign originalInput[14] = swappedOutput[17];
assign originalInput[15] = swappedOutput[16];
assign originalInput[16] = swappedOutput[15];
assign originalInput[17] = swappedOutput[14];
assign originalInput[18] = swappedOutput[13];
assign originalInput[19] = swappedOutput[12];
assign originalInput[20] = swappedOutput[11];
assign originalInput[21] = swappedOutput[10];
assign originalInput[22] = swappedOutput[9];
assign originalInput[23] = swappedOutput[8];
assign originalInput[24] = swappedOutput[7];
assign originalInput[25] = swappedOutput[6];
assign originalInput[26] = swappedOutput[5];
assign originalInput[27] = swappedOutput[4];
assign originalInput[28] = swappedOutput[3];
assign originalInput[29] = swappedOutput[2];
assign originalInput[30] = swappedOutput[1];
assign originalInput[31] = swappedOutput[0];

endmodule
