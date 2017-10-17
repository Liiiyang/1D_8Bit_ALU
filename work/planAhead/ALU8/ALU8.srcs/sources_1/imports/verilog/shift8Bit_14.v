/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module shift8Bit_14 (
    input [7:0] a,
    input [2:0] b,
    input [1:0] alufn,
    output reg [7:0] shift
  );
  
  
  
  always @* begin
    
    case (alufn)
      2'h0: begin
        shift[0+7-:8] = a[0+7-:8] << b[0+2-:3];
      end
      2'h1: begin
        shift[0+7-:8] = a[0+7-:8] >> b[0+2-:3];
      end
      2'h3: begin
        shift[0+7-:8] = $signed(a) >>> b[0+2-:3];
      end
      default: begin
        shift[0+7-:8] = a[0+7-:8];
      end
    endcase
  end
endmodule
