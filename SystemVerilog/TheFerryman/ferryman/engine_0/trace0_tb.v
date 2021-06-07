`ifndef VERILATOR
module testbench;
  reg [4095:0] vcdfile;
  reg clock;
`else
module testbench(input clock, output reg genclock);
  initial genclock = 1;
`endif
  reg genclock = 1;
  reg [31:0] cycle = 0;
  reg [0:0] PI_c;
  reg [0:0] PI_w;
  wire [0:0] PI_clk = clock;
  reg [0:0] PI_g;
  ferryman UUT (
    .c(PI_c),
    .w(PI_w),
    .clk(PI_clk),
    .g(PI_g)
  );
`ifndef VERILATOR
  initial begin
    if ($value$plusargs("vcd=%s", vcdfile)) begin
      $dumpfile(vcdfile);
      $dumpvars(0, testbench);
    end
    #5 clock = 0;
    while (genclock) begin
      #5 clock = 0;
      #5 clock = 1;
    end
  end
`endif
  initial begin
`ifndef VERILATOR
    #1;
`endif
    // UUT.$formal$ferryman.\sv:10$1_EN  = 1'b0;
    // UUT.$formal$ferryman.\sv:26$4_CHECK  = 1'b0;
    UUT.bank_c = 1'b0;
    UUT.bank_g = 1'b0;
    UUT.bank_m = 1'b0;
    UUT.bank_w = 1'b0;

    // state 0
    PI_c = 1'b0;
    PI_w = 1'b0;
    PI_g = 1'b1;
  end
  always @(posedge clock) begin
    // state 1
    if (cycle == 0) begin
      PI_c <= 1'b0;
      PI_w <= 1'b0;
      PI_g <= 1'b0;
    end

    // state 2
    if (cycle == 1) begin
      PI_c <= 1'b1;
      PI_w <= 1'b0;
      PI_g <= 1'b0;
    end

    // state 3
    if (cycle == 2) begin
      PI_c <= 1'b0;
      PI_w <= 1'b0;
      PI_g <= 1'b1;
    end

    // state 4
    if (cycle == 3) begin
      PI_c <= 1'b0;
      PI_w <= 1'b1;
      PI_g <= 1'b0;
    end

    // state 5
    if (cycle == 4) begin
      PI_c <= 1'b0;
      PI_w <= 1'b0;
      PI_g <= 1'b1;
    end

    // state 6
    if (cycle == 5) begin
      PI_c <= 1'b0;
      PI_w <= 1'b0;
      PI_g <= 1'b1;
    end

    // state 7
    if (cycle == 6) begin
      PI_c <= 1'b0;
      PI_w <= 1'b0;
      PI_g <= 1'b1;
    end

    // state 8
    if (cycle == 7) begin
      PI_c <= 1'b0;
      PI_w <= 1'b0;
      PI_g <= 1'b0;
    end

    genclock <= cycle < 8;
    cycle <= cycle + 1;
  end
endmodule
