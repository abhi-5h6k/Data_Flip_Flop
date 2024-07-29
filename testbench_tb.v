`timescale 1ns / 1ps

module tb();

reg d = 0, clk = 0;
wire q,qbar;
integer i = 0;

d_flip_flop dut(d, clk, q, qbar);

always #10 clk = ~clk;

initial begin
for(i = 0; i < 20; i = i + 1)
begin
@(posedge clk);
d = $urandom();
end
end

initial begin
#500;
$finish;
end
endmodule
