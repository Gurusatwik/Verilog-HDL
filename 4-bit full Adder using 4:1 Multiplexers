module FA(
    input [3:0] a,
    input [3:0] b,
    input cin,
    output cout,
    output [3:0] sum
);
wire c0,c1,c2;    
wire [3:0] nota;
assign nota = ~a;
   
MUX4to1 M0C(1'b0,a[0],a[0],1'b1,b[0],cin,c0);
MUX4to1 M0S(a[0],nota[0],nota[0],a[0],b[0],cin,sum[0]);

MUX4to1 M1C(1'b0,a[1],a[1],1'b1,b[1],c0,c1);
MUX4to1 M1S(a[1],nota[1],nota[1],a[1],b[1],c0,sum[1]);

MUX4to1 M2C(1'b0,a[2],a[2],1'b1,b[2],c1,c2);
MUX4to1 M2S(a[2],nota[2],nota[2],a[2],b[2],c1,sum[2]);

MUX4to1 M3C(1'b0,a[3],a[3],1'b1,b[3],c2,cout);
MUX4to1 M3S(a[3],nota[3],nota[3],a[3],b[3],c2,sum[3]);

endmodule

module MUX4to1(
    input i0,i1,i2,i3,
    input s1,s0,
    output reg out
);

always @(*) begin
case({s1,s0})
    2'b00 : out <= i0;
    2'b01 : out <= i1;
    2'b10 : out <= i2;
    2'b11 : out <= i3;
    default : out <= 1'bx;
endcase
end
endmodule
