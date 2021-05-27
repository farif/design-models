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

  //-------------Output Ports----------------------------
  output [3:0] timer ;

  wire clk ;
  wire toggle ;
  wire reset ;

  reg [3:0] timer;

 always @ (posedge clk) begin
    
    if (reset == 1'b1) begin
      timer <=  #1  4'b0000;
    end

    else if (toggle == 1'b1) begin
      timer <=  #1  timer + 1;
    end

    assert (timer >= 0);

//    assert (reset |-> timer <= 0);

 end

endmodule 