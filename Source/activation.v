module activation(
    input signed [6:0] sum,
    output reg out
);
    always @(*) begin
        if (sum > 0)
            out = 1;
        else
            out = 0;
    end
endmodule
