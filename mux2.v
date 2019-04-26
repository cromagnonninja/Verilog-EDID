module mux2(out, data, sel);
input [1:0] data; 
input sel; 
output out; 

assign out = data[sel]; 
endmodule 