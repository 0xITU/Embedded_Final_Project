--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
--Date        : Mon Jan 17 16:21:34 2022
--Host        : enes running 64-bit major release  (build 9200)
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
  port (
    clk : in STD_LOGIC;
    interrupt : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=3,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_top_0_0 is
  port (
    clk : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    interrupt : in STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    port_id : out STD_LOGIC_VECTOR ( 6 downto 0 );
    ram_sel : out STD_LOGIC;
    write_strobe : out STD_LOGIC;
    read_strobe : out STD_LOGIC;
    interrupt_ack : out STD_LOGIC
  );
  end component design_1_top_0_0;
  component design_1_blk_mem_gen_0_1 is
  port (
    clka : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 6 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component design_1_blk_mem_gen_0_1;
  component design_1_blk_mem_gen_1_0 is
  port (
    clka : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 6 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component design_1_blk_mem_gen_1_0;
  component design_1_ram_selector_0_0 is
  port (
    write_strobe : in STD_LOGIC;
    ram_sel : in STD_LOGIC;
    clk : in STD_LOGIC;
    ram_sel_1 : out STD_LOGIC;
    ram_sel_2 : out STD_LOGIC
  );
  end component design_1_ram_selector_0_0;
  component design_1_ram_out_selector_0_0 is
  port (
    clk : in STD_LOGIC;
    read_strobe : in STD_LOGIC;
    ram_sel : in STD_LOGIC;
    data_in_1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    data_in_2 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    data_in : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component design_1_ram_out_selector_0_0;
  signal blk_mem_gen_0_douta : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal blk_mem_gen_1_douta : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal clk_1 : STD_LOGIC;
  signal interrupt_1 : STD_LOGIC;
  signal ram_out_selector_0_data_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ram_selector_0_ram_sel_1 : STD_LOGIC;
  signal ram_selector_0_ram_sel_2 : STD_LOGIC;
  signal top_0_data_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal top_0_port_id : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal top_0_ram_sel : STD_LOGIC;
  signal top_0_read_strobe : STD_LOGIC;
  signal top_0_write_strobe : STD_LOGIC;
  signal NLW_top_0_interrupt_ack_UNCONNECTED : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN design_1_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of interrupt : signal is "xilinx.com:signal:interrupt:1.0 INTR.INTERRUPT INTERRUPT";
  attribute X_INTERFACE_PARAMETER of interrupt : signal is "XIL_INTERFACENAME INTR.INTERRUPT, PortWidth 1, SENSITIVITY LEVEL_HIGH";
begin
  clk_1 <= clk;
  interrupt_1 <= interrupt;
blk_mem_gen_0: component design_1_blk_mem_gen_0_1
     port map (
      addra(6 downto 0) => top_0_port_id(6 downto 0),
      clka => clk_1,
      dina(7 downto 0) => top_0_data_out(7 downto 0),
      douta(7 downto 0) => blk_mem_gen_0_douta(7 downto 0),
      wea(0) => ram_selector_0_ram_sel_1
    );
blk_mem_gen_1: component design_1_blk_mem_gen_1_0
     port map (
      addra(6 downto 0) => top_0_port_id(6 downto 0),
      clka => clk_1,
      dina(7 downto 0) => top_0_data_out(7 downto 0),
      douta(7 downto 0) => blk_mem_gen_1_douta(7 downto 0),
      wea(0) => ram_selector_0_ram_sel_2
    );
ram_out_selector_0: component design_1_ram_out_selector_0_0
     port map (
      clk => clk_1,
      data_in(7 downto 0) => ram_out_selector_0_data_in(7 downto 0),
      data_in_1(7 downto 0) => blk_mem_gen_0_douta(7 downto 0),
      data_in_2(7 downto 0) => blk_mem_gen_1_douta(7 downto 0),
      ram_sel => top_0_ram_sel,
      read_strobe => top_0_read_strobe
    );
ram_selector_0: component design_1_ram_selector_0_0
     port map (
      clk => clk_1,
      ram_sel => top_0_ram_sel,
      ram_sel_1 => ram_selector_0_ram_sel_1,
      ram_sel_2 => ram_selector_0_ram_sel_2,
      write_strobe => top_0_write_strobe
    );
top_0: component design_1_top_0_0
     port map (
      clk => clk_1,
      data_in(7 downto 0) => ram_out_selector_0_data_in(7 downto 0),
      data_out(7 downto 0) => top_0_data_out(7 downto 0),
      interrupt => interrupt_1,
      interrupt_ack => NLW_top_0_interrupt_ack_UNCONNECTED,
      port_id(6 downto 0) => top_0_port_id(6 downto 0),
      ram_sel => top_0_ram_sel,
      read_strobe => top_0_read_strobe,
      write_strobe => top_0_write_strobe
    );
end STRUCTURE;
