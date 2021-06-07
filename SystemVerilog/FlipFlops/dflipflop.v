// Design
// D flip-flop
module dflipflop (clk, reset,
  d, q0, q1);
  input      clk;
  input      reset;
  input      d;
  output     q0;
  output     q1;

  reg        q0;

  assign q1 = ~q0;

  always @(posedge clk or posedge reset)
  begin
    if (reset) begin
      q0 <= 1'b0;
    end else begin
      q0 <= d;
    end
  end
endmodule