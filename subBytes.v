`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:39:10 09/18/2020 
// Design Name: 
// Module Name:    subBytes 
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
module subBytes(input [127:0] in, output[127:0] out);

sbox s1(in[7:0],out[7:0]);
sbox s2(in[15:8],out[15:8]);
sbox s3(in[23:16],out[23:16]);
sbox s4(in[31:24],out[31:24]);
sbox s5(in[39:32],out[39:32]);
sbox s6(in[47:40],out[47:40]);
sbox s7(in[55:48],out[55:48]);
sbox s8(in[63:56],out[63:56]);
sbox s9(in[71:64],out[71:64]);
sbox s10(in[79:72],out[79:72]);
sbox s11(in[87:80],out[87:80]);
sbox s12(in[95:88],out[95:88]);
sbox s13(in[103:96],out[103:96]);
sbox s14(in[111:104],out[111:104]);
sbox s15(in[119:112],out[119:112]);
sbox s16(in[127:120],out[127:120]);

endmodule
