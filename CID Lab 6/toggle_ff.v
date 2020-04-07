module toggle_ff(input wire clk,
						input wire rst,
						input wire toggle,
						output reg value);
always @(posedge clk)
begin
	if (rst == 1)
		value <= 0;
	else if (toggle == 1)
		value <= ~value;
end
endmodule 