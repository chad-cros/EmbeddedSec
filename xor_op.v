module xor_op(out, CLK, in1, in2);
	input CLK;
	input [63:0] in1;
	input [63:0] in2;
	
	output reg [63:0] out;
	
	assign out = in1 ^ in2;
endmodule