`timescale 1ns/1ns 
module full_adder_test();
reg a,b, cin;
wire sum,carry; 
full_adder_1 full(a,b,cin,sum,carry);
initial 
begin 
a = 0; b = 0; cin = 0; 
#10 a = 1; b = 0; cin = 0; 
#20 a = 1; b = 1; cin = 0; 
#30 a = 0; b = 1; cin = 0; 
#40 a = 0; b = 0; cin = 1; 
#50 a = 1; b = 0; cin = 1; 
#60 a = 1; b = 1; cin = 1; 
#70 a = 0; b = 1; cin = 1; 
end 
endmodule 