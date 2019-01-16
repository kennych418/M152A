`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:39:36 05/10/2018
// Design Name:   Counter
// Module Name:   C:/Users/152/Documents/Lab3/Counter_TB.v
// Project Name:  Lab3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Counter_TB;

	// Inputs
	reg oneHz;
	reg twoHz;
	reg [1:0] select;
	reg isAdj;

	// Outputs
	wire [2:0] counter3;
	wire [3:0] counter2;
	wire [2:0] counter1;
	wire [3:0] counter0;

	// Instantiate the Unit Under Test (UUT)
	Counter uut (
		.oneHz(oneHz), 
		.twoHz(twoHz), 
		.select(select), 
		.counter3(counter3), 
		.counter2(counter2), 
		.counter1(counter1), 
		.counter0(counter0), 
		.isAdj(isAdj)
	);

	initial begin
		// Initialize Inputs
		oneHz = 0;
		twoHz = 0;
		select = 2'b10;
		isAdj = 0;
		
		while(1) begin
			oneHz = ~oneHz;
			#1;
			twoHz = ~twoHz;
			#1;
			twoHz = ~twoHz;
			#1;
		end
		
		// Wait 100 ns for global reset to finish
        
		// Add stimulus here

	end
      
endmodule

