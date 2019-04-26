module mux4(out, data, sel); 
input [3:0]data;
input [1:0]sel;  
output out; 
wire[1:0] out1; 
mux2 m1(out1[1], data[3:2], sel[0]); 
mux2 m2(out1[0], data[1:0], sel[0]); 
mux2 m3(out, out1[1:0], sel[1]); 
endmodule
