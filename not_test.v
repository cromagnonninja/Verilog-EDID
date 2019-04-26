`timescale 1ns/1ns 
module not_test();
reg x; 
wire y; 
not_gate not2(x,y);
initial 
begin 
x = 0; 
#10 x = 1; 
end 
endmodule 
