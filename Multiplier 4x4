module Multiplier_4x4(
input [3:0] a,
input [3:0] b,
output [7:0] y
);
wire c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11;
wire s1,s2,s3,s4,s5,s6;
wire A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,
A11,A12,A13,A14,A15,A16;

assign y[0] = a[0]&b[0];

assign A2 = a[1]&b[0], A3 = a[0]&b[1];
HA inst1 (A2,A3,y[1],c1);

assign A4 = a[1]&b[1],A5 = a[2]&b[0];
FA inst2 (A5,A4,c1,s1,c2);

assign A6 = a[3]&b[0], A7 = a[2]&b[1];
FA inst3 (A6,A7,c2,s2,c3);
//
assign A8 = a[0]&b[2];
HA inst4 (A8,s1,y[2],c4);

assign A9 = a[1]&b[2];
FA inst5 (A9,s2,c4,s3,c5);

assign A10 = a[3]&b[1];
FA inst6 (A10,c3,c5,s4,c6);
//
assign A11 = a[0]&b[3];
HA inst7 (A11,s3,y[3],c7);

assign A12 = a[2]&b[2];
FA inst8 (A12,s4,c7,s5,c8);

assign A13 = a[3]&b[2];
FA inst9 (A13,c6,c8,s6,c9);
//
assign A14 = a[1]&b[3];
HA inst10 (A14,s5,y[4],c10);

assign A15 = a[2]&b[3];
FA inst11 (A15,s5,c10,y[5],c11);

assign A16 = a[3]&b[3];
FA inst12 (A16,c9,c11,y[6],y[7]);
     
endmodule

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
module FA(
input A, B, Cin,
output Sum, Cout
);

assign Sum = A^B^Cin;
assign Cout = (A&B) | (B&Cin) | (Cin&A);

endmodule
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
module HA(
input X, Y,
output S, C
);

assign S = X^Y;
assign C = X&Y;

endmodule
