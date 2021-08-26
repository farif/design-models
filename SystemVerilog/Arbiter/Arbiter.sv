/* 
                      ______________
                     |              |
        req[3:0] --> |              |
            clk  --> |    Arbiter   |--> gnt[3:0]
            rst  --> |              |--> op_error
        opcode   --> |              |
                     |______________|

        opcode \in {NOP, FORCE0, ..., FORCE3, A_OFF, A_ON}

*/
typedef enum logic[2:0] {NOP, FORCE0, FORCE1, FORCE2, FORCE3, A_OFF, A_ON} t_opcode; 

module arbiter(clk, rst, req, opcode, gnt, op_error);
    
    input logic[3:0] req;
    input t_opcode opcode;
    input clk, reset;
    
    output logic[3:0] gnt;
    output logic op_error;

end module
