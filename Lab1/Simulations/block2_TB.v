`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:01:07 04/19/2018
// Design Name:   block2
// Module Name:   C:/Users/152/Documents/Lab1/block2_TB.v
// Project Name:  Lab1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: block2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module block2_TB;

	// Inputs
	reg [10:0] in;

	// Outputs
	wire [2:0] exponent;
	wire [3:0] significand;
	wire fifthbit;

	// Instantiate the Unit Under Test (UUT)
	block2 uut (
		.in(in), 
		.exponent(exponent), 
		.significand(significand), 
		.fifthbit(fifthbit)
	);

	initial begin
		// Initialize Inputs
		in = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

