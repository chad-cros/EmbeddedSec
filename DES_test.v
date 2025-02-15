// Instantiate DES_top to run

`timescale 1ns / 1ps


`define STRLEN 32
`define HalfClockPeriod 60
`define ClockPeriod `HalfClockPeriod * 2

module DES_test; 

	//checks if test was passed given expected and actual outputs
	task passTest;
      input [63:0] actualOut, expectedOut;
      input [`STRLEN*8:0] testType;
      inout [7:0] 	  passed;
      
      if(actualOut == expectedOut) begin $display ("%s passed", testType); passed = passed + 1; end
      else $display ("%s failed: 0x%x should be 0x%x", testType, actualOut, expectedOut);
   endtask

   //inputs
   reg 		  CLK; //not really needed
   reg [63:0] KEY;
   reg [63:0] PLAINTEXT;
   reg [15:0] 	  watchdog; //not really needed
   reg passed;
   
   // outputs
   wire [63:0] CIPHERTEXT;
   
   //for decryption
   reg [63:0] ciphertext_d;
   wire [63:0] plaintext_d;
   
   // Instantiate the Unit Under Test (UUT) Encryption
   DES_top uut (
		.CIPHER_TEXT(CIPHERTEXT),
		.PLAIN_TEXT(PLAINTEXT),
		.KEY(KEY)
   );
    
	//Instantiate Decryption
   DES_decrypt uut2 (
		.CIPHER_TEXT(ciphertext_d), 
		.PLAIN_TEXT(plaintext_d), 
		.KEY(KEY)
   );
   
   initial begin
		// Initialize inputs for TEST 1
		passed = 0;
		KEY = 64'h8FFB3DD99EEA2CC8; //64'h8FFB3DD99EEA2CC8; //133457799BBCDFF1; //
		PLAINTEXT = 64'hF7B3D591E6A2C480; //0123456789ABCDEF; //64'hF7B3D591E6A2C480;
		//ciphertext_d = 64'h0000000000000000;
		
		// Initialize Watchdog timer
		watchdog = 0;
		
		//Wait for global reset
		#(1 * `ClockPeriod);
		
		#1
			$display ("Test 1");
			$display ("Key used is %h", KEY);
			$display ("Plaintext %h", PLAINTEXT);
			#(1000 * `ClockPeriod);
			$display ("Ciphertext %h", CIPHERTEXT);
			passTest(CIPHERTEXT, 64'hA02D50F02AC817A1, "Results of DES encryption test", passed);
			
		#1 
			$display("Ciphertext for decryption %h", ciphertext_d);
			#(1000 * `ClockPeriod);
			$display("Plaintext decrypted %h", plaintext_d);
			passTest(plaintext_d, PLAINTEXT, "Results of DES decryption test", passed);
			
		#5
		//TEST 2
			KEY = 64'h133457799BBCDFF1;
			PLAINTEXT = 64'h0123456789ABCDEF; 
		#5
			$display ("\nTest 2");
			$display ("Key used is %h", KEY);
			$display ("Plaintext %h", PLAINTEXT);
			#(1000 * `ClockPeriod);
			$display ("Ciphertext %h", CIPHERTEXT);
			passTest(CIPHERTEXT, 64'hAC0A339F8F67C3C8, "Results of DES encryption test", passed);
			
		#1 
			$display("Ciphertext for decryption %h", ciphertext_d);
			#(1000 * `ClockPeriod);
			$display("Plaintext decrypted %h", plaintext_d);
			passTest(plaintext_d, PLAINTEXT, "Results of DES decryption test", passed);
		
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
   
  
	always @(*) begin 
		ciphertext_d = CIPHERTEXT; //needed to drive decryption (regs instead of wires)
	end
	   
   // Kill the simulation if the watchdog hits 64K cycles - shouldn't ever happen - no while loops
   always @*
     if (watchdog == 16'hFFFF)
     begin
     	$display("Watchdog Timer Expired.");
       $finish;
     end
   
endmodule