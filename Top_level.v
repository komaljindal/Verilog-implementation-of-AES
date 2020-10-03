`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:51:10 09/20/2020 
// Design Name: 
// Module Name:    Top_level 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Top_level(input clk, input[127:0]in, output[127:0] dataout);

wire [127:0]temp;
aesEncrp aes(.clk(clk),.data(in),.key(128'h 2b7e151628aed2a6abf7158809cf4f3c),.out(temp));

assign dataout = temp;

endmodule
