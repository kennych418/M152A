`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:29:26 04/19/2018
// Design Name:   Rounding
// Module Name:   C:/Users/152/Documents/Lab1/Rounding_TB.v
// Project Name:  Lab1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Rounding
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Rounding_TB;

	// Inputs
	reg [2:0] exponent;
	reg [3:0] significand;
	reg fifthbit;

	// Outputs
	wire [2:0] E;
	wire [3:0] F;

	// Instantiate the Unit Under Test (UUT)
	Rounding uut (
		.exponent(exponent), 
		.significand(significand), 
		.fifthbit(fifthbit), 
		.E(E), 
		.F(F)
	);

	initial begin
		exponent = 3'b111;		//test when no rounding necessary
		significand = 4'b1111;
		fifthbit = 0;
		#2;
		exponent = 3'b000;		//test when rounding necessary
		significand = 4'b0000;
		fifthbit = 1;
		#2;
		exponent = 3'b000;		//test when rounding necessary & significand overflow
		significand = 4'b1111;
		fifthbit = 0;
		#2;
		exponent = 3'b111;		//test when rounding necessary & significand overflow & exponent full
		significand = 4'b1111;
		fifthbit = 0;
		#2;
        
	end
      
endmodule

