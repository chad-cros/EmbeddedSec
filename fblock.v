// fblock.v
// constructs f block of DES encryption

module fblock (Rout, Rin, r_key);
	input [31:0] Rin;	//Input of 32 bits from prev. round's rightmost bits
	input [47:0] r_key ;	//Key to be XORed with prev. round's leftmost bits
	
	output [31:0] Rout;	//Round output

	wire [47:0] intermediate1 ;	//48 bits from 32 bits via Expansion P
	wire [47:0] intermediate2;	//48 bit round key XORed with Expansion P out
	wire [31:0] intermediate3;	//32 bits from 48 bit output of XOR
	
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
