module RippleAdder(a,b,cin,sum,cout);
input [3:0] a,b; 
input cin; 
output [3:0] sum; 
output cout; 
wire w1,w2,w3; 

full_adder_2 f1(a[0],b[0],cin,sum[0],w1);
full_adder_2 f2(a[1],b[1],w1,sum[1],w2);
full_adder_2 f3(a[2],b[2],w2,sum[2],w3);
full_adder_2 f4(a[3],b[3],w3,sum[3],cout);
endmodule 
