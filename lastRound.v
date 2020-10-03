`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:48:31 09/20/2020 
// Design Name: 
// Module Name:    lastRound 
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
module lastRound(input clk, input[31:0]rcon, input[127:0]keyin, input[127:0]data, output[127:0]keyout, output[127:0] dataout);

wire [127:0]subout, shiftedrow;
key_expansion kex(rcon,keyin,keyout);
subBytes sb(data, subout);
shiftRows sr(subout,shiftedrow);
assign dataout = keyout^shiftedrow;

endmodule
