`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:53:50 09/18/2020 
// Design Name: 
// Module Name:    key_expansion 
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
module key_expansion(input [31:0] rcon, input [127:0] key, output [127:0] expanded_key);

wire [7:0] t1,t2,t3,t4; 
sbox s1(.in(key[127:120]),.out(t1));
sbox s2(.in(key[103:96]),.out(t2));
sbox s3(.in(key[111:104]),.out(t3));
sbox s4(.in(key[119:112]),.out(t4));
assign expanded_key[31:0] = key[31:0]^{t1,t2,t3,t4}^rcon;
assign expanded_key[63:32] = key[63:32]^expanded_key[31:0];
assign expanded_key[95:64] = key[95:64]^expanded_key[63:32];
assign expanded_key[127:96] = key[127:96]^expanded_key[95:64];

endmodule
