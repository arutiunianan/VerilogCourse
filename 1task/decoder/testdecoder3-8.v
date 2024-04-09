`timescale 1ns/1ns

module testbench();

reg [2:0]num;
wire [7:0]decod;

always begin
    #1 num = $random();
end

decoder_3_to_8 test(.in(num), .out(decod));

initial begin
    $dumpvars;
    $display("result: %d", decod);
end

endmodule