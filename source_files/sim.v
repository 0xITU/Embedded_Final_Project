`timescale 1ns/1ns
module sim;
    reg clk = 0; //clock signal : 100 MHz
    wire int_ack; //interrput acknowledge signal, to see if cpu gone into isr
    //port mapping of design wrapper
    design_1_wrapper des_1 (.clk(clk), .interrupt_ack(int_ack));

    always begin //always block to create clock signal
        clk = 0;
        #5;
        clk = 1;
        #5;
    end

endmodule