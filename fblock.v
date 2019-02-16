// fblock.v
// constructs f block of DES encryption

module fblock (Rout, Rin, r_key);
	input Rin[31:0];
	input r_key [47:0];
	
	output reg Rout [31:0];
	wire intermediate1 [47:0];
	wire intermediate2 [47:0];
	wire intermediate3 [31:0];
	
	eP expansionP(
		.out(intermediate1),
		.in(Rin)
	);
	
	assign intermediate2 = intermediate1 ^ r_key;
	
	sbox sboxes(
		.out(intermediate3),
		.in(intermediate2)
	);
	
	sP straightP(
		.out(Rout),
		.in(intermediate3)
	);

endmodule