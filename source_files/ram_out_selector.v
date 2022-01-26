module one_bit_selector(input ram_sel,
                        input data_in_1_bit,
                        input data_in_2_bit,
                        output data_in_bit); //selector module for 1 bit
                        
    assign data_in_bit = (~(ram_sel) & data_in_1_bit) | (ram_sel & data_in_2_bit);
    //using data_in_1_bit if ram_sel is 0, using data_in_2_bit otherwise
endmodule
                      


module ram_out_selector (input ram_sel,
                         input [7:0] data_in_1,
                         input [7:0] data_in_2,
                         output [7:0] data_in); //main module
                         
    //used to select which input signal will be given to the top module
    //used as a read select
    genvar i;
    
    generate //using a generate block to use one_bit_selector for all 8 bits
        for(i = 0; i < 8; i = i + 1) begin
            one_bit_selector one_bit(.ram_sel(ram_sel), .data_in_1_bit(data_in_1[i]), .data_in_2_bit(data_in_2[i]), .data_in_bit(data_in[i]));
        end
    endgenerate
    
endmodule
