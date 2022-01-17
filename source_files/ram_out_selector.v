module ram_out_selector (input clk,
                         input read_strobe,
                         input ram_sel,
                         input [7:0] data_in_1,
                         input [7:0] data_in_2,
                         output reg [7:0] data_in);
                         
    always @(posedge clk) begin
    if(read_strobe & ~(ram_sel))
    data_in = data_in_1;
    else if(read_strobe & ram_sel)
    data_in = data_in_2;
    else
    data_in = 0;
    end
    endmodule