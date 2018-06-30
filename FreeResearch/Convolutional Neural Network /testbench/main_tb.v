`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/06/09 22:18:31
// Design Name: 
// Module Name: main_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module main_tb;
	reg clk;
	reg rst;
	wire [3:0] numbers;
	// Instantiate the Unit Under Test (UUT)
	main uut (
		.clk(clk),
		.rst(rst),
		.numbers(numbers)		
	);
	
	initial begin
		clk = 0;
		rst = 1;
		#10;
		rst = 0;
	end
	
	always #5 clk = ~clk;
endmodule

 
