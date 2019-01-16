`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:28:17 05/08/2018
// Design Name:   Clock
// Module Name:   C:/Users/152/Documents/Lab3/Clock_TB.v
// Project Name:  Lab3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Clock
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Clock_TB;

	// Inputs
	reg testClk;

	// Outputs
	wire oneHz;
	wire twoHz;
	wire bigHz;
	wire blinkHz;
	
	//wire testClk;

	// Instantiate the Unit Under Test (UUT)
	Clock uut (
		.clk(testClk), 
		.oneHz(oneHz), 
		.twoHz(twoHz), 
		.bigHz(bigHz), 
		.blinkHz(blinkHz)
	);

	initial begin
		// Initialize Input
		
		testClk = 0;
		
		while(1) begin
			testClk = ~testClk;
			#1;
		end

		// Wait 100 ns for global reset to finish
      
		// Add stimulus here

	end
      
endmodule

