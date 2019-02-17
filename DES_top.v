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


module DES_top (CIPHER_TEXT, CLK, PLAIN_TEXT, KEY)

input CLK; 
input [63:0] PLAIN_TEXT;
input [63:0] KEY;
output [63:0] CIPHER_TEXT;

//16 bit array of keys with bit length of 48, used for round_key gen

reg [47:0] round_key[15:0];

//First step is to generate the keys used in the DES System
always@(posedge CLK) begin
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
end
	



//round()

//inital


//round1

//round2

//round3

//round4

//round5

//round6

//round7

//round8

//round9

//round10

//round11

//round12

//round13

//round14

//round15

//round16
