module ringcounter_tb();
reg clk;
reg input1;
wire[3:0] output1; 
ringcounter1 c1(clk,input1,output1);
initial 
begin
input1 = 1;
clk = 1;
end

always #20 clk=~clk;
initial 
begin
#15 input1 = 0;  
end
endmodule 
