`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:28:56 04/19/2018
// Design Name:   RoughSignedtoFP
// Module Name:   C:/Users/152/Documents/Lab1/RoughSignedtoFP.v
// Project Name:  Lab1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: RoughSignedtoFP
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module RoughSignedtoFP_TB;

	// Inputs
	reg [10:0] in;

	// Outputs
	wire [2:0] exponent;
	wire [3:0] significand;
	wire fifthbit;

	// Instantiate the Unit Under Test (UUT)
	RoughSignedtoFP uut (
		.in(in), 
		.exponent(exponent), 
		.significand(significand), 
		.fifthbit(fifthbit)
	);

	initial begin
		in = 11'b000_0000_0000;	//Test all leading 0's cases w/ no fifthbit
		#3;
		in = 11'b000_0000_0001;
		#3; 
		in = 11'b000_0000_0010;
		#3;
		in = 11'b000_0000_0100;
		#3;
		in = 11'b000_0000_1000;
		#3;
		in = 11'b000_0001_0000;
		#3;
		in = 11'b000_0010_0000;
		#3;
		in = 11'b000_0100_0000;
		#3;
		in = 11'b000_1000_0000;
		#3;
		in = 11'b001_0000_0000;
		#3;
		in = 11'b010_0000_0000;
		#3;
		in = 11'b100_0000_0000;
		#3;
		in = 11'b001_1011_1100;	//Test Arbitrary Value w/ fifthbit
		#3;

	end
      
endmodule

