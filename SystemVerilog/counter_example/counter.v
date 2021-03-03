module counter (
    input clk,
    output reg [5:0] cnt 
);
  initial cnt = 0;

    always @(posedge clk) begin
        if (cnt == 15)
            cnt <= 0;
        else
            cnt <= cnt + 1;    
    end
endmodule
