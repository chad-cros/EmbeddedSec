// DES_round.v
// does one round of DES algorithms

module DES_round (round_out, round_in, round_key);

	input round_in[63:0];	//64 bit input from previous round
	input round_key[47:0];	//48 bit key for specific round to be xored with left bits
	output round_out [63:0];	//64 bit output to next round
	
	wire LeftBits[31:0];	//Left 32 bits of input
	wire RightBits[31:0];	//Right 32 bits of input
	
	wire fout[31:0]; //output of f block
	
	assign LeftBits = round_in[63:32];
	assign RightBits = round_in[31:0];
	
	assign round_out[63:32] = RightBits; //wire right half directly to left half of output
	
	//call f block
	f fblock(
		.Rout(fout),
		.Rin(RightBits),
		.r_key (round_key)
	);
	
	assign round_out[31:0] =  fout ^ LeftBits; // right half of output is XORed of f block output and Left 32 bits of input


endmodule
