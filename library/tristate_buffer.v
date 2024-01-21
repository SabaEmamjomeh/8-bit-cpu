module tristate_buffer(
  input [WIDTH-1:0] in,
  input enable,
  output [WIDTH-1:0] out );

  parameter WIDTH = 9;

  assign out = enable ? in : 'bz;

endmodule
