// Round key generator
//input is 64 bit key
module key_gen (, KEY);
	input rotate_amount;
	input [63:0] KEY;
	output [47:0] r_key1;
	output [47:0] r_key2;
	output [47:0] r_key3;
	output [47:0] r_key4;
	output [47:0] r_key5;
	output [47:0] r_key6;
	output [47:0] r_key7;
	output [47:0] r_key8;
	output [47:0] r_key9;
	output [47:0] r_key10;
	output [47:0] r_key11;
	output [47:0] r_key12;
	output [47:0] r_key13;
	output [47:0] r_key14;
	output [47:0] r_key15;
	output [47:0] r_key16;
	
	output reg [63:0] r_out;
	
	
	wire [55:0] p1;

	wire [27:0] C0; 
	wire [27:0] D0;
	wire [27:0] C1; 
	wire [27:0] D1;
	wire [27:0] C2; 
	wire [27:0] D2;
	wire [27:0] C3; 
	wire [27:0] D3;
	
	wire [27:0] C4; 
	wire [27:0] D4;
	wire [27:0] C5; 
	wire [27:0] D5;
	wire [27:0] C6; 
	wire [27:0] D6;
	wire [27:0] C7; 
	wire [27:0] D7;
	
	wire [27:0] C8; 
	wire [27:0] D8;
	wire [27:0] C9; 
	wire [27:0] D9;
	wire [27:0] C10; 
	wire [27:0] D10;
	wire [27:0] C11; 
	wire [27:0] D11;
	
	wire [27:0] C12; 
	wire [27:0] D12;
	wire [27:0] C13; 
	wire [27:0] D13;
	wire [27:0] C14; 
	wire [27:0] D14;
	wire [27:0] C15; 
	wire [27:0] D15;
	
	//initial permutation
	perm1 p1 (
		.in(r_in), 
		.out(p1)
	);
	
	//Round Key 1
	assign C0 = p1[55:28];
	assign D0 = p2[27:0];
	assign C1 = C0<<1;
	assign C1[0] = C0[27];
	assign D1 = D0<<1;
	assign D1[0] = D0[27];
	
	wire [55:0] int1; //intermediate wire to combind C1 and D1
	assign int1[55:28] = C1;
	assign int1 [27:0] = D1;
	perm2 r1 ( //Permutation choice 2 for round 1
		.in(int1),
		.out(r_key1)
	);
	
		//Round Key 2
	assign C2 = C1<<1;
	assign C2[0] = C1[27];
	assign D2 = D1<<1;
	assign D2[0] = D1[27];	
	wire [55:0] int2; //intermediate wire to combine C2 and D2
	assign int2[55:28] = C2;
	assign int2 [27:0] = D2;
	perm2 r2 ( //Permutation choice 2 for round 2
		.in(int2),
		.out(r_key2)
	);
			
		//Round Key 3
	assign C3 = C2<<2;
	assign C3[1:0] = C2[27:26];
	assign D3 = D2<<2;
	assign D3[1:0] = D2[27:26];	
	wire [55:0] int3; //intermediate wire to combine C3 and D3
	assign int3[55:28] = C3;
	assign int3 [27:0] = D3;
	perm2 r3 ( //Permutation choice 2 for round 3
		.in(int3),
		.out(r_key3)
	);

		//Round Key 4
	assign C4 = C3<<2;
	assign C4[1:0] = C3[27:26];
	assign D4 = D3<<2;
	assign D4[1:0] = D3[27:26];	
	wire [55:0] int4; //intermediate wire to combine C4 and D4
	assign int4[55:28] = C4;
	assign int4 [27:0] = D4;
	perm2 r4 ( //Permutation choice 2 for round 4
		.in(int4),
		.out(r_key4)
	);
	
		//Round Key 5
	assign C5 = C4<<2;
	assign C5[1:0] = C4[27:26];
	assign D5 = D4<<2;
	assign D5[1:0] = D4[27:26];	
	wire [55:0] int5; //intermediate wire to combine C5 and D5
	assign int5[55:28] = C5;
	assign int5 [27:0] = D5;
	perm2 r5 ( //Permutation choice 2 for round 5
		.in(int5),
		.out(r_key5)
	);
	
		//Round Key 6
	assign C6 = C5<<2;
	assign C6[1:0] = C5[27:26];
	assign D6 = D5<<2;
	assign D6[1:0] = D5[27:26];	
	wire [55:0] int6; //intermediate wire to combine C6 and D6
	assign int6[55:28] = C6;
	assign int6 [27:0] = D6;
	perm2 r6 ( //Permutation choice 2 for round 6
		.in(int6),
		.out(r_key6)
	);
	
		//Round Key 7
	assign C7 = C6<<2;
	assign C7[1:0] = C6[27:26];
	assign D7 = D6<<2;
	assign D7[1:0] = D6[27:26];	
	wire [55:0] int7; //intermediate wire to combine C7 and D7
	assign int7[55:28] = C7;
	assign int7 [27:0] = D7;
	perm2 r7 ( //Permutation choice 2 for round 7
		.in(int7),
		.out(r_key7)
	);
	
		//Round Key 8
	assign C8 = C7<<2;
	assign C8[1:0] = C7[27:26];
	assign D8 = D7<<2;
	assign D8[1:0] = D7[27:26];	
	wire [55:0] int8; //intermediate wire to combine C8 and D8
	assign int7[55:28] = C8;
	assign int7 [27:0] = D8;
	perm2 r7 ( //Permutation choice 2 for round 8
		.in(int8),
		.out(r_key8)
	);
	
	//NEED 8 more rounds
	

endmodule
