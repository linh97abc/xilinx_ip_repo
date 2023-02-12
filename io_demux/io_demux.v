module io_demux#
(
    parameter C_NUM_OF_PIN = 1
) (
    input lt,
    input lo,
    output li,
    
    output rt_0,
    output ro_0,
    input ri_0,
    input ri_mask_0,
    
    output rt_1,
    output ro_1,
    input ri_1,
    input ri_mask_1,
    
    output rt_2,
    output ro_2,
    input ri_2,
    input ri_mask_2,
    
    output rt_3,
    output ro_3,
    input ri_3,
    input ri_mask_3,
    
    output rt_4,
    output ro_4,
    input ri_4,
    input ri_mask_4,
    
    output rt_5,
    output ro_5,
    input ri_5,
    input ri_mask_5,
    
    output rt_6,
    output ro_6,
    input ri_6,
    input ri_mask_6,
    
    output rt_7,
    output ro_7,
    input ri_7,
    input ri_mask_7
);

integer i;

wire [C_NUM_OF_PIN-1:0] ri;
reg li;

wire [7:0] ri_mask;

assign ri = {ri_7, ri_6, ri_5, ri_4, ri_3, ri_2, ri_1, ri_0};
assign  ri_mask = {ri_mask_7, ri_mask_6, ri_mask_5, ri_mask_4, ri_mask_3, ri_mask_2, ri_mask_1, ri_mask_0};

always @(ri, ri_mask) begin
    li = 1'bz;
    for(i = 0; i < C_NUM_OF_PIN; i = i+1) begin
        li = ri_mask[i]?ri[i]: li;
    end
end
    
endmodule