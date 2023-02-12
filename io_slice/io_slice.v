module io_slice #(
    parameter C_NUM_OF_PIN = 1
) (
    output ro_0,
    output rt_0,
    input ri_0,

    output ro_1,
    output rt_1,
    input ri_1,

    output ro_2,
    output rt_2,
    input ri_2,

    output ro_3,
    output rt_3,
    input ri_3,

    output ro_4,
    output rt_4,
    input ri_4,

    output ro_5,
    output rt_5,
    input ri_5,

    output ro_6,
    output rt_6,
    input ri_6,

    output ro_7,
    output rt_7,
    input ri_7,

    output ro_8,
    output rt_8,
    input ri_8,

    output ro_9,
    output rt_9,
    input ri_9,

    output ro_10,
    output rt_10,
    input ri_10,

    output ro_11,
    output rt_11,
    input ri_11,

    output ro_12,
    output rt_12,
    input ri_12,

    output ro_13,
    output rt_13,
    input ri_13,

    output ro_14,
    output rt_14,
    input ri_14,

    output ro_15,
    output rt_15,
    input ri_15,

    output ro_16,
    output rt_16,
    input ri_16,

    output ro_17,
    output rt_17,
    input ri_17,

    output ro_18,
    output rt_18,
    input ri_18,

    output ro_19,
    output rt_19,
    input ri_19,

    output ro_20,
    output rt_20,
    input ri_20,

    output ro_21,
    output rt_21,
    input ri_21,

    output ro_22,
    output rt_22,
    input ri_22,

    output ro_22,
    output rt_22,
    input ri_22,

    output ro_23,
    output rt_23,
    input ri_23,

    output ro_24,
    output rt_24,
    input ri_24,

    output ro_25,
    output rt_25,
    input ri_25,

    output ro_26,
    output rt_26,
    input ri_26,

    output ro_27,
    output rt_27,
    input ri_27,

    output ro_28,
    output rt_28,
    input ri_28,

    output ro_29,
    output rt_29,
    input ri_29,

    output ro_30,
    output rt_30,
    input ri_30,

    output ro_31,
    output rt_31,
    input ri_31,

    input [C_NUM_OF_PIN-1:0] lo,
    input [C_NUM_OF_PIN-1:0] lt,
    output [C_NUM_OF_PIN-1:0] li
);
    
    wire [31:0] lo_tmp;
    wire [31:0] lt_tmp;
    wire [31:0] li_tmp;

assign li = li_tmp[C_NUM_OF_PIN-1:0];
assign lo_tmp[C_NUM_OF_PIN-1:0] = lo;
assign lt_tmp[C_NUM_OF_PIN-1:0] = lt;


    assign ro_0= lo_tmp[0];
assign ro_1= lo_tmp[1];
assign ro_2= lo_tmp[2];
assign ro_3= lo_tmp[3];
assign ro_4= lo_tmp[4];
assign ro_5= lo_tmp[5];
assign ro_6= lo_tmp[6];
assign ro_7= lo_tmp[7];
assign ro_8= lo_tmp[8];
assign ro_9= lo_tmp[9];
assign ro_10= lo_tmp[10];
assign ro_11= lo_tmp[11];
assign ro_12= lo_tmp[12];
assign ro_13= lo_tmp[13];
assign ro_14= lo_tmp[14];
assign ro_15= lo_tmp[15];
assign ro_16= lo_tmp[16];
assign ro_17= lo_tmp[17];
assign ro_18= lo_tmp[18];
assign ro_19= lo_tmp[19];
assign ro_20= lo_tmp[20];
assign ro_21= lo_tmp[21];
assign ro_22= lo_tmp[22];
assign ro_23= lo_tmp[23];
assign ro_24= lo_tmp[24];
assign ro_25= lo_tmp[25];
assign ro_26= lo_tmp[26];
assign ro_27= lo_tmp[27];
assign ro_28= lo_tmp[28];
assign ro_29= lo_tmp[29];
assign ro_30= lo_tmp[30];
assign ro_31= lo_tmp[31];

assign rt_0= lt_tmp[0];
assign rt_1= lt_tmp[1];
assign rt_2= lt_tmp[2];
assign rt_3= lt_tmp[3];
assign rt_4= lt_tmp[4];
assign rt_5= lt_tmp[5];
assign rt_6= lt_tmp[6];
assign rt_7= lt_tmp[7];
assign rt_8= lt_tmp[8];
assign rt_9= lt_tmp[9];
assign rt_10= lt_tmp[10];
assign rt_11= lt_tmp[11];
assign rt_12= lt_tmp[12];
assign rt_13= lt_tmp[13];
assign rt_14= lt_tmp[14];
assign rt_15= lt_tmp[15];
assign rt_16= lt_tmp[16];
assign rt_17= lt_tmp[17];
assign rt_18= lt_tmp[18];
assign rt_19= lt_tmp[19];
assign rt_20= lt_tmp[20];
assign rt_21= lt_tmp[21];
assign rt_22= lt_tmp[22];
assign rt_23= lt_tmp[23];
assign rt_24= lt_tmp[24];
assign rt_25= lt_tmp[25];
assign rt_26= lt_tmp[26];
assign rt_27= lt_tmp[27];
assign rt_28= lt_tmp[28];
assign rt_29= lt_tmp[29];
assign rt_30= lt_tmp[30];
assign rt_31= lt_tmp[31];

assign li_tmp = {
    ri_31,
ri_30,
ri_29,
ri_28,
ri_27,
ri_26,
ri_25,
ri_24,
ri_23,
ri_22,
ri_21,
ri_20,
ri_19,
ri_18,
ri_17,
ri_16,
ri_15,
ri_14,
ri_13,
ri_12,
ri_11,
ri_10,
ri_9,
ri_8,
ri_7,
ri_6,
ri_5,
ri_4,
ri_3,
ri_2,
ri_1,
ri_0
};

endmodule