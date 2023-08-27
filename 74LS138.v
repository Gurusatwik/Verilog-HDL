module IC74LS138(
input [2:0]a,
input [2:0]E,
output reg [7:0]y
);
always@(a or E)
begin
if((E==3'b1xx || E==3'bx1x || E==3'bxx0) && a==3'bxxx)
y <= 8'b11111111;

else if(E==3'b001)
begin
    case(a)
        3'b000: y <= 8'b11111110;
        3'b001: y <= 8'b11111101;
        3'b010: y <= 8'b11111011;
        3'b011: y <= 8'b11110111;
        3'b100: y <= 8'b11101111;
        3'b101: y <= 8'b11011111;
        3'b110: y <= 8'b10111111;
        3'b111: y <= 8'b01111111;
    endcase
end
end
endmodule
