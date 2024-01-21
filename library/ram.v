module ram(
  input wire clk,
  input wire [7:0] addr,
  input wire we,               
  input wire oe,           
  inout wire [7:0] data );
///

  reg [7:0] mem [0:64];
  reg [7:0] buffer;

  always @(posedge clk) begin
    if (we) begin
      mem[addr] <= data;
      $display("Memory: set [0x%h] => 0x%h (%d)", addr, data, data);
    end else begin
      buffer <= mem[addr];

    end

  end

  assign data = (oe & ~we) ? buffer : 'bz;

endmodule
