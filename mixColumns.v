`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:16:00 09/18/2020 
// Design Name: 
// Module Name:    mixColumns 
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
module mixColumns(input [127:0] in, output [127:0] out);
/* mix column matrix for encryp
	2 3 1 1
	1 2 3 1
	1 1 2 3
	3 1 1 2
*/
//row1
assign out[7:0]=multiply(in[7:0],in[15:8],in[23:16],in[31:24]);
assign out[39:32]=multiply(in[39:32],in[47:40],in[55:48],in[63:56]);
assign out[71:64]=multiply(in[71:64],in[79:72],in[87:80],in[95:88]);
assign out[103:96]=multiply(in[103:96],in[111:104],in[119:112],in[127:120]);
//row2
assign out[15:8]=multiply(in[15:8],in[23:16],in[31:24],in[7:0]);
assign out[47:40]=multiply(in[47:40],in[55:48],in[63:56],in[39:32]);
assign out[79:72]=multiply(in[79:72],in[87:80],in[95:88],in[71:64]);
assign out[111:104]=multiply(in[111:104],in[119:112],in[127:120],in[103:96]);
//row3
assign out[23:16]=multiply(in[23:16],in[31:24],in[7:0],in[15:8]);
assign out[55:48]=multiply(in[55:48],in[63:56],in[39:32],in[47:40]);
assign out[87:80]=multiply(in[87:80],in[95:88],in[71:64],in[79:72]);
assign out[119:112]=multiply(in[119:112],in[127:120],in[103:96],in[111:104]);
//row4
assign out[31:24]=multiply(in[31:24],in[7:0],in[15:8],in[23:16]);
assign out[63:56]=multiply(in[63:56],in[39:32],in[47:40],in[55:48]);
assign out[95:88]=multiply(in[95:88],in[71:64],in[79:72],in[87:80]);
assign out[127:120]=multiply(in[127:120],in[103:96],in[111:104],in[119:112]);

function [7:0] multiply; //i1*2 ^ i2*3 ^ i3*1 ^ i4*1
input [7:0] i1,i2,i3,i4;
begin
multiply = (i1*8'd2)^(i2*8'd3)^(i3)^(i4);
end
endfunction
endmodule
