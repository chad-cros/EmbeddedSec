// DES_round.v
// does one round of DES algorithms

module DES_round (round_out, round_in, round_key);

	input [63:0] round_in;	//64 bit input from previous round
	input [47:0] round_key;	//48 bit key for specific round to be xored with left bits
	output [63:0] round_out;	//64 bit output to next round
	
	wire [31:0] LeftBits;	//Left 32 bits of input
	wire [31:0] RightBits;	//Right 32 bits of input
	
	wire [31:0] fout; //output of f block
	
	assign LeftBits = round_in[31:0]; //most significant bits go on left
	assign RightBits = round_in[63:32]; //least significant bits go on right
	
	assign round_out[31:0] = RightBits; //wire right half directly to left half of output
	
	//call f block
	fblock fblock(
		.Rout(fout),
		.Rin(RightBits),
		.r_key (round_key)
	);
	
	assign round_out[63:32] =  fout ^ LeftBits; // right half of output is XORed of f block output and Left 32 bits of input


endmodule
