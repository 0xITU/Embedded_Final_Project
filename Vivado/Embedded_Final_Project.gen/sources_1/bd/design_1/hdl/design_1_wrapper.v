//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
//Date        : Thu Jan 20 15:25:23 2022
//Host        : enes running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (clk,
    interrupt);
  input clk;
  input interrupt;

  wire clk;
  wire interrupt;

  design_1 design_1_i
       (.clk(clk),
        .interrupt(interrupt));
endmodule
