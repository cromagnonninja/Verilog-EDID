module seq_detector_tb();
 reg sequence_in;
 reg clock;
 reg reset;

 wire detector_out;
 Sequence_Detector uut (sequence_in, clock, reset, detector_out);
 initial begin
 clock = 0;
 forever #5 clock = ~clock;
 end 
 initial begin
  sequence_in = 0;
  reset = 1;
  #30 reset = 0;
  #40 sequence_in = 1;
  #10 sequence_in = 0;
  #10 sequence_in = 1; 
  #20 sequence_in = 1; 
  #20 sequence_in = 1; 
  #20 sequence_in = 0; 
end     
endmodule