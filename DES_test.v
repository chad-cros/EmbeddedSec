// Instantiate DES_top to run

`timescale 1ns / 1ps


`define STRLEN 32
`define HalfClockPeriod 60
`define ClockPeriod `HalfClockPeriod * 2

module DES_test; 

	task passTest;
      input [63:0] actualOut, expectedOut;
      input [`STRLEN*8:0] testType;
      inout [7:0] 	  passed;
      
      if(actualOut == expectedOut) begin $display ("%s passed", testType); passed = passed + 1; end
      else $display ("%s failed: 0x%x should be 0x%x", testType, actualOut, expectedOut);
   endtask

   //inputs
   reg 		  CLK;
   reg [63:0] KEY;
   reg [63:0] PLAINTEXT;
   reg [15:0] 	  watchdog;
   reg passed;
   
   // outputs
   wire [63:0] CIPHERTEXT;
   
   // Instantiate the Unit Under Test (UUT)
   DES_top uut (
		.CIPHER_TEXT(CIPHERTEXT),
		.PLAIN_TEXT(PLAINTEXT),
		.KEY(KEY)
   );
   
   initial begin
		// Initialize inputs
		passed = 0;
		KEY = 64'h133457799BBCDFF1;
		PLAINTEXT = 64'h0123456789ABCDEF;
		
		// Initialize Watchdog timer
		watchdog = 0;
		
		//Wait for global reset
		#(1 * `ClockPeriod);
		
		#1
			$display ("Plaintext %h", PLAINTEXT);
			#(1 * `ClockPeriod);
			$display ("Ciphertext %h", CIPHERTEXT);
			passTest(CIPHERTEXT, 64'h85E813540F0AB405, "Results of DES test", passed);
		
		$finish;
		end
		
		
	initial begin
      CLK = 0;
   end
   
   // The following is correct if clock starts at LOW level at StartTime //
   always begin
      #`HalfClockPeriod CLK = ~CLK;
      #`HalfClockPeriod CLK = ~CLK;
      watchdog = watchdog +1;
     
   end
   
   // Kill the simulation if the watchdog hits 64K cycles
   always @*
     if (watchdog == 16'hFFFF)
     begin
     	$display("Watchdog Timer Expired.");
       $finish;
     end
   
endmodule