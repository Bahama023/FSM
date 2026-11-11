 `timescale 1 ns / 10 ps 

module state_machine_tb ();

localparam CLK_PERIOD = 10;

reg clk = 1'b0;
reg rst = 1'b1;
wire sIDLE, s1 , s2, s3;

state_machine state_machine_inst(
   .clk   (clk),
   .rst   (rst),
   .sIDLE (sDILE),
   .s1    (s1),
   .s2    (s2),
   .s3    (s3)
);


initial begin
  clk = 1'b0;
  rst = 1'b1;
  rst = #(CLK_PERIOD*10) 1'b0;
end 
always begin
  clk = #(CLK_PERIOD/2) ~clk;
end

endmodule
 
