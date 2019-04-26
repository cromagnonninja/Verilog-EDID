module mux4_testbench(); 
reg [3:0]data = 4'b1010; 
reg [1:0]sel; 
wire out; 
reg clk; 

initial begin 
   clk = 0; 
   sel = -1; 
end 

always #5 clk = ~clk;

always@(negedge clk)
begin 
sel = sel + 1; 
end 

mux4 m1(out, data, sel);
endmodule 