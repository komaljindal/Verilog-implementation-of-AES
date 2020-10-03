`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:34:22 09/20/2020 
// Design Name: 
// Module Name:    normalRound 
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
module normalRound(input clk, input[31:0]rcon, input[127:0]keyin, input[127:0]data, output[127:0]keyout, output[127:0] dataout);

wire [127:0]subout, shiftedrow,mixout;
key_expansion kex(rcon,keyin,keyout);
subBytes sb(data, subout);
shiftRows sr(subout,shiftedrow);
mixColumns mxc(shiftedrow,mixout);
assign dataout = keyout^mixout; //Add Round key
always@(*)
$display("%h",dataout);
endmodule
