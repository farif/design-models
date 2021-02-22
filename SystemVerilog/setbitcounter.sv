// Code your testbench here
// or browse Examples
module top;
  initial begin
    static int number = $urandom();
    static int count; 
    
    // Some Code
    // count = 0-> if Number[0] then pre count + 1 else pre count;
    
    // $countbits(255, '1)
    count = $countones(number);
/*    foreach(number[i])
      begin
       if(number[i] == 1)
        	count++;
  	  end	
*/        
    $display("Number in Dec:%d", number);
    $display("Number in Hex:'h%0h", number);
    $display("Number in Bin:'b%0b", number);
    $display("Count in Bin:%d", count);
    
  end
 endmodule
    