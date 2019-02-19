module endianSwap32(swappedOutput, originalInput);

output [31:0] swappedOutput;
input [31:0] originalInput;

assign swappedOutput[0] = originalInput[31];
assign swappedOutput[1] = originalInput[30];
assign swappedOutput[2] = originalInput[29];
assign swappedOutput[3] = originalInput[28];
assign swappedOutput[4] = originalInput[27];
assign swappedOutput[5] = originalInput[26];
assign swappedOutput[6] = originalInput[25];
assign swappedOutput[7] = originalInput[24];
assign swappedOutput[8] = originalInput[23];
assign swappedOutput[9] = originalInput[22];
assign swappedOutput[10] = originalInput[21];
assign swappedOutput[11] = originalInput[20];
assign swappedOutput[12] = originalInput[19];
assign swappedOutput[13] = originalInput[18];
assign swappedOutput[14] = originalInput[17];
assign swappedOutput[15] = originalInput[16];
assign swappedOutput[16] = originalInput[15];
assign swappedOutput[17] = originalInput[14];
assign swappedOutput[18] = originalInput[13];
assign swappedOutput[19] = originalInput[12];
assign swappedOutput[20] = originalInput[11];
assign swappedOutput[21] = originalInput[10];
assign swappedOutput[22] = originalInput[9];
assign swappedOutput[23] = originalInput[8];
assign swappedOutput[24] = originalInput[7];
assign swappedOutput[25] = originalInput[6];
assign swappedOutput[26] = originalInput[5];
assign swappedOutput[27] = originalInput[4];
assign swappedOutput[28] = originalInput[3];
assign swappedOutput[29] = originalInput[2];
assign swappedOutput[30] = originalInput[1];
assign swappedOutput[31] = originalInput[0];


endmodule
