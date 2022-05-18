VERIOG = iverilog
TARGET = rand_generator.vcd

$(TARGET) : simp.vvp
	vvp simp.vvp

simp.vvp: rand_generator_tb.v rand_generator.v
	$(VERIOG) -o simp.vvp rand_generator_tb.v rand_generator.v

clean:
	rm $(TARGET)
