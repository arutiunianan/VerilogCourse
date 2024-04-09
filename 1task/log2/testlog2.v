`timescale 1ns/1ns

module testbench();

reg [7:0]num;
wire [2:0]log;

//always begin
//    #1 num = $random();
//end

log test(.in(num), .out(log));

initial begin
    $dumpvars;

    num = 0; 
	#1 $display("number = %d | log = %d", num, log);
    num = 1; 
	#1 $display("number = %d | log = %d", num, log);
    num = 2; 
	#1 $display("number = %d | log = %d", num, log);
    num = 4; 
	#1 $display("number = %d | log = %d", num, log);
    num = 8; 
	#1 $display("number = %d | log = %d", num, log);
    num = 16; 
	#1 $display("number = %d | log = %d", num, log);
    num = 32; 
	#1 $display("number = %d | log = %d", num, log);
    num = 64; 
	#1 $display("number = %d | log = %d", num, log);
end

endmodule