module top (input clk,
            input [7:0] data_in,
            input interrupt,
            output [7:0] data_out,
            output [6:0] port_id,
            output ram_sel,
            output write_strobe,
            output read_strobe,
            output interrupt_ack);
            
            wire bram_en;
            wire [11:0] addr;
            wire [17:0] instr;
            wire [7:0] port_id_sig;
            
            assign port_id = port_id_sig[6:0];
            assign ram_sel = port_id_sig[7];
            
            kcpsm6 picoblaze (.interrupt(interrupt), .interrupt_ack(interrupt_ack), .clk(clk), .bram_enable(bram_en), .address(addr), .instruction(instr), .in_port(data_in), .out_port(data_out), .write_strobe(write_strobe), .read_strobe(read_strobe), .port_id(port_id_sig) ,.sleep(0), .reset(0));
            BRAM0 prog_mem (.clk(clk), .enable(bram_en), .address(addr), .instruction(instr));
endmodule