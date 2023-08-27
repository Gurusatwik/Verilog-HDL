//Reduction operators generate a one-bit output. It does AND, OR, XOR, NAND, NOR & XNOR operations
//Parity check is used in detecting errors when trasnsmitting data through an imperfect channel
//It is just an XOR operation among the bits of a Vector

module parity(
  input [7:0]in,
  output parity);
  
assign parity = ^in;

endmodule
