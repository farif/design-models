/*
-------------------------------------------------
--  FIFO Interface:
--                    __________
--                   \          \
--        data_in -->\          \--> data_out
--    write_event -->\   FIFO   \<-- read_event
--         Q_FULL <--\          \--> Q_EMPTY
--                   \__________\
--
-- I/O with Producer:
-- data_in: data input port.
-- write_event: sending write signal.
-- Q_FULL: Queue is full.
--
-- I/O with Consumer:
-- data_out: Data output port.
-- read_event: Read signal.
-- Q_EMPTY: Queue is empty and contains no message. 
---------------------------------------------------
*/
module fifo(clk, rst, data_in, write_event, data_out, read_event, Q_FULL, Q_EMPTY);
    //FIFO Capacity;
    parameter MAX_SIZE = 5 - 1;

    parameter MAX_SIZE_LOG2 = $clog2(MAX_SIZE);

    input logic clk;
    input logic rst;
    input logic [7:0] data_in;
    input logic write_event;
    input logic read_event;

    output logic [7:0] data_out;
    
    output logic Q_EMPTY;
    output logic Q_FULL;

    logic [MAX_SIZE:0][7:0] fifo_queue;

    logic [MAX_SIZE_LOG2:0] head_ptr;
    // logic [MAX_SIZE_LOG2:0] write_ptr;


    always_ff @(posedge clk) begin
      
        if (!Q_FULL && write_event) begin//push event
            head_ptr <= head_ptr + 1'b1;
            fifo_queue[head_ptr] <= data_in;
        end
      	else if (!Q_EMPTY && read_event) begin//pop event
            data_out <= fifo_queue[head_ptr];
            head_ptr <= head_ptr - 1'b1;
        end  
          else begin
             head_ptr <= head_ptr;
        end
      
    end

    always_ff @(posedge clk) begin
        if($countones(head_ptr) == MAX_SIZE) begin
            Q_FULL <= 1;
        end
        else if (head_ptr == 0) begin
            Q_EMPTY <= 1;
        end
	       else begin
             Q_FULL <= 0;
             Q_EMPTY <= 0;
        	end
    	end
      
endmodule
    
