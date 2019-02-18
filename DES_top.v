`timescale 1ns / 1ps
`include "key_gen.v"
`include "init.v"
`include "perm1.v"
`include "keygenbase.v"
`include "perm2.v"
`include "DES_round.v"
`include "fblock.v"
`include "expansionP.v"
`include "sboxes.v"
`include "straightP.v"
`include "final.v"


module DES_top (CIPHER_TEXT, PLAIN_TEXT, KEY);

input [63:0] PLAIN_TEXT;
input [63:0] KEY;
output [63:0] CIPHER_TEXT;

//16 arrays of keys with bit length of 48, used for round_key gen

reg [47:0] round_key[15:0];

//16 arrays of intermediate steps with bit length 64

reg [63:0] intermediateStage[15:0];

//First step is to generate the keys used in the DES System


always@(KEY) begin
    
    key_gen keygeneration(
        .r_key1(round_key[0]),
        .r_key2(round_key[1]),
        .r_key3(round_key[2]),
        .r_key4(round_key[3]),
        .r_key5(round_key[4]),
        .r_key6(round_key[5]),
        .r_key7(round_key[6]),
        .r_key8(round_key[7]),
        .r_key9(round_key[8]),
        .r_key10(round_key[9]),
        .r_key11(round_key[10]),
        .r_key12(round_key[11]),
        .r_key13(round_key[12]),
        .r_key14(round_key[13]),
        .r_key15(round_key[14]),
        .r_key16(round_key[15]),
        .KEY(KEY)
    );
   
    init initialround(
		.PT(PLAIN_TEXT),
		.IT(intermediateStage[0])
	);
	
    DES_round round1(
	.round_out(intermediateStage[1]),
	.round_in(intermediateStage[0]),
	.round_key(round_key[0])
    );

    DES_round round2(
        .round_out(intermediateStage[2]),
        .round_in(intermediateStage[1]),
        .round_key(round_key[1])
    );

    DES_round round3(
        .round_out(intermediateStage[3]),
        .round_in(intermediateStage[2]),
        .round_key(round_key[2])
    );

    DES_round round4(
        .round_out(intermediateStage[4]),
        .round_in(intermediateStage[3]),
        .round_key(round_key[3])
    );

    DES_round round5(
        .round_out(intermediateStage[5]),
        .round_in(intermediateStage[4]),
        .round_key(round_key[4])
    );

    DES_round round6(
        .round_out(intermediateStage[6]),
        .round_in(intermediateStage[5]),
        .round_key(round_key[5])
    );

    DES_round round7(
        .round_out(intermediateStage[7]),
        .round_in(intermediateStage[6]),
        .round_key(round_key[6])
    );

    DES_round round8(
        .round_out(intermediateStage[8]),
        .round_in(intermediateStage[7]),
        .round_key(round_key[7])
    );

    DES_round round9(
        .round_out(intermediateStage[9]),
        .round_in(intermediateStage[8]),
        .round_key(round_key[8])
    );

    DES_round round10(
        .round_out(intermediateStage[10]),
        .round_in(intermediateStage[9]),
        .round_key(round_key[9])
    );

    DES_round round11(
        .round_out(intermediateStage[11]),
        .round_in(intermediateStage[10]),
        .round_key(round_key[10])
    );

    DES_round round12(
        .round_out(intermediateStage[12]),
        .round_in(intermediateStage[11]),
        .round_key(round_key[11])
    );

    DES_round round13(
        .round_out(intermediateStage[13]),
        .round_in(intermediateStage[12]),
        .round_key(round_key[12])
    );

    DES_round round14(
        .round_out(intermediateStage[14]),
        .round_in(intermediateStage[13]),
        .round_key(round_key[13])
    );

    DES_round round15(
        .round_out(intermediateStage[15]),
        .round_in(intermediateStage[14]),
        .round_key(round_key[14])
    );

    DES_round round16(
        .round_out(intermediateStage[16]),
        .round_in(intermediateStage[15]),
        .round_key(round_key[15])
    );

    final final(
        .CT(CIPHER_TEXT),
        .preoutput(intermediateStage[16])
    );

end

endmodule
