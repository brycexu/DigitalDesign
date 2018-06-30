`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/05/29 19:22:13
// Design Name: 
// Module Name: fc1
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


module fc1(
    input enable,
    input signed[29:0]input7[0:3135],
    input signed[8:0]w[0:3135],
    input signed[8:0]b,
    output signed[37:0]output7
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
        end
        else begin
            output7 = 38'd0;
        end
    end
    endgenerate    
endmodule
