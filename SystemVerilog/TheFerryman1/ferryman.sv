module ferryman(
    input clk, 
    input w, g, c);
    //In the start state, everyone is on same slide of river
    reg bank_w = 0; //Wolf
    reg bank_g = 0; //Goat
    reg bank_c = 0; //Cabbage
    reg bank_m = 0; //Boatman

    always @(posedge clk) begin
        // Can ship atmost one object at each clock
        assume (w+g+c <= 1);

        bank_m <= !bank_m;

        if (w && (bank_w == bank_m)) bank_w <= !bank_m;
        if (g && (bank_g == bank_m)) bank_g <= !bank_m;
        if (c && (bank_c == bank_m)) bank_c <= !bank_m;
        // Wolf and goat shouldn't be left together goat without Boatman  
        if (bank_w != bank_m) begin
            assume (bank_w != bank_g);
        end
        // Goat shouldn't be left together cabbage without Boatman  
        if (bank_g != bank_m) begin
            assume (bank_g != bank_c);
        end

        // Safely cross the river
        assert (bank_w <= 1 & bank_g <= 1 & bank_c <= 1);
    
    end    

endmodule