//keygenbase.v
//Object oriented approach to generating keys for DES

module keygenbase(RoundKeyOut, LeftBitsOut, RightBitsOut, LeftBitsIn, RightBitsIn, R);
	
	//Inputs are the left and rightmost bits from previous rounds
	input [27:0] LeftBitsIn, RightBitsIn;
	//As well as a bit to determine the round (for switching between 1 & 2 bit shift)
	//Rounds are 0-15
	input [3:0] R;

	//Outputs are the left and rightmost bits shifted
	output [27:0] LeftBitsOut, RightBitsOut;
	//As well as the actual keygen
	output [47:0] RoundKeyOut;

	//Shift bits based on round
	assign LeftBitsOut = ((R == 4'h0 || R == 4'h1 || R == 4'h8 || R == 4'h15) ? LeftBitsIn << 1 : LeftBitsIn << 2 );
	assign RightBitsOut = ((R == 4'h0 || R == 4'h1 || R == 4'h8 || R == 4'h15) ? RightBitsIn << 1 : RightBitsIn << 2 );

	//Final step before key is generated. Input is Leftshifted Leftmost bits
	//concatenated with rightshifted rightmost bits
	perm2 finalPermutation(
		.round_key_i(RoundKeyOut),
		.intermediate( { LeftBitsOut , RightBitsOut } )
	);

endmodule
