module counterDez
	(input  logic clk,
	input  logic reset,
   output logic [3:0] q,
	output logic ask);

  always_ff @(posedge clk, posedge reset)
    if (reset) begin
			q <= 9;
			ask = 0;
		end
	 else if (q == 0) begin 
			q <= 9;
			ask = 1;
		end
    else begin     
			q <= q - 1;
			ask = 0;
		end
endmodule
