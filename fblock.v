// fblock.v
// constructs f block of DES encryption
`include "EndianSwap48.v"
`include "EndianSwap32.v"

module fblock (Rout, Rin, r_key);
	input [31:0] Rin;	//Input of 32 bits from prev. round's rightmost bits
	input [47:0] r_key ;	//Key to be XORed with prev. round's leftmost bits
	
	output [31:0] Rout;	//Round output

	wire [47:0] intermediate1 ;	//48 bits from 32 bits via Expansion P
	wire [47:0] intermediate2;	//48 bit round key XORed with Expansion P out
	wire [47:0] intermediate22; //flip bits of intermediate 2
	wire [31:0] intermediate3;	//32 bits from 48 bit output of XOR
	wire [31:0] intermediate33; //flip bits of intermediate3
	
	expansionP ep( //Expansion permutation: takes 32 bit input and converts to 48 bits
		.out(intermediate1),
		.in(Rin)
	);
	
	assign intermediate2 = intermediate1 ^ r_key; //XOR with round key
	
	endianSwap48 es ( //change from little endian to big endian to prepare for sboxes
		.swappedOutput(intermediate22),
		.originalInput(intermediate2)	
	);
	
	sboxes sbox( //s-boxes: takes 48 bit input, divides into 8 groups of 6
				//sends each group of 6 bits to corresponding s-box, 
				//each s-box converts 6 bits to 4 bits, then 8 groups of 4 are concatenated
		.sout(intermediate3),
		.in(intermediate22)
	);
	
	endianSwap32 es2 ( //change from big endian back to little endian to proceed with algorithm
		.swappedOutput(intermediate33),
		.originalInput(intermediate3)
	);
	
	straightP sp( //straight permutation box: 32 bit input, 32 bit output
		.out(Rout),
		.in(intermediate33)
	);

endmodule
