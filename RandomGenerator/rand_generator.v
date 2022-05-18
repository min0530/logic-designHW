// Code your design here
module rand_generator(clk,load,q);
  input clk;
  input load; 
  output  [3:1] q;
  reg [3:1] q;
  
always@ (posedge clk )
begin
  if (load == 1'b1)
     q=3'b110;
  else 
     q[1]<=q[1]^q[3];
     q[2]<=q[1];
     q[3]<=q[2];
end
endmodule     