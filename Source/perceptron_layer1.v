module perceptron_layer6 (
    input signed [3:0] x1,
    input signed [3:0] x2,
    input [23:0] w1_flat,
    input [23:0] w2_flat,
    input [35:0] bias_flat,
    output [5:0] y
);
    genvar i;
    generate
        for (i = 0; i < 6; i = i + 1) begin : perceptrons
            wire signed [3:0] w1_i;
            wire signed [3:0] w2_i;
            wire signed [5:0] bias_i;

            assign w1_i = w1_flat[i*4 +: 4];
            assign w2_i = w2_flat[i*4 +: 4];
            assign bias_i = bias_flat[i*6 +: 6];

            perceptron p (
                .x1(x1),
                .x2(x2),
                .w1(w1_i),
                .w2(w2_i),
                .bias(bias_i),
                .out(y[i])
            );
        end
    endgenerate
endmodule
