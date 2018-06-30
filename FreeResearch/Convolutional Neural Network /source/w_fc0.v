`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/06/22 11:27:57
// Design Name: 
// Module Name: w_fc0
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

module w_fc0(
    input clk,
    input enable,
    input signed[29:0]input7[0:3135],
    input signed[8:0]w[0:3135],
    input signed[8:0]b,
    output reg signed[37:0]output7,
    output reg done_fc0
    );
    generate
    genvar i;
        always @(posedge clk)begin
            if (enable) begin
                for (i = 0; i < 3136; i = i + 1)
                begin: mul1
                    assign output7 = output7 + input7[i] * w[i];
                end
                if (i == 3136)begin
                    assign output7 = output7 + b;
                end
                done_fc0 = 1'd1;
            end
            else begin
                output7 = 38'd0;
                done_fc0 = 1'd0;
            end
        end
    endgenerate    
endmodule
