module fir_filter_tb;

    reg clk = 0;
    reg rst;
    reg signed [7:0] x_in;
    wire signed [15:0] y_out;

    fir_filter uut (.clk(clk), .rst(rst), .x_in(x_in), .y_out(y_out));

    always #5 clk = ~clk;

    initial begin
        rst = 1; x_in = 0;
        #10 rst = 0;

        // Apply test signal: impulse followed by zeros
        #10 x_in = 8'd1;  // impulse
        #10 x_in = 8'd0;
        #10 x_in = 8'd0;
        #10 x_in = 8'd0;
        #10 x_in = 8'd0;
        #10 x_in = 8'd0;

        // Observe output
        #100;
        $finish;
    end
endmodule