// Code your design here
module counter( clk, rst, 
    cnt );

input logic clk;
input logic rst;
output logic [5:0] cnt = 6'b000000;

always_ff @(posedge clk) begin
if (cnt == 35) begin
cnt <= 0;
end
else if (rst) begin
cnt <= 0;      
end   
else begin
cnt <= cnt + 1;
end        
end

endmodule
