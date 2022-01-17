`timescale 1ns/1ns
module sim;
    reg clk = 0;
    wire interrupt = 0;

    design_1_wrapper des_1 (.clk(clk), .interrupt(interrupt));

    always begin
        clk = 0;
        #5;
        clk = 1;
        #5;
    end

endmodule