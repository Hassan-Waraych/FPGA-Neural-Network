// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Thu Oct  2 15:40:10 2025
// Host        : DESKTOP-RKGOGPE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/VivadoProjects/zybo_perceptron/zybo_perceptron.srcs/sources_1/bd/system/ip/system_top_0_0/system_top_0_0_sim_netlist.v
// Design      : system_top_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_top_0_0,top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "top,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module system_top_0_0
   (clk,
    rstn,
    sw,
    mode,
    led);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rstn, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rstn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rstn;
  input [1:0]sw;
  input mode;
  output [2:0]led;

  wire clk;
  wire [2:0]led;
  wire rstn;
  wire [1:0]sw;

  system_top_0_0_top inst
       (.clk(clk),
        .led(led),
        .rstn(rstn),
        .sw(sw));
endmodule

(* ORIG_REF_NAME = "perceptron" *) 
module system_top_0_0_perceptron
   (led,
    clk,
    Q);
  output [0:0]led;
  input clk;
  input [1:0]Q;

  wire [1:0]Q;
  wire acc_n_0;
  wire acc_rep__0_n_0;
  wire acc_rep__1_n_0;
  wire acc_rep__2_n_0;
  wire acc_rep_n_0;
  wire clk;
  wire [0:0]led;
  wire y0_carry__0_i_1_n_0;
  wire y0_carry__0_i_2_n_0;
  wire y0_carry__0_i_3_n_0;
  wire y0_carry__0_n_1;
  wire y0_carry__0_n_2;
  wire y0_carry__0_n_3;
  wire y0_carry_i_1__1_n_0;
  wire y0_carry_i_2_n_0;
  wire y0_carry_i_3_n_0;
  wire y0_carry_i_4_n_0;
  wire y0_carry_i_5_n_0;
  wire y0_carry_n_0;
  wire y0_carry_n_1;
  wire y0_carry_n_2;
  wire y0_carry_n_3;
  wire [3:0]NLW_y0_carry_O_UNCONNECTED;
  wire [3:3]NLW_y0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_y0_carry__0_O_UNCONNECTED;

  LUT2 #(
    .INIT(4'h1)) 
    acc
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(acc_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    acc_rep
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(acc_rep_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    acc_rep__0
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(acc_rep__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    acc_rep__1
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(acc_rep__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    acc_rep__2
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(acc_rep__2_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 y0_carry
       (.CI(1'b0),
        .CO({y0_carry_n_0,y0_carry_n_1,y0_carry_n_2,y0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({acc_rep__1_n_0,acc_rep__0_n_0,acc_rep_n_0,y0_carry_i_1__1_n_0}),
        .O(NLW_y0_carry_O_UNCONNECTED[3:0]),
        .S({y0_carry_i_2_n_0,y0_carry_i_3_n_0,y0_carry_i_4_n_0,y0_carry_i_5_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 y0_carry__0
       (.CI(y0_carry_n_0),
        .CO({NLW_y0_carry__0_CO_UNCONNECTED[3],y0_carry__0_n_1,y0_carry__0_n_2,y0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,acc_n_0,acc_rep__2_n_0}),
        .O(NLW_y0_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,y0_carry__0_i_1_n_0,y0_carry__0_i_2_n_0,y0_carry__0_i_3_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    y0_carry__0_i_1
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(y0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    y0_carry__0_i_2
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(y0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    y0_carry__0_i_3
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(y0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    y0_carry_i_1__1
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(y0_carry_i_1__1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    y0_carry_i_2
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(y0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    y0_carry_i_3
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(y0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    y0_carry_i_4
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(y0_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    y0_carry_i_5
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(y0_carry_i_5_n_0));
  FDRE y_reg
       (.C(clk),
        .CE(1'b1),
        .D(y0_carry__0_n_1),
        .Q(led),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "perceptron" *) 
module system_top_0_0_perceptron_0
   (led,
    clk,
    Q);
  output [0:0]led;
  input clk;
  input [1:0]Q;

  wire [1:0]Q;
  wire clk;
  wire [0:0]led;
  wire p_0_in;

  LUT2 #(
    .INIT(4'hE)) 
    y_i_1
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(p_0_in));
  FDRE y_reg
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(led),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "perceptron" *) 
module system_top_0_0_perceptron_1
   (led,
    clk,
    Q);
  output [0:0]led;
  input clk;
  input [1:0]Q;

  wire [1:0]Q;
  wire clk;
  wire [0:0]led;
  wire y0_carry__0_n_1;
  wire y0_carry__0_n_2;
  wire y0_carry__0_n_3;
  wire y0_carry_i_1__0_n_0;
  wire y0_carry_i_1_n_0;
  wire y0_carry_i_2__0_n_0;
  wire y0_carry_i_2__1_n_0;
  wire y0_carry_i_3__0_n_0;
  wire y0_carry_i_3__1_n_0;
  wire y0_carry_i_4__0_n_0;
  wire y0_carry_i_4__1_n_0;
  wire y0_carry_i_5__0_n_0;
  wire y0_carry_i_5__1_n_0;
  wire y0_carry_i_6_n_0;
  wire y0_carry_i_7_n_0;
  wire y0_carry_i_8_n_0;
  wire y0_carry_n_0;
  wire y0_carry_n_1;
  wire y0_carry_n_2;
  wire y0_carry_n_3;
  wire [3:0]NLW_y0_carry_O_UNCONNECTED;
  wire [3:3]NLW_y0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_y0_carry__0_O_UNCONNECTED;

  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 y0_carry
       (.CI(1'b0),
        .CO({y0_carry_n_0,y0_carry_n_1,y0_carry_n_2,y0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({y0_carry_i_1__0_n_0,y0_carry_i_2__0_n_0,y0_carry_i_3__0_n_0,y0_carry_i_4__0_n_0}),
        .O(NLW_y0_carry_O_UNCONNECTED[3:0]),
        .S({y0_carry_i_5__0_n_0,y0_carry_i_6_n_0,y0_carry_i_7_n_0,y0_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 y0_carry__0
       (.CI(y0_carry_n_0),
        .CO({NLW_y0_carry__0_CO_UNCONNECTED[3],y0_carry__0_n_1,y0_carry__0_n_2,y0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,y0_carry_i_1_n_0,y0_carry_i_2__1_n_0}),
        .O(NLW_y0_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,y0_carry_i_3__1_n_0,y0_carry_i_4__1_n_0,y0_carry_i_5__1_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    y0_carry_i_1
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(y0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    y0_carry_i_1__0
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(y0_carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    y0_carry_i_2__0
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(y0_carry_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    y0_carry_i_2__1
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(y0_carry_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    y0_carry_i_3__0
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(y0_carry_i_3__0_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    y0_carry_i_3__1
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(y0_carry_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    y0_carry_i_4__0
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(y0_carry_i_4__0_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    y0_carry_i_4__1
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(y0_carry_i_4__1_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    y0_carry_i_5__0
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(y0_carry_i_5__0_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    y0_carry_i_5__1
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(y0_carry_i_5__1_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    y0_carry_i_6
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(y0_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    y0_carry_i_7
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(y0_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    y0_carry_i_8
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(y0_carry_i_8_n_0));
  FDRE y_reg
       (.C(clk),
        .CE(1'b1),
        .D(y0_carry__0_n_1),
        .Q(led),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "top" *) 
module system_top_0_0_top
   (led,
    sw,
    clk,
    rstn);
  output [2:0]led;
  input [1:0]sw;
  input clk;
  input rstn;

  wire clk;
  wire [2:0]led;
  wire rstn;
  wire [1:0]sw;
  wire t1;
  wire \x_sync[1]_i_1_n_0 ;
  wire \x_sync_reg_n_0_[0] ;

  system_top_0_0_perceptron u_perc_and
       (.Q({t1,\x_sync_reg_n_0_[0] }),
        .clk(clk),
        .led(led[1]));
  system_top_0_0_perceptron_0 u_perc_or
       (.Q({t1,\x_sync_reg_n_0_[0] }),
        .clk(clk),
        .led(led[0]));
  system_top_0_0_perceptron_1 u_perc_x0_and_not_x1
       (.Q({t1,\x_sync_reg_n_0_[0] }),
        .clk(clk),
        .led(led[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \x_sync[1]_i_1 
       (.I0(rstn),
        .O(\x_sync[1]_i_1_n_0 ));
  FDCE \x_sync_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\x_sync[1]_i_1_n_0 ),
        .D(sw[0]),
        .Q(\x_sync_reg_n_0_[0] ));
  FDCE \x_sync_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\x_sync[1]_i_1_n_0 ),
        .D(sw[1]),
        .Q(t1));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
