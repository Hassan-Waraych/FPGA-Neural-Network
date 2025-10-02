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
  input  wire        mode,   // not currently used
  output wire [2:0]  led    // 3 LEDS [or, and, xor]
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
        mode_sync <= mode; // not currently used
    end
  end
  
  // Perceptron #1: OR
  wire y_or;
  perceptron #(.N(2)) u_perc_or (
    .clk(clk),
    .x  (x_sync),
    .w0 (8'sd1), .w1(8'sd1), .w2(8'sd0), .w3(8'sd0),
    .b  (10'sd0),
    .y  (y_or)
  );
  
  // Perceptron #2: AND
  wire y_and;
  perceptron #(.N(2)) u_perc_and (
    .clk(clk),
    .x  (x_sync),
    .w0 (8'sd1), .w1(8'sd1), .w2(8'sd0), .w3(8'sd0),
    .b  (-10'sd1),
    .y  (y_and)
  );
  
  // Perceptron #3: X0 AND NOT X1
  wire y_x0_and_not_x1;
  perceptron #(.N(2)) u_perc_x0_and_not_x1 (
    .clk(clk),
    .x  (x_sync),
    .w0 (8'sd1), .w1(-8'sd1), .w2(8'sd0), .w3(8'sd0),
    .b  (10'sd0),
    .y  (y_x0_and_not_x1)
  );

  assign led[0] = y_or;
  assign led[1] = y_and;
  assign led[2] = y_x0_and_not_x1;

endmodule


