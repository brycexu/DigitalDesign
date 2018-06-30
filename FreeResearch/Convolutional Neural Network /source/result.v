`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/06/07 21:31:12
// Design Name: 
// Module Name: result
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


module result(
    input signed[45:0] input9[0:9],
    output [4:0] numbers
    );
    wire signed[45:0]max;
    assign max = input9[0];
    generate
    genvar j;
    for(j = 1;j < 10;j = j + 1)
    begin: result0
        if(input9[j] > max)
            begin
                assign max = input9[j];
                assign numbers = j; 
            end 
        end
    endgenerate
endmodule
