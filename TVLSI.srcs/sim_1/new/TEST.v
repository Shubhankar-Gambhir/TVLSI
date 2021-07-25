`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.07.2021 17:46:08
// Design Name: 
// Module Name: TEST
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


module TEST(

    );
    reg clk;
    reg rst;
    reg [1:32] val;
    wire out;
    
    LFSR test(clk,rst,val,out);
    
    initial begin
        forever begin
            clk = 0;
            #5
            clk = 1;
            #5
            clk = 0;
        end
    end
    
    initial begin
        val = 32'hb1a0f0ff;
        rst = 1;
        #1
        rst = 0;
    end
endmodule
