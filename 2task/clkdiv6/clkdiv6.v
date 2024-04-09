module clk_div
(
    input wire clk,
    input wire reset,
    output reg [32:0] step,
    output reg clk_div2,
    output reg clk_div3,
    output reg clk_div4,
    output reg clk_div6,
    output reg clk_div8
);

always @(posedge clk or negedge clk) begin
    if (reset) begin
        {step, clk_div2, clk_div3, clk_div4, clk_div6, clk_div8} <= 3'h0;
    end
    else begin
	step <= step + 1;
        clk_div2 <= step % 2 == 0 ? ~clk_div2 : clk_div2;
	clk_div3 <= step % 3 == 0 ? ~clk_div3 : clk_div3;
        clk_div4 <= step % 4 == 0 ? ~clk_div4 : clk_div4;
	clk_div6 <= step % 6 == 0 ? ~clk_div6 : clk_div6;
	clk_div8 <= step % 8 == 0 ? ~clk_div8 : clk_div8;
    end
end

endmodule