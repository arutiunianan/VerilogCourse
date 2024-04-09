`timescale 10ps/1ps

module testbench ();
    
reg clk = 0;
reg reset = 1;
wire [8:0] step;
wire clk_1div5;

clk_div test(.clk(clk), .reset(reset), .step(step), .clk_1div5(clk_1div5));

always #5 clk = ~clk;



initial begin
    #10 reset = 1;
    
    reset = 0;

end

endmodule