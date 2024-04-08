`timescale 1ns/1ns

module testbench();

reg [31:0]num;
wire even;

always begin
    #1 num = $random();
end

is_even test(.in(num), .out(even));

initial begin
    $dumpvars;
    $display("is even: = %d", even);
end

endmodule