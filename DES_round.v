// DES_round.v
// does one round of DES algorithms

module DES_round (CLK, round_in, r_key);

	input CLK;
	input round_in[63:0];
	input r_key[47:0];
	output reg round_out [63:0];
	
	wire L0[31:0];
	wire R0[31:0];
	wire fout[31:0]; //output of f block
	
	assign L0 = round_in[63:32];
	assign R0 = round_in[31:0];
	
	assign round_out[63:32] = R0; //wire right half directly to left half of next round
	
	//call f block
	f fblock(
		.Rin(R0),
		.r_key (r_key),
		.Rout(fout)	
	);
	
	assign round_out[31:0] =  fout ^ L0; // right half of next round is XOR of f block output and L0


endmodule