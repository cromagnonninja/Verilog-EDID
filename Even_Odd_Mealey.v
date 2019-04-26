module Even_Odd_Mealey(in, clk, out);
input in, clk;
output out;
reg out;
always @ (posedge clk) 
begin 
if(in == 1) 
begin 
    if(out == 1)
        out = 0; 
    else 
	out = 1; 
    end
end
endmodule    	    