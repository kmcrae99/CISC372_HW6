CFLAGS=

all: cudablur

cudablur: obj/cudablur.o
	nvcc $(CFLAGS) obj/cudablur.o -o cudablur -lm

obj/cudablur.o: cudablur.cu
	nvcc -c $(CFLAGS) cudablur.cu -o obj/cudablur.o

clean:
	rm -f obj/* cudablur output.png
