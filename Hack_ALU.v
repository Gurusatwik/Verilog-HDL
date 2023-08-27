module ALU(
    input Zx,
    input Nx,
    input Zy,
    input Ny,
    input f,
    input No,
    input [15:0]x,y,
    output reg [15:0]out,
    output Zr, Ng
);

always@(*) begin
case ({Zx,Nx,Zy,Ny,f,No})
    6'b101010 : out <= 0;
    6'b111111 : out <= 1;
    6'b111010 : out <= -1;
    6'b001100 : out <= x;
    6'b110000 : out <= y;
    6'b001101 : out <= !x;
    6'b110001 : out <= !y;
    6'b001111 : out <= -x;
    6'b110011 : out <= -y;
    6'b011111 : out <= x+1;
    6'b110111 : out <= y+1;
    6'b001110 : out <= x-1;
    6'b110010 : out <= y-1;
    6'b000010 : out <= x+y;
    6'b010011 : out <= x-y;
    6'b000111 : out <= y-x;
    6'b000000 : out <= x&y;
    6'b010101 : out <= x|y;
    default : out <= 6'bxxxxxx;
endcase
end

assign Zr = (out) ? 1'b0 : 1'b1;
assign Ng = (out<0) ? 1'b1 : 1'b0;
endmodule
