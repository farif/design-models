`include "updowncounter.v"

module up_down_counter_sva ( clk, reset, up, down, cnt, inverted_cnt );
input clk, reset, up, down;
input [3:0] cnt, inverted_cnt;

// //Module Instantiation
up_down_counter updowncounter0(
    .clk(clk),
    .reset(reset),
    .down(down),
    .cnt(cnt),
    .inverted_cnt(inverted_cnt)
);

//Combinational property
    // assert property (cnt == ~inverted_count);

//One cycle Property
    assert property (!reset && up |=> cnt == $past(cnt) + 1'b1);
    assert property (!reset && up |-> ##1 cnt == $past(cnt) + 1'b1);

//Two cycle Property    
    assert property (disable iff(reset) (up ##1 up |=> $past(cnt,2) + 4'd2)) 
    assert property (disable iff(reset) (up [*2] |=> $past(cnt,2) + 4'd2)) 

endmodule

// bind up_down_counter up_down_counter_sva I1(.*);