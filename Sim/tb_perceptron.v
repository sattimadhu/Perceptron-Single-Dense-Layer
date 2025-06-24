//`timescale 1ns / 1ps

module tb_perceptron_layer6;
    reg signed [3:0] x1, x2;
    reg [23:0] w1_flat, w2_flat;
    reg [35:0] bias_flat;
    wire [5:0] y;

    perceptron_layer6 uut (
        .x1(x1),
        .x2(x2),
        .w1_flat(w1_flat),
        .w2_flat(w2_flat),
        .bias_flat(bias_flat),
        .y(y)
    );

    initial begin
        // Initialize input
        x1 = 4'd2;
        x2 = -4'd3;

        // Format: {w5, w4, w3, w2, w1, w0} where each w is 4 bits
        w1_flat = {4'd1, 4'd2, 4'd3, 4'd4, 4'd5, 4'd6};   // 6 weights
        w2_flat = {4'd6, 4'd5, 4'd4, 4'd3, 4'd2, 4'd1};

        // Format: {bias5, ..., bias0} where each bias is 6 bits
        bias_flat = {6'd1, 6'd2, 6'd3, 6'd4, 6'd5, 6'd6};

        #10;

        // Change input values
        x1 = -4'd1;
        x2 = 4'd2;
        #10;

        $finish;
    end
endmodule
