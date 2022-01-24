module one_bit_selector(input ram_sel,
                        input data_in_1_bit,
                        input data_in_2_bit,
                        output data_in_bit);
                        
    assign data_in_bit = (~(ram_sel) & data_in_1_bit) | (ram_sel & data_in_2_bit);
    
endmodule
                      


module ram_out_selector (input ram_sel,
                         input [7:0] data_in_1,
                         input [7:0] data_in_2,
                         output [7:0] data_in);
                         
                         
    genvar i;
    
    generate
        for(i = 0; i < 8; i = i + 1) begin
            one_bit_selector one_bit(.ram_sel(ram_sel), .data_in_1_bit(data_in_1[i]), .data_in_2_bit(data_in_2[i]), .data_in_bit(data_in[i]));
        end
    endgenerate
    
endmodule
