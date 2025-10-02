//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Hassan Waraych
// 
// Create Date: 10/01/2025 06:58:22 PM
// Design Name: top.v
// Module Name: top
// Project Name: Zybo Perceptron
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


module top(
  input  wire        clk,    // PS FCLK0
  input wire         rstn,   // FCLK_RESET0_N (active-low)
  input  wire [1:0]  sw,     // sw[1:0] = inputs x1..x0
  input  wire        mode,   // 0 = OR, 1 = AND
  output wire        led0    // output LED
);
  // Register inputs (simple sync)
  reg [1:0] x_sync;
  reg       mode_sync;
  
  always @(posedge clk or negedge rstn) begin
    if (!rstn) begin
        x_sync    <= 2'b00;
        mode_sync <= 1'b0;
    end else begin
        x_sync    <= sw;
        mode_sync <= mode;
    end
  end

  // Preset weights/bias
  // OR  -> w=[1,1], b=0
  // AND -> w=[1,1], b=-1
  wire signed [7:0] w0 = 8'sd1;
  wire signed [7:0] w1 = 8'sd1;
  wire signed [7:0] w2 = 8'sd0, w3 = 8'sd0;
  wire signed [9:0] b  = mode_sync ? -10'sd1 : 10'sd0;

  wire y_int;

  perceptron #(.N(2)) u_perc (
    .clk(clk),
    .x  (x_sync),
    .w0 (w0), .w1(w1), .w2(w2), .w3(w3),
    .b  (b),
    .y  (y_int)
  );

  assign led0 = y_int; // flip to ~y_int if your LED is active-low
endmodule


