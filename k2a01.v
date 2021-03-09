// Testbench
module testbench;
 // Inputs to device under test (DUT) reg, outputs wire
 reg clk, reset;
 reg [31:0] instruction;
 integer immediate;
 initial begin
 for (immediate = -127; immediate < 128; immediate ++) begin
 #10 instruction = (immediate << 20) | 32'h08093;
 $display("Time: %d Instruction: %8h", $time, instruction);
 end
 $finish;
 end
endmodule
