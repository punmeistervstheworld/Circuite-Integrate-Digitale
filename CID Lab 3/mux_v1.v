module mux_v1(input wire in0,
				  input wire in1,
				  input wire sel,
				  output wire out0
				  );
assign out0 = (in0 & !sel) || (in1 & sel);
endmodule // mux_v1