module up_down_counter ( clk, reset, up, down, cnt, inverted_cnt );
input clk, reset, up, down;
output [3:0] cnt, inverted_cnt;
reg[3:0] cnt; 
    
    assign inverted_cnt = ~cnt;

    always @(posedge clk ) begin
        if (reset)  cnt = 0;
        else if (up) cnt = cnt + 1'b1;
        else if (down) cnt = cnt - 1'b1;
    end
    
endmodule