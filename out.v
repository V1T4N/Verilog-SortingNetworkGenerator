module sort_pipe(
     input clk,
     input  [7:0] x_0, x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, 
     output [7:0] median
);
reg[7:0] r0 [8:0];
reg[7:0] r1 [8:0];
reg[7:0] r2 [8:0];
reg[7:0] r3 [8:0];
reg[7:0] r4 [8:0];
reg[7:0] r5 [8:0];
reg[7:0] r6 [8:0];
reg[7:0] r7 [8:0];

//-------declaration layer:0----------
wire [7:0] cmp0_out0;
wire [7:0] cmp0_out1;
reg [7:0] cmp0_in0;
reg [7:0] cmp0_in1;

//-------declaration layer:1----------
wire [7:0] cmp1_out0;
wire [7:0] cmp1_out1;
reg [7:0] cmp1_in0;
reg [7:0] cmp1_in1;

wire [7:0] cmp2_out0;
wire [7:0] cmp2_out1;
reg [7:0] cmp2_in0;
reg [7:0] cmp2_in1;

wire [7:0] cmp3_out0;
wire [7:0] cmp3_out1;
reg [7:0] cmp3_in0;
reg [7:0] cmp3_in1;

wire [7:0] cmp4_out0;
wire [7:0] cmp4_out1;
reg [7:0] cmp4_in0;
reg [7:0] cmp4_in1;

//-------declaration layer:2----------
wire [7:0] cmp5_out0;
wire [7:0] cmp5_out1;
reg [7:0] cmp5_in0;
reg [7:0] cmp5_in1;

wire [7:0] cmp6_out0;
wire [7:0] cmp6_out1;
reg [7:0] cmp6_in0;
reg [7:0] cmp6_in1;

wire [7:0] cmp7_out0;
wire [7:0] cmp7_out1;
reg [7:0] cmp7_in0;
reg [7:0] cmp7_in1;

//-------declaration layer:3----------
wire [7:0] cmp8_out0;
wire [7:0] cmp8_out1;
reg [7:0] cmp8_in0;
reg [7:0] cmp8_in1;

wire [7:0] cmp9_out0;
wire [7:0] cmp9_out1;
reg [7:0] cmp9_in0;
reg [7:0] cmp9_in1;

wire [7:0] cmp10_out0;
wire [7:0] cmp10_out1;
reg [7:0] cmp10_in0;
reg [7:0] cmp10_in1;

//-------declaration layer:4----------
wire [7:0] cmp11_out0;
wire [7:0] cmp11_out1;
reg [7:0] cmp11_in0;
reg [7:0] cmp11_in1;

wire [7:0] cmp12_out0;
wire [7:0] cmp12_out1;
reg [7:0] cmp12_in0;
reg [7:0] cmp12_in1;

wire [7:0] cmp13_out0;
wire [7:0] cmp13_out1;
reg [7:0] cmp13_in0;
reg [7:0] cmp13_in1;

wire [7:0] cmp14_out0;
wire [7:0] cmp14_out1;
reg [7:0] cmp14_in0;
reg [7:0] cmp14_in1;

//-------declaration layer:5----------
wire [7:0] cmp15_out0;
wire [7:0] cmp15_out1;
reg [7:0] cmp15_in0;
reg [7:0] cmp15_in1;

wire [7:0] cmp16_out0;
wire [7:0] cmp16_out1;
reg [7:0] cmp16_in0;
reg [7:0] cmp16_in1;

wire [7:0] cmp17_out0;
wire [7:0] cmp17_out1;
reg [7:0] cmp17_in0;
reg [7:0] cmp17_in1;

wire [7:0] cmp18_out0;
wire [7:0] cmp18_out1;
reg [7:0] cmp18_in0;
reg [7:0] cmp18_in1;

//-------declaration layer:6----------
wire [7:0] cmp19_out0;
wire [7:0] cmp19_out1;
reg [7:0] cmp19_in0;
reg [7:0] cmp19_in1;

wire [7:0] cmp20_out0;
wire [7:0] cmp20_out1;
reg [7:0] cmp20_in0;
reg [7:0] cmp20_in1;

//-------declaration layer:7----------
wire [7:0] cmp21_out0;
wire [7:0] cmp21_out1;
reg [7:0] cmp21_in0;
reg [7:0] cmp21_in1;

//-------Temp Register----------
reg [7:0] r0_1_tmp;
reg [7:0] r0_2_tmp;
reg [7:0] r0_3_tmp;
reg [7:0] r0_4_tmp;
reg [7:0] r0_5_tmp;
reg [7:0] r0_6_tmp;
reg [7:0] r0_7_tmp;
reg [7:0] r1_8_tmp;
reg [7:0] r2_5_tmp;
reg [7:0] r2_6_tmp;
reg [7:0] r2_7_tmp;
reg [7:0] r3_0_tmp;
reg [7:0] r3_1_tmp;
reg [7:0] r3_3_tmp;
reg [7:0] r4_7_tmp;
reg [7:0] r5_0_tmp;
reg [7:0] r6_0_tmp;
reg [7:0] r6_2_tmp;
reg [7:0] r6_5_tmp;
reg [7:0] r6_7_tmp;
reg [7:0] r6_8_tmp;
reg [7:0] r7_0_tmp;
reg [7:0] r7_1_tmp;
reg [7:0] r7_2_tmp;
reg [7:0] r7_5_tmp;
reg [7:0] r7_6_tmp;
reg [7:0] r7_7_tmp;
reg [7:0] r7_8_tmp;
//-----------------------------

