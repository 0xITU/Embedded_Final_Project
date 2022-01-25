/*
module xor_gate(input data_1_bit,
                input data_2_bit,
                output out_bit);
    assign out_bit = data_1_bit ^ data_2_bit;
endmodule

module or_gate(input data_1_bit,
                input data_2_bit,
                output out_bit);
    assign out_bit = data_1_bit | data_2_bit;
endmodule 
*/

module xor_block(input [7:0] data_1,
                 input [7:0] data_2,
                 input clk,
                 input read_strobe,
                 output reg interrupt);
                 
    reg [7:0] xor_reg;
    always @(posedge clk) begin
        xor_reg = (data_1 ^ data_2)| ~(read_strobe) ;
        if(xor_reg == 0)
            interrupt = 1;
        else
            interrupt = 0;
     end  
    
    //wire [7:0] out_sig = data_1 ^ data_2;
    
    //assign interrupt = out_sig || 0;
    /*
    genvar i;
    generate
        for(i = 0; i < 8; i = i + 1)
            xor_gate x_gate_bit(.data_1_bit(data_1[i]), .data_2_bit(data_2[i]), .out_bit(out_bit_sig[i]));
    endgenerate

    genvar j;
    generate
        for(j = 0; j < 8; j = j + 1)
            or_gate or_gate_bit(.data_1_bit(out_bit_sig[i]), .data_2_bit(interrupt), .out_bit(interrupt));
    endgenerate
    
    */
endmodule