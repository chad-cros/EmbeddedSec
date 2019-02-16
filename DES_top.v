`timescale 1ns / 1ps
`include "key_gen.v"
`include "init.v"
`include "perm1.v.v"
`include "xor_op.v"
`include "perm2.v"
`include "DES_round.v"
`include "fblock.v"
`include "expansionP.v"
`include "Sboxes.v"
`include "straightP.v"
`include "final"


module DES_top (CLK, RST, CHIP_SELECT_BAR, PLAIN_TEXT)
input CLK; 
input RST;

input CHIP_SELECT_BAR; //input ADDRESS;
input [64:1] PLAIN_TEXT;
input [64:1] KEY;
output [64:1] CIPHER_TEXT;

wire CLK;
wire RST;
wire CHIP_SELECT_BAR; //wire ADDRESS;
wire [64:1] KEY;
wire [64:1] PLAIN_TEXT;
wire [64:1] CIPHER_TEXT;




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