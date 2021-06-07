// Design
// D flip-flop
`include "dflipflop.v"

module dflipflopspec(
  input clk, reset, d, 
  output reg q0, q1
);

dflipflop DFLIPFLOP(
  .clk(clk),
  .reset(reset),
  .d(d),
  .q0(q0),
  .q1(q1)
);

// always @(posedge clk) begin
    assert property (q0 != q1) ; 

    // assert property (d |-> q0 == d) ; 
// end


endmodule

  // reg clk;
  // reg reset;
  // reg d;
  // wire q;
  // wire qb;
  
  // // Instantiate design under test
  // dff DFF(.clk(clk), .reset(reset),
  //         .d(d), .q(q), .qb(qb));
          
  // initial begin
  //   // Dump waves
  //   $dumpfile("dump.vcd");
  //   $dumpvars(1);
    
  //   $display("Reset flop.");
  //   clk = 0;
  //   reset = 1;
  //   d = 1'bx;
  //   display;
    
  //   $display("Release reset.");
  //   d = 1;
  //   reset = 0;
  //   display;

  //   $display("Toggle clk.");
  //   clk = 1;
  //   display;
  // end
  
  // task display;
  //   #1 $display("d:%0h, q:%0h, qb:%0h",
  //     d, q, qb);
  // endtask

