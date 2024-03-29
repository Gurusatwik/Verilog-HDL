module adder512(
input [511:0]a,b,
input cin,
output cout,
output [511:0]sum);

wire c2560;
adder256 a2560(a[255:0],b[255:0],cin,c2560,sum[255:0]);
adder256 a2561(a[511:256],b[511:256],c2560,cout,sum[511:256]);

endmodule

//////////////////////////////////////
//1-bit Adder
module adder(
input a,b,cin,
output cout, sum);

assign sum = a^b^cin;
assign cout = a&b|b&cin|cin&a; 

endmodule

////////////////////////////////////
//4-bit Adder
module adder4(
input [3:0]a,b,
input cin,
output cout,
output [3:0]sum);

wire c0,c1,c2;
adder a0(a[0],b[0],cin,c0,sum[0]);
adder a1(a[1],b[1],c0,c1,sum[1]);
adder a2(a[2],b[2],c1,c2,sum[2]);
adder a3(a[3],b[3],c2,c3,sum[3]);

endmodule

////////////////////////////////////
//8-bit Adder
module adder8(
input [7:0]a,b,
input cin,
output cout,
output [7:0]sum);
wire c40;
adder4 a40(a[3:0],b[3:0],cin,c40,sum[3:0]);
adder4 a41(a[7:4],b[7:4],c40,cout,sum[7:4]);

endmodule

/////////////////////////////////////
//16-bit Adder
module adder16(
input [15:0]a,b,
input cin,
output cout,
output [15:0]sum);

wire c80;
adder8 a80(a[7:0],b[7:0],cin,c80,sum[7:0]);
adder8 a81(a[15:8],b[15:8],c80,cout,sum[15:8]);

endmodule 

///////////////////////////////////////////
//32-bit Adder
module adder32(
input [31:0]a,b,
input cin,
output cout,
output [31:0]sum);

wire c160;
adder16 a160(a[15:0],b[15:0],cin,c160,sum[15:0]);
adder16 a161(a[31:16],b[31:16],c160,cout,sum[31:16]);

endmodule

/////////////////////////////////////////////////
//64-bit Addder 
module adder64(
input [63:0]a,b,
input cin,
output cout,
output [63:0]sum);

wire c320;
adder32 a320(a[31:0],b[31:0],cin,c320,sum[31:0]);
adder32 a321(a[63:32],b[63:32],c320,cout,sum[63:32]);

endmodule

///////////////////////////////////////////////
//128-bit Adder
module adder128(
input [127:0]a,b,
input cin,
output cout,
output [127:0]sum);

wire c640;
adder64 a640(a[63:0],b[63:0],cin,c640,sum[63:0]);
adder64 a641(a[127:64],b[127:64],c640,cout,sum[127:64]);
endmodule

////////////////////////////////////////////////
//256-bit Adder
module adder256(
input [255:0]a,b,
input cin,
output cout,
output [255:0]sum);

wire c1280;
adder128 a1280(a[127:0],b[127:0],cin,c1280,sum[127:0]);
adder128 a1281(a[255:128],b[255:128],c1280,cout,sum[255:128]);

endmodule
