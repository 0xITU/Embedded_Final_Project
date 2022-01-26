//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
//Date        : Wed Jan 26 16:05:36 2022
//Host        : enes running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=6,numReposBlks=6,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=4,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (clk,
    interrupt_ack);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN design_1_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk;
  output interrupt_ack;

  wire [7:0]blk_mem_gen_0_douta;
  wire [7:0]blk_mem_gen_1_douta;
  wire clk_1;
  wire [7:0]ram_out_selector_0_data_in;
  wire ram_selector_0_ram_sel_1;
  wire ram_selector_0_ram_sel_2;
  wire [7:0]top_0_data_out;
  wire top_0_interrupt_ack;
  wire [6:0]top_0_port_id;
  wire top_0_ram_sel;
  wire top_0_read_strobe;
  wire top_0_write_strobe;
  wire xor_block_0_interrupt;

  assign clk_1 = clk;
  assign interrupt_ack = top_0_interrupt_ack;
  design_1_blk_mem_gen_0_1 blk_mem_gen_0
       (.addra(top_0_port_id),
        .clka(clk_1),
        .dina(top_0_data_out),
        .douta(blk_mem_gen_0_douta),
        .wea(ram_selector_0_ram_sel_1));
  design_1_blk_mem_gen_1_0 blk_mem_gen_1
       (.addra(top_0_port_id),
        .clka(clk_1),
        .dina(top_0_data_out),
        .douta(blk_mem_gen_1_douta),
        .wea(ram_selector_0_ram_sel_2));
  design_1_ram_out_selector_0_0 ram_out_selector_0
       (.data_in(ram_out_selector_0_data_in),
        .data_in_1(blk_mem_gen_0_douta),
        .data_in_2(blk_mem_gen_1_douta),
        .ram_sel(top_0_ram_sel));
  design_1_ram_selector_0_0 ram_selector_0
       (.ram_sel(top_0_ram_sel),
        .ram_sel_1(ram_selector_0_ram_sel_1),
        .ram_sel_2(ram_selector_0_ram_sel_2),
        .write_strobe(top_0_write_strobe));
  design_1_top_0_0 top_0
       (.clk(clk_1),
        .data_in(ram_out_selector_0_data_in),
        .data_out(top_0_data_out),
        .interrupt(xor_block_0_interrupt),
        .interrupt_ack(top_0_interrupt_ack),
        .port_id(top_0_port_id),
        .ram_sel(top_0_ram_sel),
        .read_strobe(top_0_read_strobe),
        .write_strobe(top_0_write_strobe));
  design_1_xor_block_0_0 xor_block_0
       (.clk(clk_1),
        .data_1(blk_mem_gen_0_douta),
        .data_2(blk_mem_gen_1_douta),
        .interrupt(xor_block_0_interrupt),
        .read_strobe(top_0_read_strobe));
endmodule
