module state_machine( input clk,input rst,
 output reg sIDLE,
 output reg s1,
 output reg s2,
 output reg s3
);
 
localparam TRANSITION_DURATION = 4'd 10;
 
localparam state_sIDLE = 2'b 00;
localparam state_s1 = 2'b 01;
localparam state_s2 = 2'b 10;
localparam state_s3 = 2'b 11;
  
reg [1:0] curstate = state_sIDLE;
reg [1:0] nxtstate = state_sIDLE;
reg [3:0] count = 0; 

always @(posedge clk)
begin
  if (rst) begin
    curstate <= state_sIDLE;
  end else begin
    curstate <= nxtstate;
  end
end

always @(*)
begin
  case (curstate)
      state_sIDLE:
          nxtstate = state_s1;
      state_s1:
         if (count == TRANSITION_DURATION-1) begin
             nxtstate = state_s2;
         end 
      state_s2:
          if (count == TRANSITION_DURATION-1) begin
               nxtstate = state_s3;
          end 
      state_s3:
          if (count == TRANSITION_DURATION-1) begin
              nxtstate = state_s1;
          end
   endcase
end 

always @(*)
begin

   sIDLE = 1'b0;
   s1 = 1'b0; 
   s2 = 1'b0;
   s3 = 1'b0;
   
   case (curstate)
       state_sIDLE: sIDLE = 1'b1;
       state_s1:    s1 = 1'b1;
       state_s2:    s2 = 1'b1;
       state_s3:    s3 = 1'b1;
   endcase
end

endmodule
        
      