module counter_fd_tb();
reg rst, clk;
wire[7:0] out; 
counter_fd c2(rst,clk,out);
initial 
begin
clk = 0; 
rst = 1;  
#1 rst=0;
#160 rst=1;
#1 rst=0;

end
always #10 clk =~clk;
endmodule 
