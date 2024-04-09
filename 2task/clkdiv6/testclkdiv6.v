`timescale 10ps/1ps

module testbench ();
    
reg clk = 0;
reg reset = 1;
wire step;
wire clk_div2;
wire clk_div3;
wire clk_div4;
wire clk_div6;
wire clk_div8;

clk_div test(.clk(clk), .reset(reset), .step(step), .clk_div2(clk_div2), .clk_div3(clk_div3), .clk_div4(clk_div4), .clk_div6(clk_div6), .clk_div8(clk_div8));

always #5 clk = ~clk;



initial begin
    #10 reset = 1;
    
    reset = 0;

end

endmodule