module D_ff(D, clk, Q, Qbar);
input D, clk;
output Q, Qbar; 
reg Q, Qbar; 
always @ (posedge clk) 
begin 
Q = D;
Qbar = ~D;
end 
endmodule 