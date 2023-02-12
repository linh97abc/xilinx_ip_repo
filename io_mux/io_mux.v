`timescale 1ns / 1ps
module io_mux #
(
    parameter C_NUM_OF_PIN = 8
) (

    input lo_0,
    input lt_0,
    output li_0,
    output li_mask_0,
    
    input lo_1,
    input lt_1,
    output li_1,
    output li_mask_1,
    
    input lo_2,
    input lt_2,
    output li_2,
    output li_mask_2,
    
    input lo_3,
    input lt_3,
    output li_3,
    output li_mask_3,
    
    input lo_4,
    input lt_4,
    output li_4,
    output li_mask_4,
    
    input lo_5,
    input lt_5,
    output li_5,
    output li_mask_5,
    
    input lo_6,
    input lt_6,
    output li_6,
    output li_mask_6,
    
    input lo_7,
    input lt_7,
    output li_7,
    output li_mask_7,

    input ri,
    output ro,
    output rt,

    input [3:0] sel
);

wire [7:0] li_mask;
wire [7:0] lo;
wire [7:0] lt;

assign lo = {lo_7, lo_6, lo_5, lo_4, lo_3, lo_2, lo_1, lo_0};
assign lt = {lt_7, lt_6, lt_5, lt_4, lt_3, lt_2, lt_1, lt_0};

assign li_mask_0 = li_mask[0];
assign li_mask_1 = li_mask[1];
assign li_mask_2 = li_mask[2];
assign li_mask_3 = li_mask[3];
assign li_mask_4 = li_mask[4];
assign li_mask_5 = li_mask[5];
assign li_mask_6 = li_mask[6];
assign li_mask_7 = li_mask[7];

assign li_0 = ri;
assign li_1 = ri;
assign li_2 = ri;
assign li_3 = ri;
assign li_4 = ri;
assign li_5 = ri;
assign li_6 = ri;
assign li_7 = ri;

assign ro = lo[sel];
assign rt = lt[sel];

genvar i;

for (i = 0; i < C_NUM_OF_PIN; i = i + 1) begin
    assign li_mask[i] = (sel == i)? 1'b1: 1'b0;
end

    
endmodule