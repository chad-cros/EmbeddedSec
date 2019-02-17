// fblock.v
// constructs f block of DES encryption

module fblock (Rout, Rin, r_key);
	input Rin[31:0];	//Input of 32 bits from prev. round's rightmost bits
	input r_key [47:0];	//Key to be XORed with prev. round's leftmost bits
	
	output Rout [31:0];	//Round output

	wire intermediate1 [47:0];	//48 bits from 32 bits via Expansion P
	wire intermediate2 [47:0];	//48 bit round key XORed with Expansion P out
	wire intermediate3 [31:0];	//32 bits from 48 bit output of XOR
	
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
