module log
(
    input wire [7:0] in,
    output wire [2:0] out
);

assign out = in[6] ? 7 : in[5] ? 6 : in[4] ? 5 : in[3] ? 4 : in[2] ? 3 : in[1] ? 2 : in[0] ? 1 : 0;

endmodule