module is_even (
    input wire [31:0] in,
    output wire out 
);
    
assign out = ~in[0];

endmodule