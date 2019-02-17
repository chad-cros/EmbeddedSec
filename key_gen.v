`include "keygenbase.v"

// Round key generator
//input is 64 bit key
module key_gen (r_key1, r_key2, r_key3, r_key4, r_key5, r_key6, r_key7, r_key8, r_key9, r_key10, r_key11, r_key12, r_key13, r_key14, r_key15, r_key16, KEY);

	//Input of initial key
	input [63:0] KEY;
	//output of 16 unique keys, one per round of encryption
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
		
	//56 bit cypher key after initial parity drop
	wire [55:0] p1;

	//initial permutation
	perm1 p1 (
		.KEY(KEY), 
		.subkey(p1)
	);
	
	//Round Key 1
	//Outputs for the round to be passed to the next round
	wire [27:0] LBO0, RBO0;
	keygenbase k0(
		.RoundKeyOut(r_key1),
		.LeftBitsOut(LBO0),
		.RightBitsOut(RBO0),
		.LeftBitsIn(p1[55:28]),
		.RightBitsIn(p1[27:0]),
		.R(4'h0)
	);
    
    wire [27:0] LBO1, RBO1;
    keygenbase k1(
        .RoundKeyOut(r_key2),
        .LeftBitsOut(LBO1),
        .RightBitsOut(RBO1),
        .LeftBitsIn(LBO0),
        .RightBitsIn(RBO0),
        .R(4'h1)
    );

    wire [27:0] LBO2, RBO2;
    keygenbase k2(
        .RoundKeyOut(r_key3),
        .LeftBitsOut(LBO2),
        .RightBitsOut(RBO2),
        .LeftBitsIn(LBO1),
        .RightBitsIn(RBO1),
        .R(4'h2)
    );

    wire [27:0] LBO3, RBO3;
    keygenbase k3(
        .RoundKeyOut(r_key4),
        .LeftBitsOut(LBO3),
        .RightBitsOut(RBO3),
        .LeftBitsIn(LBO2),
        .RightBitsIn(RBO2),
        .R(4'h3)
    );

    wire [27:0] LBO4, RBO4;
    keygenbase k4(
        .RoundKeyOut(r_key5),
        .LeftBitsOut(LBO4),
        .RightBitsOut(RBO4),
        .LeftBitsIn(LBO3),
        .RightBitsIn(RBO3),
        .R(4'h4)
    );

    wire [27:0] LBO5, RBO5;
    keygenbase k5(
        .RoundKeyOut(r_key6),
        .LeftBitsOut(LBO5),
        .RightBitsOut(RBO5),
        .LeftBitsIn(LBO4),
        .RightBitsIn(RBO4),
        .R(4'h5)
    );

    wire [27:0] LBO6, RBO6;
    keygenbase k6(
        .RoundKeyOut(r_key7),
        .LeftBitsOut(LBO6),
        .RightBitsOut(RBO6),
        .LeftBitsIn(LBO5),
        .RightBitsIn(RBO5),
        .R(4'h6)
    );

    wire [27:0] LBO7, RBO7;
    keygenbase k7(
        .RoundKeyOut(r_key8),
        .LeftBitsOut(LBO7),
        .RightBitsOut(RBO7),
        .LeftBitsIn(LBO6),
        .RightBitsIn(RBO6),
        .R(4'h7)
    );

    wire [27:0] LBO8, RBO8;
    keygenbase k8(
        .RoundKeyOut(r_key9),
        .LeftBitsOut(LBO8),
        .RightBitsOut(RBO8),
        .LeftBitsIn(LBO7),
        .RightBitsIn(RBO7),
        .R(4'h8)
    );

    wire [27:0] LBO9, RBO9;
    keygenbase k9(
        .RoundKeyOut(r_key10),
        .LeftBitsOut(LBO9),
        .RightBitsOut(RBO9),
        .LeftBitsIn(LBO8),
        .RightBitsIn(RBO8),
        .R(4'h9)
    );

    wire [27:0] LBO10, RBO10;
    keygenbase k10(
        .RoundKeyOut(r_key11),
        .LeftBitsOut(LBO10),
        .RightBitsOut(RBO10),
        .LeftBitsIn(LBO9),
        .RightBitsIn(RBO9),
        .R(4'ha)
    );

    wire [27:0] LBO11, RBO11;
    keygenbase k11(
        .RoundKeyOut(r_key12),
        .LeftBitsOut(LBO11),
        .RightBitsOut(RBO11),
        .LeftBitsIn(LBO10),
        .RightBitsIn(RBO10),
        .R(4'hb)
    );

    wire [27:0] LBO12, RBO12;
    keygenbase k12(
        .RoundKeyOut(r_key13),
        .LeftBitsOut(LBO12),
        .RightBitsOut(RBO12),
        .LeftBitsIn(LBO11),
        .RightBitsIn(RBO11),
        .R(4'hc)
    );

    wire [27:0] LBO13, RBO13;
    keygenbase k13(
        .RoundKeyOut(r_key14),
        .LeftBitsOut(LBO13),
        .RightBitsOut(RBO13),
        .LeftBitsIn(LBO12),
        .RightBitsIn(RBO12),
        .R(4'hd)
    );

    wire [27:0] LBO14, RBO14;
    keygenbase k14(
        .RoundKeyOut(r_key15),
        .LeftBitsOut(LBO14),
        .RightBitsOut(RBO14),
        .LeftBitsIn(LBO13),
        .RightBitsIn(RBO13),
        .R(4'he)
    );

    wire [27:0] LBO15, RBO15;
    keygenbase k15(
        .RoundKeyOut(r_key16),
        .LeftBitsOut(LBO15),
        .RightBitsOut(RBO15),
        .LeftBitsIn(LBO14),
        .RightBitsIn(RBO14),
        .R(4'hf)
    );




endmodule
