`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Hassan Waraych
// 
// Create Date: 10/01/2025 06:58:22 PM
// Design Name: 
// Module Name: perceptron
// Project Name: 
// Target Devices: Zybo Z7-10
// Tool Versions: Vivado 2020.1
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module perceptron #(
  parameter integer N = 2  // number of inputs, (as of now)
)(
  input  wire                 clk,     // PL 125 MHz clock
  input  wire  [N-1:0]        x,       // binary inputs (0/1 from switches)
  input  wire  signed [7:0]   w0, w1, w2, w3, // only w0,w1 used for N=2
  input  wire  signed [9:0]   b,       // bias
  output reg                  y        // 1 if acc > 0
);

  // Sign-extend weights to a wider sum
  wire signed [11:0] t0 = x[0] ? {{4{w0[7]}}, w0} : 12'sd0;
  wire signed [11:0] t1 = x[1] ? {{4{w1[7]}}, w1} : 12'sd0;
  wire signed [11:0] t2 = 12'sd0; // unused for N=2
  wire signed [11:0] t3 = 12'sd0; // unused for N=2
  
  wire signed [11:0] bias_ext = {{2{b[9]}}, b}; // 10->12

  wire signed [12:0] acc = $signed(t0) + $signed(t1) + $signed(t2) + $signed(t3) + $signed(bias_ext);

  always @(posedge clk) begin
    y <= (acc > 0);
  end
  
endmodule