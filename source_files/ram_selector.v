module ram_selector (input write_strobe,
                     input read_strobe,
                     input ram_sel,
                     output ram_sel_1,
                     output ram_sel_2);
    

    assign ram_sel_1 = (~(ram_sel) & write_strobe);
    assign ram_sel_2 = (ram_sel & write_strobe);
    
endmodule