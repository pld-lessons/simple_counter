module AND2gate(reset,BI,FI, CLK);

   input reset;
   input BI;
	input CLK;
	output FI;
   reg FI;
	
	reg [25:0] cnt;
	
	always@ (posedge CLK)
	begin
		if (reset == 0)
			begin
				cnt = 0;
			end
		else
			begin
				cnt = cnt + 1;
			end
			
		FI = cnt[24];
	end
	
endmodule
