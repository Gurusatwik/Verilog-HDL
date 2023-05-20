module IC74LS147N(
input [9:0]a,
input EI,
output reg [3:0] y
);
always@(a or EI)
begin
if(a==10'b1111111111 && EI==1'b1)
    y <= 4'b0000;

else
begin
    casex(a)
        10'bxxxxxxxxx0: y <= 4'b0110;
        10'bxxxxxxxx01: y <= 4'b0111;
        10'bxxxxxxx011: y <= 4'b1000;
        10'bxxxxxx0111: y <= 4'b1001;
        10'bxxxxx01111: y <= 4'b1010;
        10'bxxxx011111: y <= 4'b1011;
        10'bxxx0111111: y <= 4'b1100;
        10'bxx01111111: y <= 4'b1101;
        10'bx011111111: y <= 4'b1110;
        10'b0111111111: y <= 4'b1111;
    endcase
end
end
endmodule
