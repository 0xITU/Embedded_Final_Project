//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
//Date        : Wed Jan 26 16:05:36 2022
//Host        : enes running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (clk,
    interrupt_ack);
  input clk;
  output interrupt_ack;

  wire clk;
  wire interrupt_ack;

  design_1 design_1_i
       (.clk(clk),
        .interrupt_ack(interrupt_ack));
endmodule
