CC=/usr/local/cuda-11.6/bin/nvcc
CFLAGS=-I./src
MAIN=./src/main.cu
EXECUTABLE=raytracing

$(EXECUTABLE):
	$(CC) $(MAIN) -o $@ $^ $(CFLAGS)

run: $(EXECUTABLE)
	./$(EXECUTABLE) 1280 720 64 out.png

clean:
	rm ./${EXECUTABLE}

show: run
	feh out.png