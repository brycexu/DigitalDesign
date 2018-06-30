`timescale 1ns / 1ps

module CNN_tb;

	//输入
	reg clk;
	reg rst;

	//输出：特征图像数目
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
