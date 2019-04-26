module PEtest();
reg [3:0]inp;
wire [1:0]a;
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

Priority_Encoder p1(inp,a);
endmodule 