/*
 * Twos Complement Design
 * */
 module twoscomplement (in_bit, reset, clk, out_bit) ;
    input logic in_bit ;
    output logic out_bit ;
    input  reset ;
    input  clk ;

    logic carry;
    logic next_carry;

    always_comb begin 
      out_bit = !in_bit + carry;  
      next_carry = !in_bit && carry;  
    end 
    
    always_ff @(posedge clk) begin 
      if (reset)  begin   
        carry <= next_carry;
      end else begin
         carry <= 1'b1; 
      end
    end
      
  endmodule
  
  