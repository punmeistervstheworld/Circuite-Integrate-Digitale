module tb();

reg clk; 
reg rst;
reg en;
wire pwm_out;

top DUT (
	.clk(clk),
	.rst(rst),
	.en(en),
	.pwm_out(pwm_out)
	);

initial
begin
	clk = 0;
	forever 
		begin
		#5 clk = ~clk;
		end
end

initial
begin
	rst = 1;
	en = 0;
	repeat(10)
		begin
		@(posedge clk);
		end
	rst = 0;
	en = 1;
	repeat(10)
		begin
		@(posedge clk);
		end 
	#1000 $stop;
end 

endmodule