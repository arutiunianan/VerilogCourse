module clk_div
(
    input wire clk,
    input wire reset,
    output reg [8:0] step,
    output reg clk_1div5
);

always @(posedge clk or negedge clk) begin
    if (reset) begin
        {step, clk_1div5} <= 3'h0;
    end
    else begin
	step <= step + 1;
        clk_1div5 <= (step % 10 == 0) || (step % 10 == 1)? ~clk_1div5 : clk_1div5;
    end
end

endmodule