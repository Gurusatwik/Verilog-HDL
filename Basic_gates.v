//AND Gate using dataflow modelling 
module AND_Gate(
  input a,b,  //Input declaration
  output out);  //Output declaration
  assign out = a & b;
endmodule
---------------------------------------------------------------------------------------------------------------------------------------------------------------------
//OR Gate uaing datadlow modelling
module OR_Gate(
  input a,b,   //Input declaration
  output out);  //Output declaration
  assign out = a|b;
endmodule
---------------------------------------------------------------------------------------------------------------------------------------------------------------------
//NOT Gate using dataflow modelling
module NOT_Gate(
  input in,  //Input declaration
  output out);  //Output declaration
  assign out = ~in;
endmodule
---------------------------------------------------------------------------------------------------------------------------------------------------------------------
//NAND Gate using dataflow modelling
module NAND_Gate(
  input a,b,   //Input declaration
  output out);  //Output declaration
  assign out = ~(a&b);
endmodule
---------------------------------------------------------------------------------------------------------------------------------------------------------------------
//NAND Gate using "INSTANTIATION"......Structural modelling
module NAND_Gate(
  input a,b,
  output out);
  wire w1;
  AND_Gate inst1(a,b,w1);
  NOT_Gate inst2(w1,out);
endmodule
---------------------------------------------------------------------------------------------------------------------------------------------------------------------
//NOR Gate using dataflow modelling
module NOR_Gate(
  input a,b,   //Input declaration
  output out);  //Output declaration
  assign out = ~(a|b);
endmodule
---------------------------------------------------------------------------------------------------------------------------------------------------------------------
//NOR Gate using "INSTANTIATION"........Sturctural modelling
module NOR_Gate(
  input a,b,  //Input declaration
  output out);  //Output declaration
  wire w1;
  OR_Gate inst1(a,b,w1);
  NOT_Gate inst2(w1,out);
endmodule
---------------------------------------------------------------------------------------------------------------------------------------------------------------------
//XOR Gate using dataflow modelling
module XOR_Gate(
  input a,b,
  output out);
  assign out = (a&(~b)) | ((~a)&b);
endmodule
---------------------------------------------------------------------------------------------------------------------------------------------------------------------
//XOR Gate using "INSTANTIATION"..............Structural modelling
module XOR_Gate(
  input a,b,
  output out);
  wire w1,w2,w3;
  NAND_Gate inst1(a,b,w1);
  AND_Gate inst2(a,w1,w2);
  AND_Gate inst2(a,w1,w3); 
  OR_Gate inst3(w2,w3,out);
endmodule
----------------------------------------------------------------------------------------------------------------------------------------------------------------------


