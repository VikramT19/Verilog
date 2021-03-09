reg [31:0] instructions[0:5];
 initial begin
 instructions[0] = 32'h0FF_08093; // 255 running 255
 instructions[1] = 32'hF80_08093; // -128 running total 127
 instructions[2] = 32'hFFE_08093; // -2 running total 125
 instructions[3] = 32'h032_08093; // +50 running total 175
 instructions[4] = 32'h200_08093; // +512 running total 687 
 instructions[5] = 32'h005_08093; // +5 running total 692
 clk = 0;
 reset = 1;
 #10 reset = 0;
 for (immediate = 0; immediate <= 6; immediate ++) begin
 	#10
 	$display("Time: %5d Clock: %b Instruction: %8h Acc: %d",
 		$time, clk, instructions[immediate], acc);
 end
 $finish;
end
