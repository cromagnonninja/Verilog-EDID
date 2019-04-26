module mux2_1(out, data, sel); 
input[1:0] data;
input sel; 
output out; 
reg out1; 

always @ (data, sel) // Procedural assignment function(event)
begin 
    if (sel == 0)
       assign out1 = data[0];
    else
       assign out1 = data[1]; 
end
assign out = out1;   
endmodule