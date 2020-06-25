////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: prio_encoder_synthesis.v
// /___/   /\     Timestamp: Fri Mar 08 14:16:58 2019
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim prio_encoder.ngc prio_encoder_synthesis.v 
// Device	: xc7a100t-3-csg324
// Input file	: prio_encoder.ngc
// Output file	: D:\Semester 2\Prak. Rangkaian Logika 2\prio_encoder\netgen\synthesis\prio_encoder_synthesis.v
// # of Modules	: 1
// Design Name	: prio_encoder
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module prio_encoder (
r, pcode
);
  input [4 : 1] r;
  output [2 : 0] pcode;
  wire r_1_IBUF_0;
  wire r_2_IBUF_1;
  wire r_3_IBUF_2;
  wire r_4_IBUF_3;
  wire pcode_1_OBUF_4;
  wire pcode_0_OBUF_5;
  LUT4 #(
    .INIT ( 16'h5554 ))
  Mmux_pcode21 (
    .I0(r_4_IBUF_3),
    .I1(r_1_IBUF_0),
    .I2(r_2_IBUF_1),
    .I3(r_3_IBUF_2),
    .O(pcode_1_OBUF_4)
  );
  LUT4 #(
    .INIT ( 16'h5504 ))
  Mmux_pcode11 (
    .I0(r_4_IBUF_3),
    .I1(r_1_IBUF_0),
    .I2(r_2_IBUF_1),
    .I3(r_3_IBUF_2),
    .O(pcode_0_OBUF_5)
  );
  IBUF   r_4_IBUF (
    .I(r[4]),
    .O(r_4_IBUF_3)
  );
  IBUF   r_3_IBUF (
    .I(r[3]),
    .O(r_3_IBUF_2)
  );
  IBUF   r_2_IBUF (
    .I(r[2]),
    .O(r_2_IBUF_1)
  );
  IBUF   r_1_IBUF (
    .I(r[1]),
    .O(r_1_IBUF_0)
  );
  OBUF   pcode_2_OBUF (
    .I(r_4_IBUF_3),
    .O(pcode[2])
  );
  OBUF   pcode_1_OBUF (
    .I(pcode_1_OBUF_4),
    .O(pcode[1])
  );
  OBUF   pcode_0_OBUF (
    .I(pcode_0_OBUF_5),
    .O(pcode[0])
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

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

endmodule

`endif

