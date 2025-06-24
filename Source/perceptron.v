module perceptron(
    input signed [3:0] x1,
    input signed [3:0] x2,
    input signed [3:0] w1,
    input signed [3:0] w2,
    input signed [5:0] bias,
    output out
);
    wire signed [6:0] sum;

    perceptron_core core(
        .x1(x1),
        .x2(x2),
        .w1(w1),
        .w2(w2),
        .bias(bias),
        .sum(sum)
    );

    activation act(
        .sum(sum),
        .out(out)
    );
endmodule