always @(posedge clk)begin
//--------INPUT LAYER-------------
cmp0_in0 <= x_0;
cmp0_in1 <= x_8;
r0[0] <= cmp0_out0;
r0[8] <= cmp0_out1;

r0_1_tmp <= x_1;
r0[1] <= r0_1_tmp ;
r0_2_tmp <= x_2;
r0[2] <= r0_2_tmp ;
r0_3_tmp <= x_3;
r0[3] <= r0_3_tmp ;
r0_4_tmp <= x_4;
r0[4] <= r0_4_tmp ;
r0_5_tmp <= x_5;
r0[5] <= r0_5_tmp ;
r0_6_tmp <= x_6;
r0[6] <= r0_6_tmp ;
r0_7_tmp <= x_7;
r0[7] <= r0_7_tmp ;
//--------------------------

//---------layer : 1------------
cmp1_in0 <= r0[0];
cmp1_in1 <= r0[4];
r1[0] <= cmp1_out0;
r1[4] <= cmp1_out1;

cmp2_in0 <= r0[1];
cmp2_in1 <= r0[5];
r1[1] <= cmp2_out0;
r1[5] <= cmp2_out1;

cmp3_in0 <= r0[2];
cmp3_in1 <= r0[6];
r1[2] <= cmp3_out0;
r1[6] <= cmp3_out1;

cmp4_in0 <= r0[3];
cmp4_in1 <= r0[7];
r1[3] <= cmp4_out0;
r1[7] <= cmp4_out1;

r1_8_tmp <= r0[8];
r1[8] <= r1_8_tmp;

//--------------------------
//---------layer : 2------------
cmp5_in0 <= r1[4];
cmp5_in1 <= r1[8];
r2[4] <= cmp5_out0;
r2[8] <= cmp5_out1;

cmp6_in0 <= r1[0];
cmp6_in1 <= r1[2];
r2[0] <= cmp6_out0;
r2[2] <= cmp6_out1;

cmp7_in0 <= r1[1];
cmp7_in1 <= r1[3];
r2[1] <= cmp7_out0;
r2[3] <= cmp7_out1;

r2_5_tmp <= r1[5];
r2[5] <= r2_5_tmp;

r2_6_tmp <= r1[6];
r2[6] <= r2_6_tmp;

r2_7_tmp <= r1[7];
r2[7] <= r2_7_tmp;

//--------------------------
//---------layer : 3------------
cmp8_in0 <= r2[4];
cmp8_in1 <= r2[6];
r3[4] <= cmp8_out0;
r3[6] <= cmp8_out1;

cmp9_in0 <= r2[5];
cmp9_in1 <= r2[7];
r3[5] <= cmp9_out0;
r3[7] <= cmp9_out1;

cmp10_in0 <= r2[2];
cmp10_in1 <= r2[8];
r3[2] <= cmp10_out0;
r3[8] <= cmp10_out1;

r3_0_tmp <= r2[0];
r3[0] <= r3_0_tmp;

r3_1_tmp <= r2[1];
r3[1] <= r3_1_tmp;

r3_3_tmp <= r2[3];
r3[3] <= r3_3_tmp;

//--------------------------
//---------layer : 4------------
cmp11_in0 <= r3[2];
cmp11_in1 <= r3[4];
r4[2] <= cmp11_out0;
r4[4] <= cmp11_out1;

cmp12_in0 <= r3[3];
cmp12_in1 <= r3[5];
r4[3] <= cmp12_out0;
r4[5] <= cmp12_out1;

cmp13_in0 <= r3[6];
cmp13_in1 <= r3[8];
r4[6] <= cmp13_out0;
r4[8] <= cmp13_out1;

cmp14_in0 <= r3[0];
cmp14_in1 <= r3[1];
r4[0] <= cmp14_out0;
r4[1] <= cmp14_out1;

r4_7_tmp <= r3[7];
r4[7] <= r4_7_tmp;

//--------------------------
//---------layer : 5------------
cmp15_in0 <= r4[2];
cmp15_in1 <= r4[3];
r5[2] <= cmp15_out0;
r5[3] <= cmp15_out1;

cmp16_in0 <= r4[4];
cmp16_in1 <= r4[5];
r5[4] <= cmp16_out0;
r5[5] <= cmp16_out1;

cmp17_in0 <= r4[6];
cmp17_in1 <= r4[7];
r5[6] <= cmp17_out0;
r5[7] <= cmp17_out1;

cmp18_in0 <= r4[1];
cmp18_in1 <= r4[8];
r5[1] <= cmp18_out0;
r5[8] <= cmp18_out1;

r5_0_tmp <= r4[0];
r5[0] <= r5_0_tmp;

