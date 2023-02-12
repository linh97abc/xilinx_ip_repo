module io_concat #(
    parameter C_NUM_OF_PIN = 1
) (
    input lo_0,
    input lt_0,
    output li_0,

    input lo_1,
    input lt_1,
    output li_1,

    input lo_2,
    input lt_2,
    output li_2,

    input lo_3,
    input lt_3,
    output li_3,

    input lo_4,
    input lt_4,
    output li_4,

    input lo_5,
    input lt_5,
    output li_5,

    input lo_6,
    input lt_6,
    output li_6,

    input lo_7,
    input lt_7,
    output li_7,

    input lo_8,
    input lt_8,
    output li_8,

    input lo_9,
    input lt_9,
    output li_9,

    input lo_10,
    input lt_10,
    output li_10,

    input lo_11,
    input lt_11,
    output li_11,

    input lo_12,
    input lt_12,
    output li_12,

    input lo_13,
    input lt_13,
    output li_13,

    input lo_14,
    input lt_14,
    output li_14,

    input lo_15,
    input lt_15,
    output li_15,

    input lo_16,
    input lt_16,
    output li_16,

    input lo_17,
    input lt_17,
    output li_17,

    input lo_18,
    input lt_18,
    output li_18,

    input lo_19,
    input lt_19,
    output li_19,

    input lo_20,
    input lt_20,
    output li_20,

    input lo_21,
    input lt_21,
    output li_21,

    input lo_22,
    input lt_22,
    output li_22,

    input lo_22,
    input lt_22,
    output li_22,

    input lo_23,
    input lt_23,
    output li_23,

    input lo_24,
    input lt_24,
    output li_24,

    input lo_25,
    input lt_25,
    output li_25,

    input lo_26,
    input lt_26,
    output li_26,

    input lo_27,
    input lt_27,
    output li_27,

    input lo_28,
    input lt_28,
    output li_28,

    input lo_29,
    input lt_29,
    output li_29,

    input lo_30,
    input lt_30,
    output li_30,

    input lo_31,
    input lt_31,
    output li_31,

    output [C_NUM_OF_PIN-1:0] ro,
    output [C_NUM_OF_PIN-1:0] rt,
    input [C_NUM_OF_PIN-1:0] ri
);

wire [31:0] ro_tmp;
wire [31:0] rt_tmp;
wire [31:0] ri_tmp;

assign ro = ro_tmp[C_NUM_OF_PIN-1:0];
assign rt = rt_tmp[C_NUM_OF_PIN-1:0];
assign ri_tmp[C_NUM_OF_PIN-1:0] = ri;
    
    assign ro_tmp = {
        lo_31,
        lo_30,
        lo_29,
        lo_28,
        lo_27,
        lo_26,
        lo_25,
        lo_24,
        lo_23,
        lo_22,
        lo_21,
        lo_20,
        lo_19,
        lo_18,
        lo_17,
        lo_16,
        lo_15,
        lo_14,
        lo_13,
        lo_12,
        lo_11,
        lo_10,
        lo_9,
        lo_8,
        lo_7,
        lo_6,
        lo_5,
        lo_4,
        lo_3,
        lo_2,
        lo_1,
        lo_0

    };

    assign rt_tmp = {
        lt_31,
        lt_30,
        lt_29,
        lt_28,
        lt_27,
        lt_26,
        lt_25,
        lt_24,
        lt_23,
        lt_22,
        lt_21,
        lt_20,
        lt_19,
        lt_18,
        lt_17,
        lt_16,
        lt_15,
        lt_14,
        lt_13,
        lt_12,
        lt_11,
        lt_10,
        lt_9,
        lt_8,
        lt_7,
        lt_6,
        lt_5,
        lt_4,
        lt_3,
        lt_2,
        lt_1,
        lt_0
    };

    assign li_0 = ri_tmp[0];
    assign li_1 = ri_tmp[1];
    assign li_2 = ri_tmp[2];
    assign li_3 = ri_tmp[3];
    assign li_4 = ri_tmp[4];
    assign li_5 = ri_tmp[5];
    assign li_6 = ri_tmp[6];
    assign li_7 = ri_tmp[7];
    assign li_8 = ri_tmp[8];
    assign li_9 = ri_tmp[9];
    assign li_10 = ri_tmp[10];
    assign li_11= ri_tmp[11];
    assign li_12= ri_tmp[12];
    assign li_13= ri_tmp[13];
    assign li_14= ri_tmp[14];
    assign li_15= ri_tmp[15];
    assign li_16= ri_tmp[16];
    assign li_17= ri_tmp[17];
    assign li_18= ri_tmp[18];
    assign li_19= ri_tmp[19];
    assign li_20 = ri_tmp[20];
    assign li_21= ri_tmp[21];
    assign li_22= ri_tmp[22];
    assign li_23= ri_tmp[23];
    assign li_24= ri_tmp[24];
    assign li_25= ri_tmp[25];
    assign li_26= ri_tmp[26];
    assign li_27= ri_tmp[27];
    assign li_28= ri_tmp[28];
    assign li_29= ri_tmp[29];
    assign li_30 = ri_tmp[30];
    assign li_31 = ri_tmp[31];

endmodule