`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:03:19 04/17/2018
// Design Name:   TwotoSigned
// Module Name:   C:/Users/152/Documents/Lab1/TwotoSigned_TB.v
// Project Name:  Lab1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: TwotoSigned
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TwotoSigned_TB;

	// Inputs
	reg [11:0] D;

	// Outputs
	wire [11:0] out;

	// Instantiate the Unit Under Test (UUT)
	TwotoSigned uut (
		.D(D), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		D = 12'b0000_0000_0000;	//Test 0
		#2;
		D = 12'b1000_0000_0000;	//Test Signbit & Tmin (Hardcoded Value)
		#2;
		D = 12'b0111_1111_1111; //Test Tmax
		#2;
		D = 12'b1111_1111_1111; //Test -1
		#2;
		D = 12'b1111_0010_0010; //Test arbitrary negative intermediate value
		#2;

	end
      
endmodule

