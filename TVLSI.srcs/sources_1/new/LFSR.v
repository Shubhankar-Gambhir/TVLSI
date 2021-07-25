`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.07.2021 17:43:36
// Design Name: 
// Module Name: LFSR
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


module LFSR(
    input clk,
    input rst,
    input [1:32] val,
    output o
    );

  wire feedback;
  wire nlfeedback[1:6];
  reg [1:32] out;
  
  assign o = out[32];
  assign feedback = (out[1] ^ out[2]^ out[22] ^ out[32]);
  
always @(posedge clk, posedge rst)
  begin
    if (rst)
      out = val;
    else
      out = {feedback,out[1:31]};
  end
      
endmodule
