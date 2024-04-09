module division3
(
    input wire [7:0] in,
    output wire [2:0] out
);

assign out = in % 3 == 0 ? 1 : 0;

endmodule