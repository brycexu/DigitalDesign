`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/05/28 20:40:19
// Design Name: 
// Module Name: relu1
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


module relu1(
    input enable,
    input signed[21:0] input2,
    output reg signed[21:0] output2,
    output reg done_relu1
    );
    always @(posedge clk)begin
        if(enable) begin
            if(input2 > 22'd0)begin
                output2 <= input2;
            end
            else begin
                output2 <= 22'd0;
            end
            done_relu1 <= 1'd1;
         end
         else begin
             output2 = 22'd0;
             done_relu1 <= 1'd0;
         end
     end
endmodule
