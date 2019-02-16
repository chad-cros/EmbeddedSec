// fblock.v
// constructs f block of DES encryption

module fblock (Rin, r_key);
	input Rin[31:0];
	input r_key [47:0];
	
	output reg Rout [31:0];
	wire intermediate1 [47:0];
	wire intermediate2 [47:0];
	wire intermediate3 [31:0];
	
	eP expansionP(
		.in(Rin),
		.out(intermediate1)
	);
	
	assign intermediate2 = intermediate1 ^ r_key;
	
	sbox sboxes(
		.in(intermediate2),
		.out(intermediate3)
	);
	
	sP straightP(
		.in(intermediate3),
		.out(Rout)
	);

endmodule