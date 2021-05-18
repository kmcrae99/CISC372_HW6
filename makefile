CFLAGS=

all: cudablur

cudablur: cudablur.o
	nvcc $(CFLAGS) cudablur.o -o cudablur -lm

cudablur.o: cudablur.cu
	nvcc -c $(CFLAGS) cudablur.cu -o cudablur.o

clean:
	rm -f obj/* cudablur output.png
