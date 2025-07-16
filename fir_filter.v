module fir_filter #(
    parameter N = 4
)(
    input wire clk,
    input wire rst,
    input wire signed [7:0] x_in,           // Input
    output reg signed [15:0] y_out          // Output
);

    // Coefficients
    reg signed [7:0] coeffs [0:N-1];
    initial begin
        coeffs[0] = 8'd1;
        coeffs[1] = 8'd2;
        coeffs[2] = 8'd3;
        coeffs[3] = 8'd4;
    end

    // Delay line for input samples
    reg signed [7:0] x_reg [0:N-1];

    integer i;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            for (i = 0; i < N; i = i + 1)
                x_reg[i] <= 0;
            y_out <= 0;
        end else begin
            // Shift delay line
            for (i = N-1; i > 0; i = i - 1)
                x_reg[i] <= x_reg[i-1];
            x_reg[0] <= x_in;

            // Compute convolution
            y_out <= 0;
            for (i = 0; i < N; i = i + 1)
                y_out <= y_out + x_reg[i] * coeffs[i];
        end
    end
endmodule