/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module boolean8BitTest_9 (
    input clk,
    input rst,
    output reg [23:0] io_led,
    output reg done,
    output reg error,
    output reg [7:0] display
  );
  
  
  
  reg [29:0] M_counter_d, M_counter_q = 1'h0;
  
  localparam DELAY = 5'h19;
  
  reg [3:0] cases;
  
  wire [8-1:0] M_boole_boole;
  reg [8-1:0] M_boole_a;
  reg [8-1:0] M_boole_b;
  reg [4-1:0] M_boole_alufn;
  boole8Bit_13 boole (
    .a(M_boole_a),
    .b(M_boole_b),
    .alufn(M_boole_alufn),
    .boole(M_boole_boole)
  );
  
  always @* begin
    M_counter_d = M_counter_q;
    
    io_led = 24'h000000;
    error = 1'h0;
    done = 1'h0;
    M_boole_a = 8'h00;
    M_boole_b = 8'h00;
    cases = M_counter_q[26+3-:4];
    M_boole_alufn = cases;
    M_counter_d = M_counter_q + 1'h1;
    
    case (cases)
      4'h8: begin
        M_boole_a = 8'h49;
        M_boole_b = 8'h7d;
        display = 8'h08;
        if (M_counter_q[25+0-:1] == 1'h1) begin
          if (M_boole_boole != 8'h49) begin
            error = 1'h1;
          end
        end
      end
      4'he: begin
        display = 8'h0e;
        M_boole_a = 8'h88;
        M_boole_b = 8'h49;
        if (M_counter_q[25+0-:1] == 1'h1) begin
          if (M_boole_boole != 8'hc9) begin
            error = 1'h1;
          end
        end
      end
      4'h6: begin
        display = 8'h06;
        M_boole_a = 8'hb5;
        M_boole_b = 8'hbd;
        if (M_counter_q[25+0-:1] == 1'h1) begin
          if (M_boole_boole != 8'h08) begin
            error = 1'h1;
          end
        end
      end
      4'ha: begin
        display = 8'h0a;
        io_led[0+7-:8] = 8'h0a;
        M_boole_a = 8'h0f;
        M_boole_b = 8'hfc;
        if (M_counter_q[25+0-:1] == 1'h1) begin
          if (M_boole_boole != 8'h0f) begin
            error = 1'h1;
          end
        end
      end
      4'hc: begin
        display = 8'h0c;
        M_boole_a = 8'h52;
        M_boole_b = 8'ha5;
        if (M_counter_q[25+0-:1] == 1'h1) begin
          if (M_boole_boole != 8'ha5) begin
            error = 1'h1;
          end
        end
      end
      4'h5: begin
        display = 8'h05;
        M_boole_a = 8'hd7;
        M_boole_b = 8'h7d;
        if (M_counter_q[25+0-:1] == 1'h1) begin
          if (M_boole_boole != 8'h28) begin
            error = 1'h1;
          end
        end
      end
      4'h3: begin
        display = 8'h03;
        M_boole_a = 8'h37;
        M_boole_b = 8'h6a;
        if (M_counter_q[25+0-:1] == 1'h1) begin
          if (M_boole_boole != 8'h95) begin
            error = 1'h1;
          end
        end
      end
      4'h7: begin
        display = 8'h07;
        M_boole_a = 8'hfa;
        M_boole_b = 8'hda;
        if (M_counter_q[25+0-:1] == 1'h1) begin
          if (M_boole_boole != 8'h25) begin
            error = 1'h1;
          end
        end
      end
      4'h1: begin
        display = 8'h01;
        M_boole_a = 8'hf1;
        M_boole_b = 8'h09;
        if (M_counter_q[25+0-:1] == 1'h1) begin
          if (M_boole_boole != 8'h06) begin
            error = 1'h1;
          end
        end
      end
      4'h9: begin
        display = 8'h09;
        M_boole_a = 8'h6d;
        M_boole_b = 8'h63;
        if (M_counter_q[25+0-:1] == 1'h1) begin
          if (M_boole_boole != 8'hf1) begin
            error = 1'h1;
          end
        end
      end
      4'hf: begin
        display = 8'h0f;
        if (M_counter_q[25+0-:1] == 1'h1) begin
          done = 1'h1;
        end
      end
      default: begin
        display = 8'h00;
        error = 1'h0;
        done = 1'h0;
      end
    endcase
  end
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_counter_q <= 1'h0;
    end else begin
      M_counter_q <= M_counter_d;
    end
  end
  
endmodule