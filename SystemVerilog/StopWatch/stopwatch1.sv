module stopwatch1 (
    clk , 
    toggle,
    reset,     
    timer 
  ); 

  //-------------Input Ports-----------------------------
  input clk;
  input toggle;
  input reset;

  //-------------Output Ports----------------------------
  output [3:0] timer ;

  wire clk ;
  wire toggle ;
  wire reset ;
  
  logic on;

  reg [3:0] timer;

  //Assume not (toggle and reset)

 //Initialize Timmer == 0000
 //Initialize on == False/OFF

 // Timer is on if #past(on) xor (Toggle);
 always @ (posedge clk) begin

    // var on: bool = (false -> pre on) <> toggle ;
    on <= $past(on) ^ toggle;

    // Reset Timer to zero
    if (reset == 1'b1) begin
      timer <=  4'b0000;
    end

    // Running if on and not reset
    if (on && reset != 1'b1) begin
      timer <=  $past(timer) + 1;
    end

    // Stop if not on and not reset
    if (!(on)  && reset == 1'b0) begin
      timer <=  $past(timer);
    end

//    assert (reset |-> timer <= 0);

//    assert (timer >= 0);

 end

endmodule 