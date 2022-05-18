`timescale 1ns/1ps
module rand_generator_tb;
    reg  load;
    wire [3:1] q;
    reg clk;
    parameter PERIOD = 20;
    parameter real DUTY_CYCLE = 0.5;
    parameter OFFSET = 0;
  
initial
    begin
    #OFFSET;
    forever
        begin
        clk = 1'b0;
        #(PERIOD-(PERIOD*DUTY_CYCLE)) clk = 1'b1;
        #(PERIOD*DUTY_CYCLE);
        end
    end

initial begin
    load = 1'b1;
    #15 load =1'b0;
    #190 load = 1'b1;
    #10 load =1'b0;
    #200 $finish;
end

initial begin
$dumpfile("rand_generator.vcd");
  $dumpvars(0, rand_num_generator);
end

rand_generator rand_num_generator
    (   .clk(clk), 
        .load(load),
        .q(q)        
    );
endmodule 