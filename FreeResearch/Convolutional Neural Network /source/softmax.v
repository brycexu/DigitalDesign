`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/05/29 19:38:03
// Design Name: 
// Module Name: softmax
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



module softmax(
    input enable,
    input signed[37:0]input8[0:1023],
    input signed[8:0]w[0:1023],
    input signed[8:0]b,
    output signed[45:0]output8,
    output reg done_softmax
    );
    generate
    genvar i;
    always @(posedge clk)begin
        if (enable) begin
            for (i = 0; i < 1024; i = i + 1)
            begin: mul1
                assign output8 = output8 + input8[i] * w[i];
            end
            if (i == 1024)begin
                assign output8 = output8 + b;
            end
            done_softmax = 1'd1;
        end
        else begin
            output8 = 46'd0;
            done_softmax = 1'd0;
        end
    end
    endgenerate
endmodule
