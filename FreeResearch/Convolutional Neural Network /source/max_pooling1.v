`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/05/28 21:15:15
// Design Name: 
// Module Name: max_pooling1
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


module max_pooling1(
    input enable,
    input signed[29:0] input6_0,
    input signed[29:0] input6_1,
    input signed[29:0] input6_2,
    input signed[29:0] input6_3,
    output reg signed[29:0] output6,
    output reg done_max1
    );
    wire signed[29:0] input6[0:3];
    assign input6[0] = input6_0;
    assign input6[1] = input6_1;
    assign input6[2] = input6_2;
    assign input6[3] = input6_3;
    generate
    genvar i;
    always @(posedge clk)begin
        if (enable) begin
            for (i = 1;i < 4;i = i + 1)
            begin:max
                if (input6[i] > output6)
                begin
                    assign output6 = input6[i];
                end
            end
            done_max1 = 1'd1;
        end
        else begin
            ouput6 = input6[0];
            done_max1 = 1'd0;
        end
    end
    endgenerate
endmodule