//--------------------------
//---------layer : 6------------
cmp19_in0 <= r5[1];
cmp19_in1 <= r5[4];
r6[1] <= cmp19_out0;
r6[4] <= cmp19_out1;

cmp20_in0 <= r5[3];
cmp20_in1 <= r5[6];
r6[3] <= cmp20_out0;
r6[6] <= cmp20_out1;

r6_0_tmp <= r5[0];
r6[0] <= r6_0_tmp;

r6_2_tmp <= r5[2];
r6[2] <= r6_2_tmp;

r6_5_tmp <= r5[5];
r6[5] <= r6_5_tmp;

r6_7_tmp <= r5[7];
r6[7] <= r6_7_tmp;

r6_8_tmp <= r5[8];
r6[8] <= r6_8_tmp;

//--------------------------
//---------layer : 7------------
cmp21_in0 <= r6[3];
cmp21_in1 <= r6[4];
r7[3] <= cmp21_out0;
r7[4] <= cmp21_out1;

r7_0_tmp <= r6[0];
r7[0] <= r7_0_tmp;

r7_1_tmp <= r6[1];
r7[1] <= r7_1_tmp;

r7_2_tmp <= r6[2];
r7[2] <= r7_2_tmp;

r7_5_tmp <= r6[5];
r7[5] <= r7_5_tmp;

r7_6_tmp <= r6[6];
r7[6] <= r7_6_tmp;

r7_7_tmp <= r6[7];
r7[7] <= r7_7_tmp;

r7_8_tmp <= r6[8];
r7[8] <= r7_8_tmp;

//--------------------------
end
//-------------------Comparator module connect-------------------------------
cmp cmp0 (.in0(cmp0_in0), .in1(cmp0_in1), .out0(cmp0_out0), .out1(cmp0_out1));
cmp cmp1 (.in0(cmp1_in0), .in1(cmp1_in1), .out0(cmp1_out0), .out1(cmp1_out1));
cmp cmp2 (.in0(cmp2_in0), .in1(cmp2_in1), .out0(cmp2_out0), .out1(cmp2_out1));
cmp cmp3 (.in0(cmp3_in0), .in1(cmp3_in1), .out0(cmp3_out0), .out1(cmp3_out1));
cmp cmp4 (.in0(cmp4_in0), .in1(cmp4_in1), .out0(cmp4_out0), .out1(cmp4_out1));
cmp cmp5 (.in0(cmp5_in0), .in1(cmp5_in1), .out0(cmp5_out0), .out1(cmp5_out1));
cmp cmp6 (.in0(cmp6_in0), .in1(cmp6_in1), .out0(cmp6_out0), .out1(cmp6_out1));
cmp cmp7 (.in0(cmp7_in0), .in1(cmp7_in1), .out0(cmp7_out0), .out1(cmp7_out1));
cmp cmp8 (.in0(cmp8_in0), .in1(cmp8_in1), .out0(cmp8_out0), .out1(cmp8_out1));
cmp cmp9 (.in0(cmp9_in0), .in1(cmp9_in1), .out0(cmp9_out0), .out1(cmp9_out1));
cmp cmp10 (.in0(cmp10_in0), .in1(cmp10_in1), .out0(cmp10_out0), .out1(cmp10_out1));
cmp cmp11 (.in0(cmp11_in0), .in1(cmp11_in1), .out0(cmp11_out0), .out1(cmp11_out1));
cmp cmp12 (.in0(cmp12_in0), .in1(cmp12_in1), .out0(cmp12_out0), .out1(cmp12_out1));
cmp cmp13 (.in0(cmp13_in0), .in1(cmp13_in1), .out0(cmp13_out0), .out1(cmp13_out1));
cmp cmp14 (.in0(cmp14_in0), .in1(cmp14_in1), .out0(cmp14_out0), .out1(cmp14_out1));
cmp cmp15 (.in0(cmp15_in0), .in1(cmp15_in1), .out0(cmp15_out0), .out1(cmp15_out1));
cmp cmp16 (.in0(cmp16_in0), .in1(cmp16_in1), .out0(cmp16_out0), .out1(cmp16_out1));
cmp cmp17 (.in0(cmp17_in0), .in1(cmp17_in1), .out0(cmp17_out0), .out1(cmp17_out1));
cmp cmp18 (.in0(cmp18_in0), .in1(cmp18_in1), .out0(cmp18_out0), .out1(cmp18_out1));
cmp cmp19 (.in0(cmp19_in0), .in1(cmp19_in1), .out0(cmp19_out0), .out1(cmp19_out1));
cmp cmp20 (.in0(cmp20_in0), .in1(cmp20_in1), .out0(cmp20_out0), .out1(cmp20_out1));
cmp cmp21 (.in0(cmp21_in0), .in1(cmp21_in1), .out0(cmp21_out0), .out1(cmp21_out1));
assign median = cmp21_out1;
endmodule

//--------------comparator----------------
module cmp(
     input  [7:0] in0,
     input  [7:0] in1,
     output wire [7:0] out0,
     output wire [7:0] out1
);
     assign out0 = (in0<in1) ? in0:in1;
     assign out1 = (in0<in1) ? in1:in0;
endmodule
