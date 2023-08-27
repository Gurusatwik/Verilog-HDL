module Encoder(
input [3:0] a,
output reg [1:0] y,
input en
);

always@(a or en)
begin
    casex(a)
        4'b0001: y = 2'd0;
        4'b001x: y = 2'd1;
        4'b01xx: y = 2'd2;
        4'b1xxx: y = 2'd3;
        default: y = 2'd0;
    endcase
end
endmodule
