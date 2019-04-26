`timescale 1ns/1ns
module test_d(); 
reg D, clk; 
wire Q, Qbar; 
D_ff f1(D, clk, Q, Qbar); 
initial 
begin
clk = 0; 
D = 1; 
end 

always #10 clk =~clk;
always #20 D=D+1;
endmodule 