`include "stopwatch.v"

module stopwatch_sva (clk , toggle, reset, timer); 


  //-------------Input Ports-----------------------------
  input clk;
  input toggle;
  input reset;

  //-------------Output Ports----------------------------
  output [3:0] timer ;

// Module instantiations
stopwatch stopwatch0(
    .clk(clk),
    .toggle(toggle),
    .reset(reset),
    .timer(timer)
);


  logic on;

  assume property (!toggle & !reset);  
  
  on <=  (#on) ^ toggle;

  assert property (timer >= 0);
  //Running
  property running;
    @(posedge clk)
    (on & !reset)  |-> timer == $past(timer) + 1
  endproperty  
  
  assert property (running);

  //Stop
  assert property (!on & !reset) |-> timer <= $past(timer);
  //Reset
  assert property (reset |-> timer == 0.0);

//    assert (reset |-> timer <= 0);

endmodule 