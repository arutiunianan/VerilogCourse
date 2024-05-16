module adder (
    input clk,
    input reset,
    input but,
    input [7:0] switches1,
    input [7:0] switches2,
    output [6:0] hex2seven_seg11,
    output [6:0] hex2seven_seg12,
    output [6:0] hex2seven_seg21,
    output [6:0] hex2seven_seg22,
    output [6:0] hex2seven_segAdd1,
    output [6:0] hex2seven_segAdd2,
    output overflow
);

reg [7:0] num1;
always @(posedge clk) 
begin
    if (!reset) 
    begin
        num1 <= 0;
    end 
    else 
    begin
        num1 <= switches1;
    end
end

reg [7:0] num2;
always @(posedge clk) 
begin
    if (!reset) 
    begin
        num2 <= 0;
    end 
    else 
    begin
        num2 <= switches2;
    end
end

wire add;
button addButtonInst(.clk(clk), .button(but), .push(add));

reg [8:0] numAdd;
always @(posedge clk) 
begin
    if (!reset) 
    begin
        numAdd <= 0;
    end 
    else 
    if (add) 
    begin
        numAdd <= num1 + num2;
    end
end

assign overflow = numAdd[8];

hex2seven_seg hex2seven_seg11Inst(.hex(num1[3:0]), .seven_seg(hex2seven_seg11));
hex2seven_seg hex2seven_seg12Inst(.hex(num1[7:4]), .seven_seg(hex2seven_seg12));
hex2seven_seg hex2seven_seg21Inst(.hex(num2[3:0]), .seven_seg(hex2seven_seg21));
hex2seven_seg hex2seven_seg22Inst(.hex(num2[7:4]), .seven_seg(hex2seven_seg22));
hex2seven_seg hex2seven_segAdd1Inst(.hex(numAdd[7:4]), .seven_seg(hex2seven_segAdd1));
hex2seven_seg hex2seven_segAdd2Inst(.hex(numAdd[3:0]), .seven_seg(hex2seven_segAdd2));


endmodule