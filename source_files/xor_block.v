module xor_block(input [7:0] data_1,
                 input [7:0] data_2,
                 input clk,
                 input read_strobe,
                 output reg interrupt);
                 
    always @(posedge clk)
        interrupt = (data_1 ^ data_2)&& read_strobe ; // using a xor gate to specify if the inputs are different
        //if result of the xor gate is different than 0, then interrupt is set high
endmodule