//Top module
module bcd100adder(
input [399:0]a,b,
input cin,
output cout,
output [399:0]sum);

wire [99:0] cout_wire;
genvar i;

generate
for(i=0;i<400;i=i+4) begin : bcd_adder
    if (i==0)
    adder4 fa0(a[3:0],b[3:0],cin,cout_wire[0],sum[3:0]);
    
    else
    adder4 fa(a[i+3:i],b[i+3:i],cout_wire[((i/4)-1)],cout_wire[i/4],sum[i+3:i]);
end
endgenerate
endmodule
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//Submodule2
module adder(
input a,b,cin,
output cout, sum);

assign sum = a^b^cin;
assign cout = a&b|b&cin|cin&a;

endmodule
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//Submodule1
module adder4(
input [3:0]a,b,
input cin,
output cout,
output [3:0]sum);

wire c0,c1,c2;
adder a0(a[0],b[0],cin,c0,sum[0]);
adder a1(a[1],b[1],c0,c1,sum[1]);
adder a2(a[2],b[2],c1,c2,sum[2]);
adder a3(a[3],b[3],c2,cout,sum[3]);

endmodule
