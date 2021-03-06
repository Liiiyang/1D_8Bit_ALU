/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module adder8BitTest_8 (
    input clk,
    input rst,
    output reg done,
    output reg error,
    output reg [7:0] display
  );
  
  
  
  reg [29:0] M_counter_d, M_counter_q = 1'h0;
  
  localparam DELAY = 5'h19;
  
  reg [3:0] cases;
  
  wire [1-1:0] M_add_z;
  wire [1-1:0] M_add_v;
  wire [1-1:0] M_add_n;
  wire [8-1:0] M_add_s;
  wire [8-1:0] M_add_ao;
  reg [8-1:0] M_add_a;
  reg [8-1:0] M_add_b;
  reg [1-1:0] M_add_alufn;
  adder8Bit_12 add (
    .a(M_add_a),
    .b(M_add_b),
    .alufn(M_add_alufn),
    .z(M_add_z),
    .v(M_add_v),
    .n(M_add_n),
    .s(M_add_s),
    .ao(M_add_ao)
  );
  
  always @* begin
    M_counter_d = M_counter_q;
    
    error = 1'h0;
    done = 1'h0;
    M_add_a = 8'h00;
    M_add_b = 8'h00;
    M_add_alufn = 1'h1;
    cases = M_counter_q[26+3-:4];
    M_counter_d = M_counter_q + 1'h1;
    
    case (cases)
      4'h0: begin
        M_add_a = 8'h36;
        M_add_b = 8'h06;
        M_add_alufn = 1'h0;
        display = 8'h00;
        if (M_counter_q[25+0-:1] == 1'h1) begin
          if (M_add_s != 8'h3c) begin
            error = 1'h1;
          end
        end
      end
      4'h1: begin
        M_add_a = 8'h04;
        M_add_b = 8'h2c;
        M_add_alufn = 1'h1;
        display = 8'h01;
        if (M_counter_q[25+0-:1] == 1'h1) begin
          if (M_add_s != 8'hd8) begin
            error = 1'h1;
          end
        end
      end
      4'h2: begin
        M_add_a = 8'hf8;
        M_add_b = 8'hcc;
        M_add_alufn = 1'h0;
        display = 8'h02;
        if (M_counter_q[25+0-:1] == 1'h1) begin
          if (M_add_s != 8'hc4) begin
            error = 1'h1;
          end
        end
      end
      4'h3: begin
        M_add_a = 8'hc4;
        M_add_b = 8'hfb;
        M_add_alufn = 1'h1;
        display = 8'h03;
        if (M_counter_q[25+0-:1] == 1'h1) begin
          if (M_add_s != 8'hc9) begin
            error = 1'h1;
          end
        end
      end
      4'h4: begin
        M_add_a = 8'hca;
        M_add_b = 8'h3c;
        M_add_alufn = 1'h0;
        display = 8'h04;
        if (M_counter_q[25+0-:1] == 1'h1) begin
          if (M_add_s != 8'h06) begin
            error = 1'h1;
          end
        end
      end
      4'h5: begin
        M_add_a = 8'h7f;
        M_add_b = 8'h7f;
        M_add_alufn = 1'h0;
        display = 8'h05;
        if (M_counter_q[25+0-:1] == 1'h1) begin
          if (M_add_s != 8'hfe) begin
            error = 1'h1;
          end
        end
      end
      4'h6: begin
        M_add_a = 8'hff;
        M_add_b = 8'hff;
        M_add_alufn = 1'h0;
        display = 8'h06;
        if (M_counter_q[25+0-:1] == 1'h1) begin
          if (M_add_s != 8'hfe) begin
            error = 1'h1;
          end
        end
      end
      4'h7: begin
        M_add_a = 8'h00;
        M_add_b = 8'h00;
        M_add_alufn = 1'h1;
        display = 8'h07;
        if (M_counter_q[25+0-:1] == 1'h1) begin
          if (M_add_s != 8'h00) begin
            error = 1'h1;
          end
        end
      end
      4'h8: begin
        M_add_a = 8'h80;
        M_add_b = 8'h80;
        M_add_alufn = 1'h1;
        display = 8'h08;
        if (M_counter_q[25+0-:1] == 1'h1) begin
          if (M_add_s != 8'h00) begin
            error = 1'h1;
          end
        end
      end
      4'h9: begin
        display = 8'h09;
        if (M_counter_q[25+0-:1] == 1'h1) begin
          done = 1'h1;
        end
      end
      default: begin
        display = 8'h0f;
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
