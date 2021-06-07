`include "counter.v"

module counterspec (
    input clk,
    output reg [5:0] cnt 
);

//Module Instantiation
counter COUNTER(
    .clk(clk),
    .cnt(cnt)
);


always_ff @(posedge clk) begin
    assert (cnt < 32);
end

endmodule
