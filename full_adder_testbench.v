`timescale 1ns/1ns 
// module full_adder_testbench();
// reg a, b, cin;
// wire sum, cout; 
// full_adder_2 full(a,b,cin,sum,cout);
// initial 
// begin 
// a = 0; b = 0; cin = 0; 
// #10 a = 1; b = 0; cin = 0; 
// #20 a = 1; b = 1; cin = 0; 
// #30 a = 0; b = 1; cin = 0; 
// #40 a = 0; b = 0; cin = 1; 
// #50 a = 1; b = 0; cin = 1; 
// #60 a = 1; b = 1; cin = 1; 
// #70 a = 0; b = 1; cin = 1; 
// end 
// endmodule 

module full_adder_testbench(); 
reg [2:0]inp;
wire a,b;
reg clk; 

initial begin 
   clk = 0; 
   inp = -1; 
end 

always #5 clk = ~clk;

always@(negedge clk)
begin 
inp = inp + 1; 
end 

full_adder_2 f1(inp[0], inp[1], inp[2], a,b); 
endmodule 