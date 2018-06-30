`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/05/28 19:37:21
// Design Name: 
// Module Name: conv1
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


module conv1(
    input enable,
    input signed w[0:224],
    input signed[8:0] b,
    input signed input1[0:224],
    output reg signed[21:0] output1,
    output reg done_conv1
    );
    reg signed temp[0:424];
    generate
    genvar i;
    always @(posedge clk)begin
        if(enable)begin
            for (i = 0;i < 25;i = i + 1)
            begin:mul
                assign temp[i] = input1[i] * w[i];
                assign output1 = output1 + temp[i];
            end
            assign output1 = output1 + b;
            done_conv1 = 1'd1;
        end
        else begin
            output1 = 22'd0;
            done_conv1 = 1'd0;
        end
    end
    endgenerate            
endmodule
