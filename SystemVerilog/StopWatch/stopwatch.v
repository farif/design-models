module stopwatch (
    clk , 
    toggle,
    reset,     
    timer 
  ); 

  //-------------Input Ports-----------------------------
  input clk;
  
  input toggle;
  input reset;

  //-------------State-----------------------
  logic running;
  
  //-------------Output Ports----------------------------
  output [3:0] timer ;

  wire clk ;
  wire toggle ;
  wire reset ;

 // Timer is on if #past(on) xor (Toggle);
 always @ (posedge clk) begin

    // var on: bool = (false -> pre on) <> toggle ;
    running <= $past(running) ^ toggle;

    // Reset Timer to zero
    if (reset == 1'b1) 
      timer <=  4'b0000;
    // Running if on and not reset
    else if (running) 
      timer <=  $past(timer) + 1;
    // Stop if not on and not reset
    else
      timer <=  $past(timer);
  
   end

endmodule 