module xor_block(input [7:0] data_1,
                 input [7:0] data_2,
                 input clk,
                 input read_strobe,
                 output reg interrupt);
                 
    reg [7:0] xor_reg;
    always #1 begin
        xor_reg = (data_1 ^ data_2)&& read_strobe ;
        if(xor_reg == 0)
            interrupt = 0;
        else
            interrupt = 1;
     end  
    
    //wire [7:0] out_sig = data_1 ^ data_2;
    
    //assign interrupt = out_sig || 0;
endmodule