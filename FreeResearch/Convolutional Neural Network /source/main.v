`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/05/29 19:42:37
// Design Name: 
// Module Name: main
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


module main(
    input clk,
    input rst,
    output reg [3:0] numbers
    );    
    reg signed[8:0] imageArray[0:1023];
    reg signed[8:0] w_conv1[0:799];
    reg signed[8:0] w_conv2[0:51199];
    reg signed[8:0] b_conv1[0:31];
    reg signed[8:0] b_conv2[0:63];
    reg signed[8:0] w_fc1[0:3211263];
    reg signed[8:0] b_fc1[0:1023];
    reg signed[8:0] w_softmax[0:10239];
    reg signed[8:0] b_softmax[0:9];
    reg signed[8:0] w_conv_1[0:24];
    reg signed[8:0] w_conv_2[0:799];
    reg signed[8:0] b_conv_1;
    reg signed[8:0] b_conv_2;
    wire signed[21:0] result_2p[0:10367];
    b_conv1 b_conv1_(
        .douta(b_conv1) 
      );
      
    b_conv2 b_conv2_(
        .douta(b_conv2)
    );
    
    b_fc1 b_fc1_(
        .douta(b_fc1)
    );
    
    imageArray imageArray_(
        .douta(imageArray)
    );
    
    result_2p_init result(
        .douta(result_2p_init)
    );
    
    w_conv1 w_conv1_(
        .douta(w_conv1)
    );
    
    w_conv1_init w_conv1_init_(
        .douta(w_conv1_init)
    );
    
    w_conv2 w_conv2_(
        .douta(w_conv2)
    );
    
    w_conv2_init w_conv2_init_(
        .douta(w_conv2_init)
    );
    
    w_softmax w_softmax_(
        .douta(w_softmax)
    );
    
    w_fc1_0 w_fc1_0_(
        .douta(w_fc1_0)
    );
    
    w_fc1_1 w_fc1_1_(
        .douta(w_fc1_1)
    );
    
    w_fc1_2 w_fc1_2_(
        .douta(w_fc1_2)
    );
    
    w_fc1_3 w_fc1_3_(
        .douta(w_fc1_3)
    );
    
    w_fc1_4 w_fc1_4_(
        .douta(w_fc1_4)
    );
    
    w_fc1_5 w_fc1_5_(
        .douta(w_fc1_5)
    );
    
    w_fc1_6 w_fc1_6_(
        .douta(w_fc1_6)
    );
    
    w_fc1_7 w_fc1_7_(
        .douta(w_fc1_7)
    );
    
    w_fc1_8 w_fc1_8_(
        .douta(w_fc1_8)
    );
    
    w_fc1_9 w_fc1_9_(
        .douta(w_fc1_9)
    );
    
    w_fc1_10 w_fc1_10_(
        .douta(w_fc1_10)
    );
    
    w_fc1_11 w_fc1_11_(
        .douta(w_fc1_11)
    );
    
    w_fc1_12 w_fc1_12_(
        .douta(w_fc1_12)
    );

    assign b_softmax[0] = 9'b001100100;
    assign b_softmax[1] = 9'b001100001;
    assign b_softmax[2] = 9'b001100110;
    assign b_softmax[3] = 9'b001100110;
    assign b_softmax[4] = 9'b001100100;
    assign b_softmax[5] = 9'b001100011;
    assign b_softmax[6] = 9'b001011010;
    assign b_softmax[7] = 9'b001100011;
    assign b_softmax[8] = 9'b001110111;
    assign b_softmax[9] = 9'b001101100;
    assign b_conv_1 = 9'b001010001; 
    assign b_conv_2 = 9'b001001111;
  
    reg enable1,enable2,enable3,enable4,enable4_p,enable5,enalbe6,enable7,enable8,enable9;
    reg [5:0]para;
    reg [5:0]para3;
    reg signed[8:0] w_softmax_1[0:1023];
    reg signed[8:0] b_softmax_1;
    
    //conv1 shift
    wire signed[8:0]input1[0:24];
    wire signed[21:0]output1;
    wire signed[21:0]result_1[0:25087];
    reg [9:0]count1;
    reg [5:0]row_count;    

    conv1 conv_1(
        .enable(enable1),
        .w(w_conv_1),
        .b(b_conv_1),
        .input1(input1),
        .output1(output1),
        .done_conv1(done_conv1)
    );
    assign input1[0] = (enable1 && row_count < 6'd29) ? imageArray[count1 + 0] : 9'd0;
    assign input1[1] = (enable1 && row_count < 6'd29) ? imageArray[count1 + 1] : 9'd0;
    assign input1[2] = (enable1 && row_count < 6'd29) ? imageArray[count1 + 2] : 9'd0;
    assign input1[3] = (enable1 && row_count < 6'd29) ? imageArray[count1 + 3] : 9'd0;
    assign input1[4] = (enable1 && row_count < 6'd29) ? imageArray[count1 + 4] : 9'd0;
    assign input1[5] = (enable1 && row_count < 6'd29) ? imageArray[count1 + 28] : 9'd0;
    assign input1[6] = (enable1 && row_count < 6'd29) ? imageArray[count1 + 29] : 9'd0;
    assign input1[7] = (enable1 && row_count < 6'd29) ? imageArray[count1 + 30] : 9'd0;
    assign input1[8] = (enable1 && row_count < 6'd29) ? imageArray[count1 + 31] : 9'd0;
    assign input1[9] = (enable1 && row_count < 6'd29) ? imageArray[count1 + 32] : 9'd0;
    assign input1[10] = (enable1 && row_count < 6'd29) ? imageArray[count1 + 56] : 9'd0;
    assign input1[11] = (enable1 && row_count < 6'd29) ? imageArray[count1 + 57] : 9'd0;
    assign input1[12] = (enable1 && row_count < 6'd29) ? imageArray[count1 + 58] : 9'd0;
    assign input1[13] = (enable1 && row_count < 6'd29) ? imageArray[count1 + 59] : 9'd0;
    assign input1[14] = (enable1 && row_count < 6'd29) ? imageArray[count1 + 60] : 9'd0;
    assign input1[15] = (enable1 && row_count < 6'd29) ? imageArray[count1 + 84] : 9'd0;
    assign input1[16] = (enable1 && row_count < 6'd29) ? imageArray[count1 + 85] : 9'd0;
    assign input1[17] = (enable1 && row_count < 6'd29) ? imageArray[count1 + 86] : 9'd0;
    assign input1[18] = (enable1 && row_count < 6'd29) ? imageArray[count1 + 87] : 9'd0;
    assign input1[19] = (enable1 && row_count < 6'd29) ? imageArray[count1 + 88] : 9'd0;
    assign input1[20] = (enable1 && row_count < 6'd29) ? imageArray[count1 + 112] : 9'd0;
    assign input1[21] = (enable1 && row_count < 6'd29) ? imageArray[count1 + 113] : 9'd0;
    assign input1[22] = (enable1 && row_count < 6'd29) ? imageArray[count1 + 114] : 9'd0;
    assign input1[23] = (enable1 && row_count < 6'd29) ? imageArray[count1 + 115] : 9'd0;
    assign input1[24] = (enable1 && row_count < 6'd29) ? imageArray[count1 + 116] : 9'd0;
    
    reg [14:0]write = 15'd0;
       
    always @ (posedge clk)begin 
        if(rst)begin
            enable1 <= 1'd0;
            row_count <= 6'd1;
            count1 <= 10'd0;
            para <= 6'd0;
        end
        else begin
            enable1 <= 1'd1;
            if(enable1) begin
                if(row_count < 6'd29)begin
                    if(count1 < row_count * 6'd32 - 3'd4)begin
                        count1 <= count1 + 1'd1;
                        row_count <= row_count;
                    end
                    else begin
                        count1 <= row_count * 6'd32;
                        row_count <= row_count + 1'd1;
                    end
                end
                else if(para < 6'd31) begin
                    row_count <= 6'd1;
                    count1 <= 10'd0;
                    para <= para + 6'd1;
                    w_conv_1[0] <= w_conv1[(para + 1'd1) * 6'd25 + 4'd0];
                    w_conv_1[1] <= w_conv1[(para + 1'd1) * 6'd25 + 4'd1];
                    w_conv_1[2] <= w_conv1[(para + 1'd1) * 6'd25 + 4'd2];
                    w_conv_1[3] <= w_conv1[(para + 1'd1) * 6'd25 + 4'd3];
                    w_conv_1[4] <= w_conv1[(para + 1'd1) * 6'd25 + 4'd4];
                    w_conv_1[5] <= w_conv1[(para + 1'd1) * 6'd25 + 4'd5];
                    w_conv_1[6] <= w_conv1[(para + 1'd1) * 6'd25 + 4'd6];
                    w_conv_1[7] <= w_conv1[(para + 1'd1) * 6'd25 + 4'd7];
                    w_conv_1[8] <= w_conv1[(para + 1'd1) * 6'd25 + 4'd8];
                    w_conv_1[9] <= w_conv1[(para + 1'd1) * 6'd25 + 4'd9];
                    w_conv_1[10] <= w_conv1[(para + 1'd1) * 6'd25 + 4'd10];
                    w_conv_1[11] <= w_conv1[(para + 1'd1) * 6'd25 + 4'd11];
                    w_conv_1[12] <= w_conv1[(para + 1'd1) * 6'd25 + 4'd12];
                    w_conv_1[13] <= w_conv1[(para + 1'd1) * 6'd25 + 4'd13];
                    w_conv_1[14] <= w_conv1[(para + 1'd1) * 6'd25 + 4'd14];
                    w_conv_1[15] <= w_conv1[(para + 1'd1) * 6'd25 + 4'd15];
                    w_conv_1[16] <= w_conv1[(para + 1'd1) * 6'd25 + 4'd16];
                    w_conv_1[17] <= w_conv1[(para + 1'd1) * 6'd25 + 4'd17];
                    w_conv_1[18] <= w_conv1[(para + 1'd1) * 6'd25 + 4'd18];
                    w_conv_1[19] <= w_conv1[(para + 1'd1) * 6'd25 + 4'd19];
                    w_conv_1[20] <= w_conv1[(para + 1'd1) * 6'd25 + 4'd20];
                    w_conv_1[21] <= w_conv1[(para + 1'd1) * 6'd25 + 4'd21];
                    w_conv_1[22] <= w_conv1[(para + 1'd1) * 6'd25 + 4'd22];
                    w_conv_1[23] <= w_conv1[(para + 1'd1) * 6'd25 + 4'd23];
                    w_conv_1[24] <= w_conv1[(para + 1'd1) * 6'd25 + 4'd24];
                    b_conv_1 <= b_conv1[para + 1'd1];
                end
                else begin
                    enable1 <= 1'd0;
                    enable2 <= 1'd1;
                end   
            end 
        end
        if(done_conv1 && write < 15'd25088)begin
            result_1[write] <= output1; 
            write <= write + 1'b1;
        end
        else begin
            write <= 15'd0;
        end
    end
  
    
    //relu1
    wire signed[21:0]input2;
    wire signed[21:0]output2;
    wire [14:0]c2;
    wire [14:0]write_relu1;
    wire signed[21:0]result_relu1[0:25087];
    relu1 relu_1(
        .enable(enable2),
        .input2(input2),
        .output2(output2),
        .done_relu1(done_relu1)
    );
    always @(posedge clk)begin
        if(rst)begin
            enable2 <= 1'b0;
        end
        else begin
            if(enable2)begin
                if(c2 < 15'd25088)begin
                    input2 = result_1[c2];      
                    c2 = c2 + 1'd1;
                end
                else begin
                    enable2 = 1'd0;
                    enable3 = 1'd1;
                end             
            end
            else begin
                input2 <= 22'd0;
            end
        end    
        if (done_relu1 && write_relu1 < 15'd25088) begin
            result_relu1[write_relu1] <= output2;
            write_relu1 <= write_relu1 + 1'd1;
        end  
        else begin
            write_relu1 <= 15'd0;
        end
    end
    
    //max_pooling
    wire signed[21:0]input3[0:3];
    wire signed[21:0]output3;
    wire signed[21:0]result_2[0:6271];
    reg [14:0]count2;
    reg [4:0]row_count2;
    reg [4:0]high_count2;
    reg [14:0]write2 = 15'd0;
    max_pooling pooling(
        .enable(enable3),
        .input3_0(input3[0]),
        .input3_1(input3[1]),
        .input3_2(input3[2]),
        .input3_3(input3[3]),
        .output3(output3),
        .done_max(done_max)
    );
    assign input3[0] = (enable3 && high_count2 < 5'd33) ? result_relu1[count2 + 0] : 21'd0;
    assign input3[1] = (enable3 && high_count2 < 5'd33) ? result_relu1[count2 + 1] : 21'd0;
    assign input3[2] = (enable3 && high_count2 < 5'd33) ? result_relu1[count2 + 28] : 21'd0;
    assign input3[3] = (enable3 && high_count2 < 5'd33) ? result_relu1[count2 + 29] : 21'd0;
    always @(posedge clk)begin
        if(rst)begin
            enable3 <= 1'd0;
            count2 <= 15'd0;
            row_count2 <= 5'd1;
            high_count2 <= 5'd1;
        end
        else begin
            if(enable3)begin
                if(high_count2 < 6'd33)begin
                    if(row_count2 < 5'd29)begin
                        if(count2 < row_count2 * 5'd28 + (high_count2 - 1'd1) * 10'd784 - 1'd1)begin
                            count2 <= count2 + 1'd1;
                            row_count2 <= row_count2;
                            high_count2 <= high_count2;
                        end
                        else begin
                            count2 <= row_count2 * 5'd28 + (high_count2 - 1'd1) * 10'd784;
                            row_count2 <= row_count2 + 1'd1;
                            high_count2 <= high_count2;
                        end
                    end
                    else begin
                        count2 <= high_count2 * 10'd784;
                        row_count2 <= 5'd1;
                        high_count2 <= high_count2 + 1'd1;
                    end
                end 
                else begin
                    enable4_p <= 1'd1;
                    enable3 <= 1'd0;
                    row_count2 <= 5'd1;
                    high_count2 <= 5'd1;    
                end
            end
        end
        if(done_max && write2 < 15'd6272)begin
            result_2[write2] <= output3; 
            write2 <= write2 + 1'b1;
        end
    end
   //same padding
   generate
   genvar c4,c5,c6;
       if(enable4_p)begin
           for(c6 = 0;c6 < 32;c6 = c6 + 1)begin:x
               for(c5 = 0;c5 < 14;c5 = c5 + 1)begin:y
                   for(c4 = 0;c4 < 14;c4 = c4 + 1)begin:z
                       assign result_2p[2 + c4 + (2 + c5) * 14 + c6 * 32] = result_2[c4 + c5 * 14 + c6 * 32];
                   end
               end
           end
           if(c6 == 32)begin
               assign enable4_p = 1'd0;
               assign enable4 = 1'd1;
           end
       end
   endgenerate

    //conv2 shift
    //result_2p[18][18][32]
    wire signed[21:0]input4[0:799];
    wire signed[29:0]output4; 
    wire signed[29:0]result_3[0:12543];
    wire signed [17599:0]input4_temp;
    reg [8:0]count3;
    reg [3:0]row_count3;
    reg [13:0]write3 = 14'd0;
    conv2 conv_2(
        .enable(enable4),
        .w_temp(w_conv_2_temp),
        .b(b_conv_2),
        .input4_temp(input4_temp),
        .output4(output4),
        .done_conv2(done_conv2)
    );
    generate
    genvar c7,c71;
        for (c7 = 0;c7 < 32;c7 = c7 + 1)
        begin:c7
            assign input4[0 + c7 * 25] = (enable4 && row_count3 < 10'd15) ? result_2p[count3 + 0 + c7 * 196] : 22'd0;
            assign input4_temp[0] = (enable4 && row_count3 < 10'd15) ? result_2p[0] : 22'd0;
            assign input4[1 + c7 * 25] = (enable4 && row_count3 < 10'd15) ? result_2p[count3 + 1 + c7 * 196] : 22'd0;
            assign input4[2 + c7 * 25] = (enable4 && row_count3 < 10'd15) ? result_2p[count3 + 2 + c7 * 196] : 22'd0;
            assign input4[3 + c7 * 25] = (enable4 && row_count3 < 10'd15) ? result_2p[count3 + 3 + c7 * 196] : 22'd0;
            assign input4[4 + c7 * 25] = (enable4 && row_count3 < 10'd15) ? result_2p[count3 + 4 + c7 * 196] : 22'd0;
            assign input4[5 + c7 * 25] = (enable4 && row_count3 < 10'd15) ? result_2p[count3 + 18 + c7 * 196] : 22'd0;
            assign input4[6 + c7 * 25] = (enable4 && row_count3 < 10'd15) ? result_2p[count3 + 19 + c7 * 196] : 22'd0;
            assign input4[7 + c7 * 25] = (enable4 && row_count3 < 10'd15) ? result_2p[count3 + 20 + c7 * 196] : 22'd0;
            assign input4[8 + c7 * 25] = (enable4 && row_count3 < 10'd15) ? result_2p[count3 + 21 + c7 * 196] : 22'd0;
            assign input4[9 + c7 * 25] = (enable4 && row_count3 < 10'd15) ? result_2p[count3 + 22 + c7 * 196] : 22'd0;
            assign input4[10 + c7 * 25] = (enable4 && row_count3 < 10'd15) ? result_2p[count3 + 36 + c7 * 196] : 22'd0;
            assign input4[11 + c7 * 25] = (enable4 && row_count3 < 10'd15) ?  result_2p[count3 + 37 + c7 * 196] : 22'd0;
            assign input4[12 + c7 * 25] = (enable4 && row_count3 < 10'd15) ?  result_2p[count3 + 38 + c7 * 196] : 22'd0;
            assign input4[13 + c7 * 25] = (enable4 && row_count3 < 10'd15) ?  result_2p[count3 + 39 + c7 * 196] : 22'd0;
            assign input4[15 + c7 * 25] = (enable4 && row_count3 < 10'd15) ?  result_2p[count3 + 54 + c7 * 196] : 22'd0;
            assign input4[16 + c7 * 25] = (enable4 && row_count3 < 10'd15) ?  result_2p[count3 + 55 + c7 * 196] : 22'd0;
            assign input4[17 + c7 * 25] = (enable4 && row_count3 < 10'd15) ?  result_2p[count3 + 56 + c7 * 196] : 22'd0;
            assign input4[18 + c7 * 25] = (enable4 && row_count3 < 10'd15) ?  result_2p[count3 + 57 + c7 * 196] : 22'd0;
            assign input4[19 + c7 * 25] = (enable4 && row_count3 < 10'd15) ?  result_2p[count3 + 58 + c7 * 196] : 22'd0;
            assign input4[20 + c7 * 25] = (enable4 && row_count3 < 10'd15) ?  result_2p[count3 + 72 + c7 * 196] : 22'd0;
            assign input4[21 + c7 * 25] = (enable4 && row_count3 < 10'd15) ?  result_2p[count3 + 73 + c7 * 196] : 22'd0;
            assign input4[22 + c7 * 25] = (enable4 && row_count3 < 10'd15) ?  result_2p[count3 + 74 + c7 * 196] : 22'd0;
            assign input4[23 + c7 * 25] = (enable4 && row_count3 < 10'd15) ?  result_2p[count3 + 75 + c7 * 196] : 22'd0;
            assign input4[24 + c7 * 25] = (enable4 && row_count3 < 10'd15) ?  result_2p[count3 + 76 + c7 * 196] : 22'd0;
        end
    endgenerate
    if(c7 == 32)begin
        for(c71 = 0;c71 < 800;c71 = c71 + 1)begin
            assign input4_temp = {input4_temp,input4[c71]};
        end
    end
    generate
    genvar c8,c81;
        always @ (posedge clk)begin
            if(rst)begin
                enable4 <= 1'd0;
                row_count3 <= 4'd1;
                count3 <= 9'd0;
                para3 <= 6'd0;
            end
            else begin
                if(enable4) begin
                    if(row_count3 < 10'd15)begin
                        if(count3 < row_count3 * 6'd18 - 3'd4)begin
                            count3 <= count3 + 1'd1;
                            row_count3 <= row_count3;
                        end
                        else begin
                            count3 <= row_count3 * 6'd18;
                            row_count3 <= row_count3 + 1'd1;
                        end
                    end
                    else if (para3 < 6'd63)begin
                        row_count3 <= 4'd1;
                        count3 <= 9'd0;
                        para3 <= para3 + 1'd1;
                        w_conv_2_temp[0] <= w_conv2[(para3 + 1'd1) * 10'd800];
                        for(c8 = 0;c8 < 800;c8 = c8 + 1)begin:c8
                            w_conv_2[c8] <= w_conv2[(para3 + 1'd1) * 10'd800 + c8];
                        end
                        if(c8 == 800)begin
                            for(c81 = 1;c81 < 800;c81 = c81 + 1)begin:c8_1
                                w_conv2_temp = {w_conv2_temp,w_conv_2[c81]};
                            end
                        end
                        b_conv_2 <= b_conv2[para3 + 1'd1];
                    end
                    else begin
                        enable4 <= 1'd0;
                        enable5 <= 1'd1;                       
                    end
                end  
            end
            if(done_conv2 && write3 < 14'd12544)begin
                result_3[write3] <= output4;  
                write3 <= write3 + 1'b1;
            end
        end
    endgenerate
                         
    //relu2       
    wire signed[29:0]input5;
    wire signed[29:0]output5;
    wire[13:0] c_relu2;
    wire[13:0] write_relu2;
    wire signed[29:0] result_relu2[0:12543];
    relu2 relu_2(
        .enable(enable5),
        .input5(input5),
        .output5(output5),
        .done_relu2(done_relu2)
    );   
    generate
    genvar c9,c10;      
        always @(posedge clk)begin
            if(rst)begin
                enable5 <= 1'b0;
            end
            else begin
                if(enable5)begin
                    if(c_relu2 < 14'd12544)begin
                        input5 = result_3[c_relu2];
                        c_relu2 = c_relu2 + 1'd1;
                    end
                    else begin
                        enable5 = 1'd0;
                        enable6 = 1'd1;
                    end
                end
                else begin
                    input5 = 30'd0;
                end
            end
            if(done_relu2 && write_relu2 < 14'd12544)begin
                result_relu2[write_relu2] <= output5;
                write_relu2 <= write_relu2 + 1'd1;
            end      
            else begin
                write_relu2 <= 14'd0;
            end
        end 
    endgenerate                  
        
    //max_pooling2 shift    
    wire signed[29:0]input6[0:3];
    wire signed[29:0]output6;
    wire signed[29:0]result_4[0:3135];
    reg [7:0]count4;
    reg [3:0]row_count4;
    reg [8:0]high_count4;
    reg [11:0]write4 = 12'd0;
    max_pooling1 pooling1(
        .enable(enable6),
        .input6_0(input6[0]),
        .input6_1(input6[1]),
        .input6_2(input6[2]),
        .input6_3(input6[3]),
        .output6(output6),
        .done_max1(done_max1)
    );
    assign input6[0] = (enable6 && high_count4 < 9'd65) ? result_relu2[count4 + 0] : 30'd0;
    assign input6[1] = (enable6 && high_count4 < 9'd65) ? result_relu2[count4 + 1] : 30'd0;
    assign input6[2] = (enable6 && high_count4 < 9'd65) ? result_relu2[count4 + 14] : 30'd0;
    assign input6[3] = (enable6 && high_count4 < 9'd65) ? result_relu2[count4 + 15] : 30'd0;
    always @(posedge clk)begin
        if(rst)begin
            enable6 <= 1'd0;
            row_count4 <= 5'd1;
            high_count4 <= 5'd1;
        end
        else begin
            if(enable6)begin
                if(high_count4 < 9'd65)begin
                    if(row_count4 < 4'd15)begin
                        if(count4 < row_count4 * 4'd14 + (high_count4 - 1'd1) * 8'd196 - 1'd1)begin
                            count4 <= count4 + 1'd1;
                            row_count4 <= row_count4;
                            high_count4 <= high_count4;
                        end
                        else begin
                             count4 <= row_count4 * 4'd14 + (high_count4 - 1'd1) * 8'd196;
                             row_count4 <= row_count4 + 1'd1;
                             high_count4 <= high_count4;
                        end
                    end
                    else begin
                        count4 <= high_count4 * 8'd196;
                        row_count4 <= 5'd1;
                        high_count4 <= high_count4 + 1'd1;
                    end
                end 
                else begin
                    enable7 <= 1'd1;
                    enable6 <= 1'd0;
                    row_count4 <= 5'd1;
                    high_count4 <= 5'd1;    
                end   
            end
        end
        if(done_max1 && write4 < 12'd3136)begin
            result_4[write4] <= output6;  
            write4 <= write4 + 1'b1;
        end  
    end       
       
    //full connected layer
    wire signed[29:0] input7[0:3135];
    wire signed[37:0] output7_0;
    wire signed[37:0] output7_1;
    wire signed[37:0] output7_2;
    wire signed[37:0] output7_3;
    wire signed[37:0] output7_4;
    wire signed[37:0] output7_5;
    wire signed[37:0] output7_6;
    wire signed[37:0] output7_7;
    wire signed[37:0] output7_8;
    wire signed[37:0] output7_9;
    wire signed[37:0] output7_10;
    wire signed[37:0] output7_11;  
    wire signed[37:0] output7_12; 
    wire signed[37:0] result_5[0:1023];
    reg [6:0]count5;  
    reg [9:0]write5 = 10'd0;
    reg signed[8:0] w_fc_0[0:3135];
    reg signed[8:0] w_fc_1[0:3135];
    reg signed[8:0] w_fc_2[0:3135];
    reg signed[8:0] w_fc_3[0:3135];
    reg signed[8:0] w_fc_4[0:3135];
    reg signed[8:0] w_fc_5[0:3135];
    reg signed[8:0] w_fc_6[0:3135];
    reg signed[8:0] w_fc_7[0:3135];
    reg signed[8:0] w_fc_8[0:3135];
    reg signed[8:0] w_fc_9[0:3135];
    reg signed[8:0] w_fc_10[0:3135];
    reg signed[8:0] w_fc_11[0:3135];
    reg signed[8:0] w_fc_12[0:3135];
    reg signed[8:0] b_fc_0;
    reg signed[8:0] b_fc_1;
    reg signed[8:0] b_fc_2;
    reg signed[8:0] b_fc_3;
    reg signed[8:0] b_fc_4;
    reg signed[8:0] b_fc_5;
    reg signed[8:0] b_fc_6;
    reg signed[8:0] b_fc_7;
    reg signed[8:0] b_fc_8;
    reg signed[8:0] b_fc_9;
    reg signed[8:0] b_fc_10;
    reg signed[8:0] b_fc_11;
    reg signed[8:0] b_fc_12;
    w_fc0 fc_0(
       .clk(clk),
       .enable(enable7),
       .input7(input7),
       .w(w_fc_0),
       .b(b_fc_0),
       .output7(output7_0),
       .done_fc0(done_fc0)
    ); 
    
    w_fc1 fc_1(
       .clk(clk),
       .enable(enable7),
       .input7(input7),
       .w(w_fc_1),
       .b(b_fc_1),
       .output7(output7_1),
       .done_fc1(done_fc1)
    );    
    
    w_fc2 fc_2(
       .clk(clk),
       .enable(enable7),
       .input7(input7),
       .w(w_fc_2),
       .b(b_fc_2),
       .output7(output7_2),
       .done_fc2(done_fc2)
    );   
    
    w_fc3 fc_3(
       .clk(clk),
       .enable(enable7),
       .input7(input7),
       .w(w_fc_3),
       .b(b_fc_3),
       .output7(output7_3),
       .done_fc3(done_fc3)
    );
    
    w_fc4 fc_4(
       .clk(clk),
       .enable(enable7),
       .input7(input7),
       .w(w_fc_4),
       .b(b_fc_4),
       .output7(output7_4),
       .done_fc4(done_fc4)
    );
    
    w_fc5 fc_5(
       .clk(clk),
       .enable(enable7),
       .input7(input7),
       .w(w_fc_5),
       .b(b_fc_5),
       .output7(output7_5),
       .done_fc5(done_fc5)
    );
    
    w_fc6 fc_6(
       .clk(clk),
       .enable(enable7),
       .input7(input7),
       .w(w_fc_6),
       .b(b_fc_6),
       .output7(output7_6),
       .done_fc6(done_fc6)
    );
    
    w_fc7 fc_7(
       .clk(clk),
       .enable(enable7),
       .input7(input7),
       .w(w_fc_7),
       .b(b_fc_7),
       .output7(output7_7),
       .done_fc7(done_fc7)
    );
    
    w_fc8 fc_8(
       .clk(clk),
       .enable(enable7),
       .input7(input7),
       .w(w_fc_8),
       .b(b_fc_8),
       .output7(output7_8),
       .done_fc8(done_fc8)
    );
    
    w_fc9 fc_9(
       .clk(clk),
       .enable(enable7),
       .input7(input7),
       .w(w_fc_9),
       .b(b_fc_9),
       .output7(output7_9),
       .done_fc9(done_fc9)
    );
    
    w_fc10 fc_10(
       .clk(clk),
       .enable(enable7),
       .input7(input7),
       .w(w_fc_10),
       .b(b_fc_10),
       .output7(output7_10),
       .done_fc10(done_fc10)
    );
    
    w_fc11 fc_11(
       .clk(clk),
       .enable(enable7),
       .input7(input7),
       .w(w_fc_11),
       .b(b_fc_11),
       .output7(output7_11),
       .done_fc11(done_fc11)
    );
    
    w_fc12 fc_12(
       .clk(clk),
       .enable(enable7),
       .input7(input7),
       .w(w_fc_12),
       .b(b_fc_12),
       .output7(output7_12),
       .done_fc12(done_fc12)
    );
    assign input7 = (enable7 && count5 < 7'd80) ? result_4 : 30'd0; 
    generate 
    genvar c_0,c_1;     
        always @(posedge clk)begin
            if(rst)begin
                enable7 <= 1'd0;
                count5 <= 7'd0;
            end
            else begin
                if(enable7)begin
                    if(count5 < 7'd80)begin
                        for(c_0 = 0;c_0 < 3136;c_0 = c_0 + 1)begin:c
                            w_fc_0[c_0] <= w_fc1_0[count5 * 12'd3136 + c_0];
                            w_fc_1[c_0] <= w_fc1_1[count5 * 12'd3136 + c_0];
                            w_fc_2[c_0] <= w_fc1_2[count5 * 12'd3136 + c_0];
                            w_fc_3[c_0] <= w_fc1_3[count5 * 12'd3136 + c_0];
                            w_fc_4[c_0] <= w_fc1_4[count5 * 12'd3136 + c_0];
                            w_fc_5[c_0] <= w_fc1_5[count5 * 12'd3136 + c_0];
                            w_fc_6[c_0] <= w_fc1_6[count5 * 12'd3136 + c_0];
                            w_fc_7[c_0] <= w_fc1_7[count5 * 12'd3136 + c_0];
                            w_fc_8[c_0] <= w_fc1_8[count5 * 12'd3136 + c_0];
                            w_fc_9[c_0] <= w_fc1_9[count5 * 12'd3136 + c_0];
                            w_fc_10[c_0] <= w_fc1_10[count5 * 12'd3136 + c_0];
                            w_fc_11[c_0] <= w_fc1_11[count5 * 12'd3136 + c_0];
                        end
                        if(count5 < 7'd64)begin
                            for(c_1 = 0;c_1 < 3136;c_1 = c_1 + 1)begin:cc
                                w_fc_12[c_1] <= w_fc1_12[count5 * 12'd3136 + c_1];
                            end
                            b_fc_12 <= b_fc1[count5 + 11'd960];
                        end 
                        b_fc_0 <= b_fc1[count5]; 
                        b_fc_1 <= b_fc1[count5 + 11'd80];
                        b_fc_2 <= b_fc1[count5 + 11'd160];
                        b_fc_3 <= b_fc1[count5 + 11'd240];
                        b_fc_4 <= b_fc1[count5 + 11'd320];
                        b_fc_5 <= b_fc1[count5 + 11'd400];
                        b_fc_6 <= b_fc1[count5 + 11'd480];
                        b_fc_7 <= b_fc1[count5 + 11'd560];
                        b_fc_8 <= b_fc1[count5 + 11'd640];
                        b_fc_9 <= b_fc1[count5 + 11'd720];
                        b_fc_10 <= b_fc1[count5 + 11'd800];
                        b_fc_11 <= b_fc1[count5 + 11'd880];
                        count5 <= count5 + 1'd1;
                    end
                    else begin
                        count5 <= 7'd0;
                        enable7 <= 1'd0;
                        enable8 <= 1'd1;
                    end                 
                end
                if(done_fc0 && done_fc1 && done_fc2 && done_fc3 && done_fc4 && done_fc5 && done_fc6 && done_fc7 && done_fc8 && done_fc9 && done_fc10 && done_fc11 && write5 < 7'd80)begin
                    result_5[write5] <= output7_0;
                    result_5[write5 + 11'd80] <= output7_1;
                    result_5[write5 + 11'd160] <= output7_2;
                    result_5[write5 + 11'd240] <= output7_3;
                    result_5[write5 + 11'd320] <= output7_4;
                    result_5[write5 + 11'd400] <= output7_5;
                    result_5[write5 + 11'd480] <= output7_6;
                    result_5[write5 + 11'd560] <= output7_7;
                    result_5[write5 + 11'd640] <= output7_8;
                    result_5[write5 + 11'd720] <= output7_9;
                    result_5[write5 + 11'd800] <= output7_10;
                    result_5[write5 + 11'd880] <= output7_11;
                    if(done_fc12 && write5 < 7'd64)begin
                        result_5[write5 + 11'd960] <= output7_12;
                    end
                    write5 <= write5 + 1'b1;
                end 
            end
        end
    endgenerate
       
    //softmax
    wire signed [37:0] input8[0:1023];
    wire signed[45:0] output8;
    wire signed[45:0] result_6[0:9];      
    reg [3:0]count6;  
    reg [3:0]write6 = 4'd0;
    softmax softmax_1(
        .enable(enable8),
        .input8(input8),
        .w(w_softmax_1),
        .b(b_softmax_1),
        .output8(output8),
        .done_softmax(done_softmax)
    );   

    assign input8 = (enable8) ? result_5 : 30'd0;    
    generate
    genvar c12;
        always @(posedge clk)begin
            if(rst)begin
                enable8 <= 1'd0;
                count6 <= 10'd0;
            end
            else begin
                if(enable8)begin
                    if(count6 < 4'd10)begin
                        for(c12 = 0;c12 < 1024;c12 = c12 + 1)begin:c12
                            w_softmax_1[c12] <= w_softmax[count6 * 11'd1024 + c12];
                        end
                        b_softmax_1 <= b_softmax[count6]; 
                        count6 <= count6 + 1'd1;
                    end
                    else begin
                        count6 <= 4'd0;
                        enable8 <= 1'd0;
                    end               
                end
            end
            if(done_softmax && write6 < 4'd10)begin
                result_6[write6] <= output8;  
                write6 <= write6 + 1'b1;
            end                  
        end
    endgenerate
            
    //result
    wire signed[45:0]input9[0:9];
    wire signed[45:0]max;
    generate
    genvar c13;
        always @(posedge clk)begin            
            input9 = (enable9) ? result_6 : 46'd0;           
            max = (enable9) ? input9[0] : 46'd0;
            if(enable9)begin
                for(c13 = 1;c13 < 10;c13 = c13 + 1)
                begin: result0
                    if(input9[c13] > max)
                        begin
                            max = input9[c13];
                            numbers = c13; 
                        end 
                end
            end
            else begin
                numbers = 4'd0;
            end
        end
    endgenerate
endmodule
 