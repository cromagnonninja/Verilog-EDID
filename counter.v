module counter(rst, clk, out);
input rst, clk; 
output[7:0] out; 
reg[7:0] out; 
always @ (posedge clk or posedge rst)
begin 
if(rst == 1)
out <= 0; 
else 
out <= out+1; 
end
endmodule    
