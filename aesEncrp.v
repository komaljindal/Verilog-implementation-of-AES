`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:04:37 09/20/2020 
// Design Name: 
// Module Name:    aesEncrp 
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
module aesEncrp(input clk, input[127:0]data, input[127:0]key, output[127:0]out);

wire [127:0] r0_out; 
wire [127:0] r1_out,r2_out,r3_out,r4_out,r5_out,r6_out,r7_out,r8_out,r9_out;    
wire [127:0] keyout1,keyout2,keyout3,keyout4,keyout5,keyout6,keyout7,keyout8,keyout9,keyout10;

assign r0_out = data^key; //Add Round Key
normalRound r1(.clk(clk), .rcon(32'd40000), .keyin(key), .data(r0_out), .keyout(keyout1), .dataout(r1_out));
normalRound r2(.clk(clk), .rcon(32'd4000), .keyin(keyout1), .data(r1_out), .keyout(keyout2), .dataout(r2_out));
normalRound r3(.clk(clk), .rcon(32'd400), .keyin(keyout2), .data(r2_out), .keyout(keyout3), .dataout(r3_out));
normalRound r4(.clk(clk), .rcon(32'd40), .keyin(keyout3), .data(r3_out), .keyout(keyout4), .dataout(r4_out));
normalRound r5(.clk(clk), .rcon(32'd20000), .keyin(keyout4), .data(r4_out), .keyout(keyout5), .dataout(r5_out));
normalRound r6(.clk(clk), .rcon(32'd2000), .keyin(keyout5), .data(r5_out), .keyout(keyout6), .dataout(r6_out));
normalRound r7(.clk(clk), .rcon(32'd200), .keyin(keyout6), .data(r6_out), .keyout(keyout7), .dataout(r7_out));
normalRound r8(.clk(clk), .rcon(32'd20), .keyin(keyout7), .data(r7_out), .keyout(keyout8), .dataout(r8_out));
normalRound r9(.clk(clk), .rcon(32'd10), .keyin(keyout8), .data(r8_out), .keyout(keyout9), .dataout(r9_out));
lastRound lr(.clk(clk), .rcon(32'd90), .keyin(keyout9), .data(r9_out), .keyout(keyout10), .dataout(out));
endmodule
