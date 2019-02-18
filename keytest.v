`timescale 1ns / 1ps

module keytest;

	reg [63:0] KEY;
	
	wire [47:0] r_key1;
	wire [47:0] r_key2;
	wire [47:0] r_key3;
	wire [47:0] r_key4;
	wire [47:0] r_key5;
	wire [47:0] r_key6;
	wire [47:0] r_key7;
	wire [47:0] r_key8;
	wire [47:0] r_key9;
	wire [47:0] r_key10;
	wire [47:0] r_key11;
	wire [47:0] r_key12;
	wire [47:0] r_key13;
	wire [47:0] r_key14;
	wire [47:0] r_key15;
	wire [47:0] r_key16;
	
	key_gen k(
		.r_key1( r_key1),
		.r_key2( r_key2),
		.r_key3( r_key3),
		.r_key4( r_key4),
		.r_key5( r_key5),
		.r_key6( r_key6),
		.r_key7( r_key7),
		.r_key8( r_key8),
		.r_key9( r_key9),
		.r_key10( r_key10),
		.r_key11( r_key11),
		.r_key12( r_key12),
		.r_key13( r_key13),
		.r_key14( r_key14),
		.r_key15( r_key15),
		.r_key16( r_key16),
	
		.KEY(KEY)
	);
	
	 initial begin
		KEY = 64'h8FFB3DD99EEA2CC8;
		#5;
		$display("Key: %h", KEY);
		#20;
		$display("Round key 1 %h", r_key1);
		
		$finish;
		
	end
	
	endmodule
	
	