`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/05/28 20:57:20
// Design Name: 
// Module Name: max_pooling
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


module max_pooling(
    input enable,
    input signed[21:0] input3_0,
    input signed[21:0] input3_1,
    input signed[21:0] input3_2,
    input signed[21:0] input3_3,
    output reg signed[21:0] output3,
    output reg done_max
    );
    wire signed[21:0] input3[0:3];
    assign input3[0] = input3_0;
    assign input3[1] = input3_1;
    assign input3[2] = input3_2;
    assign input3[3] = input3_3;
    generate
    genvar i;
    always @(posedge clk)begin 
        if (enable) begin
            for (i = 1;i < 4;i = i + 1)
            begin:max
                if (input3[i] > output3)
                begin
                    assign output3 = input3[i];
                end
            end
            done_max = 1'd1;
        end
        else begin
            output3 = input3[0];
            done_max = 1'd0;
        end
    end
    endgenerate
endmodule
