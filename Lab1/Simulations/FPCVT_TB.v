`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:50:05 04/17/2018
// Design Name:   FPCVT
// Module Name:   C:/Users/152/Documents/Lab1/FPCVT_TB.v
// Project Name:  Lab1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FPCVT
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module FPCVT_TB;

	// Inputs
	reg [11:0] D;

	// Outputs
	wire S;
	wire [2:0] E;
	wire [3:0] F;

	// Instantiate the Unit Under Test (UUT)
	FPCVT uut (
		.D(D), 
		.S(S), 
		.E(E), 
		.F(F)
	);

	initial begin
		D = 12'b0000_0000_0000;	//Test 0
		#4
		D = 12'b0000_0000_0001;	//Test 1
		#4;
		D = 12'b0111_1111_1111;	//Test Tmax
		#4;
		D = 12'b1000_0000_0000;	//Test Tmin
		#4;
		D = 12'b1111_1111_1111;	//Test -1
		#4;
	end
      
endmodule

