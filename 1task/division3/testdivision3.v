`timescale 1ns/1ns

module testbench();

reg  [7:0]num;
wire [2:0]is_dev_3;

/*always begin
    #1 num = $random();
end
*/
division3 test(.in(num), .out(is_dev_3));

initial begin
    $dumpvars;
    assign num = 1; #1 $display("num = %d | result: %d", num, is_dev_3);
    assign num = 2; #1 $display("num = %d | result: %d", num, is_dev_3);
    assign num = 3; #1 $display("num = %d | result: %d", num, is_dev_3);
    assign num = 126; #1 $display("num = %d | result: %d", num, is_dev_3);
    assign num = 59; #1 $display("num = %d | result: %d", num, is_dev_3);

end

endmodule