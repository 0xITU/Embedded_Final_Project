module ram_selector (input write_strobe,
                     input ram_sel,
                     input clk,
                     output  ram_sel_1, //reg if comment
                     output  ram_sel_2); //reg if comment
    
    /*
    always @ (posedge clk) begin
        ram_sel_1 = ~(ram_sel) & write_strobe;
        ram_sel_2 = ram_sel & write_strobe;
    end
    */
    
    assign ram_sel_1 = ~(ram_sel) & write_strobe;
    assign ram_sel_2 = ram_sel & write_strobe;
    
endmodule