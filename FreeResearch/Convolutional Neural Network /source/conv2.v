`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/05/28 21:11:00
// Design Name: 
// Module Name: conv2
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


module conv2(
   input enable,
   input signed[7199:0] w_temp,
   input signed[8:0] b,
   input signed[17599:0] input4_temp,
   output reg signed[29:0] output4,
   output reg done_conv2
   );
   reg signed[29:0] temp[0:799];  
   reg signed[8:0] w[0:799];
   reg signed[21:0] input4[0:799];
   reg enable1;
   generate
   genvar c1,c2;
       if(enable)begin
           for(c1 = 0;c1 < 800;c1 = c1 + 1)begin:c_1
               assign w[c1] = w_temp[9 * c1:9 * c1 + 8];
           end
           for(c2 = 0;c2 < 800;c2 = c2 + 1)begin:c_2
               assign input4[c2] = input4_temp[22 * c2:22 * c2 + 21];
           end
           if(c2 == 800)begin
               assign enable = 1'd0;
               assign enable1 = 1'd1; 
           end
       end
       else begin
           assign enable1 = 1'd0;
       end
   endgenerate
   generate
   genvar i;
   always @(posedge clk)begin
       if(enable1)begin
           for (i = 0;i < 800;i = i + 1)
           begin:mul
               assign temp[i] = input4[i] * w[i];
               assign output4 = output4 + temp[i];
           end
           assign output4 = output4 + b;
           done_conv2 = 1'd1;
       end
       else begin
           output4 = 29'd0;
           done_conv2 = 1'd0;
       end
   end
   endgenerate
endmodule
