/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module multiplier8Bit_16 (
    input [7:0] a,
    input [7:0] b,
    input alufn,
    output reg [7:0] mul
  );
  
  
  
  always @* begin
    if (~alufn) begin
      mul = a * b;
    end else begin
      mul = a / b;
    end
  end
endmodule