module ferryman(
    input clk, 
    input w, g, c);
    
    reg bank_w = 0;
    reg bank_g = 0;
    reg bank_c = 0;
    reg bank_m = 0;

    always @(posedge clk) begin
        
        assume (w+g+c <= 1);

        bank_m <= !bank_m;

        if (w && (bank_w == bank_m)) bank_w <= !bank_m;
        if (g && (bank_g == bank_m)) bank_g <= !bank_m;
        if (c && (bank_c == bank_m)) bank_c <= !bank_m;

        if (bank_w != bank_m) begin
            assume (bank_w != bank_g);
        end

        if (bank_g != bank_m) begin
            assume (bank_g != bank_c);
        end

    cover (bank_w && bank_g && bank_c);

    end    
    
endmodule