`timescale 1ns / 1ps

module CNN_tb;

	// ‰»Î
	reg clk;
	reg rst;

	//  ‰≥ˆ
	wire [3:0] numberOfTimes_PatterDetected;

	CNN uut (
		.clk(clk),
		.rst(rst),
		.numberOfTimes_PatterDetected(numberOfTimes_PatterDetected)
	);
	
	initial begin
		clk = 0;
		rst = 1;
		#10;
		rst = 0;
	end
	
	always #5 clk = ~clk;
endmodule