//NOTE: generate is used to duplicate a module N number of times. It is not a synthesizable code as per reports yet it generates a Schematic

//1-Bit Full adder module
module One_bit_FA(
    input a,b,
    input cin,
    output cout,sum);
	
    assign sum  = a^b^cin;
    assign cout = (a&b)|(b&cin)|(cin&a);
endmodule

//N-Bit Full adder module 
module Nbit_full_adder
    #(parameter N = 100)
    (input [N-1:0] a, b,
    input cin,
    output [N-1:0] sum,
    output [N-1:0] cout
);

genvar i;

generate
for(i=0; i<N-1; i=i+1)
begin: Full_adder_block
  if(i==0)
      One_bit_FA fa0(a[i],b[i],cin,cout[0],sum[0]);
    
  else
      One_bit_FA fa(a[i],b[i],cout[i-1],cout[i],sum[i]);

end
endgenerate
endmodule
