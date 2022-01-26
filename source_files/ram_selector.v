module ram_selector (input write_strobe,
                     input ram_sel,
                     output ram_sel_1,
                     output ram_sel_2);
    //used to select which ram block will get the write enable signal
    //used as a write enable
    assign ram_sel_1 = (~(ram_sel) & write_strobe); //assigning ram_sel_1 high if ram_sel is low and write_strobe is high
    assign ram_sel_2 = (ram_sel & write_strobe); //assigning ram_sel_2 high if both ram_sel and write_strobe is high
    
endmodule