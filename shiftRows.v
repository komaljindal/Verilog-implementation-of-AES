`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:57:11 09/18/2020 
// Design Name: 
// Module Name:    shiftRows 
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
module shiftRows(input [127:0] in, output [127:0] out);

//row1 unchanged
assign out[7:0]=in[7:0];
assign out[39:32]=in[39:32];
assign out[71:64]=in[71:64];
assign out[103:96]=in[103:96];
//row2 left shift by a byte
assign out[15:8]=in[47:40];
assign out[47:40]=in[79:72];
assign out[79:72]=in[111:104];
assign out[111:104]=in[15:8];
//row3 left shift by 2 bytes
assign out[23:16]=in[87:80];
assign out[55:48]=in[119:112];
assign out[87:80]=in[23:16];
assign out[119:112]=in[55:48];
//row4 left shift by 3 bytes
assign out[31:24]=in[127:120];
assign out[63:56]=in[31:24];
assign out[95:88]=in[63:56];
assign out[127:120]=in[95:88];

endmodule
