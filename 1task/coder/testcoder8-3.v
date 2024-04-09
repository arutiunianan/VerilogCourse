`timescale 1ns/1ns

module testbench();

reg  [7:0] num;
wire [2:0] cod;

always begin
    #1 num = $random();
end

coder_8_to_3 test(.in(num), .out(cod));

initial begin
    $dumpvars;
    //$display("result: %d", cod);
end

endmodule