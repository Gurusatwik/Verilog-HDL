//This program does bit reversal using for loop
//We perform bit reversal operation using a system directive $bits()[Works only in Intel Quartus or SystemVerilog]
//$bits() retrieves the number of bits that are present in a variable
//In this code $bits(in)/$bits(out) will retreive a value of 200 as the width of the variable is as such.

module bitreversal(
  input [199:0]in,
  output reg [199:0]out);
  
  integer i;
  always@(*) begin
      for(i=0; i<$bits(out); i++)
      begin
        out[i] = in[$bits(out)-i-1];
      end
  end
endmodule
    
        
