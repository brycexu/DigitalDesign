`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/05/28 21:17:26
// Design Name: 
// Module Name: relu2
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


module relu2(
    input enable,
    input signed[29:0] input5,
    output reg signed[29:0] output5,
    output reg done_relu2
    );
    generate
    genvar i,j,k;
        always @(posedge clk)begin
            if(enable) begin
                if(input5 > 30'd0)begin
                    output5 <= input5;
                end
                else begin
                    output5 = 30'd0;
                end
                done_relu2 = 1'd1;
            end
            else begin
                output5 = 30'd0;
                done_relu2 = 1'd0;
            end   
        end
    endgenerate
endmodule
