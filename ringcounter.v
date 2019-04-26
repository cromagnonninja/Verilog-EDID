module ringcounter(clk, input1, output1);
input clk; 
input input1;
output [3:0]output1; 
reg [3:0]output1;
always@(posedge clk) 
if(input1 == 1)
    output1 <= 4'b1000; 
else 
    output1 <= {output1[2:0],output1[3]};	
endmodule 