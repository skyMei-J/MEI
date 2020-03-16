`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: skyMei-J
// 
// Create Date: 2018/04/21 21:35:11
// Design Name: frequency eliminator
// Module Name: my_counter
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
//    built-in frequency divided by 2^13 (13 could be substituted)
//    input:  built-in frequency
//    output: built-in frequency divided by 2^13
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module my_counter(
    input clk,
    output my_clk
    );
    
    reg[13:0]q=0;
    always @(posedge clk)
    q<=q+1;
    assign my_clk=q[13];
endmodule
