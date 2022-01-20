module ram_out_selector (input ram_sel,
                         input [7:0] data_in_1,
                         input [7:0] data_in_2,
                         output reg [7:0] data_in);

    always #2 begin
    if(ram_sel)
    data_in = data_in_2;
    else
    data_in = data_in_1;
    end
    endmodule