`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:36:47 05/10/2018
// Design Name:   SevenSegDisplay
// Module Name:   C:/Users/152/Documents/Lab3/SevenSegDisplay_TB.v
// Project Name:  Lab3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SevenSegDisplay
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module SevenSegDisplay_TB;

	// Inputs
	reg [2:0] counter3;
	reg [3:0] counter2;
	reg [2:0] counter1;
	reg [3:0] counter0;
	reg bigHz;
	reg blinkHz;
	reg [1:0] sel;

	// Outputs
	wire [7:0] seg;
	wire [3:0] an;

	// Instantiate the Unit Under Test (UUT)
	SevenSegDisplay uut (
		.counter3(counter3), 
		.counter2(counter2), 
		.counter1(counter1), 
		.counter0(counter0), 
		.seg(seg), 
		.an(an), 
		.bigHz(bigHz), 
		.blinkHz(blinkHz),
		.sel(sel)
	);

	initial begin
		// Initialize Inputs
		counter3 = 1;
		counter2 = 2;
		counter1 = 3;
		counter0 = 4;
		bigHz = 0;
		blinkHz = 0;
		sel = 2'b01;

		while(1) begin
			bigHz = ~bigHz;
			#1;
			bigHz = ~bigHz;
			#1;
			bigHz = ~bigHz;
			#1;
			bigHz = ~bigHz;
			#1;
			bigHz = ~bigHz;
			#1;
			blinkHz = ~blinkHz;
			#1;
			bigHz = ~bigHz;
			#1;
			bigHz = ~bigHz;
			#1;
			bigHz = ~bigHz;
			#1;
			bigHz = ~bigHz;
			#1;
			bigHz = ~bigHz;
			#1;
		end
		// Wait 100 ns for global reset to finish
        
		// Add stimulus here
	end
	
      
endmodule

