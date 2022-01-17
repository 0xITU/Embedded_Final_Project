module ram_selector (input write_strobe,
                     input ram_sel,
                     input clk,
                     output reg ram_sel_1,
                     output reg ram_sel_2);
    
    
    always @ (posedge clk) begin
        ram_sel_1 = ~(ram_sel) & write_strobe;
        ram_sel_2 = ram_sel & write_strobe;
    end
endmodule