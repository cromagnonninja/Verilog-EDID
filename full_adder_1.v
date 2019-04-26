module full_adder_1(a,b,cin,s,cout);
     input a,b,cin; 
     output s, cout;
     wire w1, w2, w3; 
     assign w1 = a^b;
     assign s = cin ^ w1; 
     assign w2 = a & b; 
     assign w3 = w1 & cin;
     assign cout = w3 | w2;   	 	
endmodule 