`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:00:55 09/21/2020 
// Design Name: 
// Module Name:    test_Bench 
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
module test_Bench;

reg clk;
wire [127:0] out;
wire [127:0] in;
assign in = 128'h 2443f6a8885a308d313198a2e0370724;
reg [127:0] encrp_data;
Top_level top(.clk(clk), .in(in), .dataout(out));
always@(posedge clk, in)
assign encrp_data=out;
initial
begin
clk = 0;
forever
begin
#10 clk=~clk;
end 
end
initial
#60 $finish; 
endmodule
