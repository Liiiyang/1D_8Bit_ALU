/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module mojo_top_0 (
    input clk,
    input rst_n,
    output reg [7:0] led,
    input cclk,
    output reg spi_miso,
    input spi_ss,
    input spi_mosi,
    input spi_sck,
    output reg [3:0] spi_channel,
    input avr_tx,
    output reg avr_rx,
    input avr_rx_busy,
    output reg [23:0] io_led,
    output reg [7:0] io_seg,
    output reg [3:0] io_sel,
    input [4:0] io_button,
    input [23:0] io_dip
  );
  
  
  
  reg rst;
  
  wire [1-1:0] M_reset_cond_out;
  reg [1-1:0] M_reset_cond_in;
  reset_conditioner_1 reset_cond (
    .clk(clk),
    .in(M_reset_cond_in),
    .out(M_reset_cond_out)
  );
  wire [7-1:0] M_seg_seg;
  wire [4-1:0] M_seg_sel;
  reg [16-1:0] M_seg_values;
  multi_seven_seg_2 seg (
    .clk(clk),
    .rst(rst),
    .values(M_seg_values),
    .seg(M_seg_seg),
    .sel(M_seg_sel)
  );
  wire [16-1:0] M_statemachine_io_value;
  wire [8-1:0] M_statemachine_display;
  reg [1-1:0] M_statemachine_io_button;
  finitestatemachine_3 statemachine (
    .clk(clk),
    .rst(rst),
    .io_button(M_statemachine_io_button),
    .io_value(M_statemachine_io_value),
    .display(M_statemachine_display)
  );
  
  wire [8-1:0] M_alu_alu;
  reg [8-1:0] M_alu_a;
  reg [8-1:0] M_alu_b;
  reg [6-1:0] M_alu_alufn;
  alu8Bit_4 alu (
    .a(M_alu_a),
    .b(M_alu_b),
    .alufn(M_alu_alufn),
    .alu(M_alu_alu)
  );
  
  always @* begin
    M_reset_cond_in = ~rst_n;
    rst = M_reset_cond_out;
    led = 8'h00;
    spi_miso = 1'bz;
    spi_channel = 4'bzzzz;
    avr_rx = 1'bz;
    io_led = 24'h000000;
    M_seg_values = 16'h8800;
    io_seg = ~M_seg_seg;
    io_sel = ~M_seg_sel;
    M_alu_a = io_dip[16+7-:8];
    M_alu_b = io_dip[8+7-:8];
    M_alu_alufn = io_dip[16+0+5-:6];
    io_led[0+7-:8] = M_alu_alu;
    M_statemachine_io_button = io_button[1+0-:1];
    M_seg_values = M_statemachine_io_value;
    io_led[16+7-:8] = M_statemachine_display;
  end
endmodule
