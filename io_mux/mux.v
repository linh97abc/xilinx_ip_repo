`timescale 1ns / 1ps
module mux #
(
    parameter C_NUM_OF_PIN = 16
) (
    input [C_NUM_OF_PIN-1:0] lo,
    input [C_NUM_OF_PIN-1:0] lt,
    output li,
    output li_mask,

    input ri,
    output ro,
    output rt,

    input [3:0] sel
);

assign li = ri;
assign li_mask = 1 << sel;

assign ro = lo[sel];
assign rt = lt[sel];

    
endmodule