module RippleAdderTestbench();
reg [3:0] inp1,inp2;
wire[3:0] a;
reg cin;
wire b; 
reg clk; 

initial begin
   cin = 0;	 
   clk = 0; 
   inp1 = -1;
   inp2 = -1;  
end 

always #5 clk = ~clk;

always@(negedge clk)
begin
inp1 <= inp1 + 1;
inp2 <= inp2 + 1;  
end 

RippleAdder R1(inp1,inp2,cin,a,b);
endmodule 