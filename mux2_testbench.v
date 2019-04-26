module mux2_testbench();
reg [1:0]data=2'b01;
reg sel; 
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

// f1(inp[0], inp[1], inp[2], a,b); 
mux2 m1(out, data, sel);
endmodule 