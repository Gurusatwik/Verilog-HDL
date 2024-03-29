//popcount is a circuit that is used to count the number of 1s in a Vector.

module popcount (
	input [254:0] in,
	output reg [7:0] out
);
integer i;
	always @(*) begin	// Combinational always block
		out = 0;
		for(i=0;i<255;i=i+1)
			out = out + in[i];
	end
	
endmodule
