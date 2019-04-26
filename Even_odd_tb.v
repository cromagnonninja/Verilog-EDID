module Even_odd_tb();
reg inp, clk; 
wire out; 
Even_Odd_Mealey e1(inp, clk, out);
initial 
begin 
clk = 0; 
inp = 1; 
#20 inp = ~inp;
#40 inp = ~inp;
#60 inp = ~inp;
#80 inp = ~inp;
end
always #10 clk = ~clk;  
endmodule
 

