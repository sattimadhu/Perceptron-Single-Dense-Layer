module perceptron_core(
    input signed [3:0] x1,
    input signed [3:0] x2,
    input signed [3:0] w1,
    input signed [3:0] w2,
    input signed [5:0] bias,
    output signed [6:0] sum
);
    assign sum = (x1 * w1) + (x2 * w2) + bias;
endmodule
