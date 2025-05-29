CC=gcc
NVCC=nvcc
CFLAGS=-Wall -Wextra

SOURCE_SERIAL=$(project)/serial.cpp
SOURCE_PARALLEL=$(project)/parallel.cu

build-serial: $(SOURCE_SERIAL)
	@echo "-> Building serial version of $(project)..."
	$(CC) $(CFLAGS) -o serial $(SOURCE_SERIAL)
	@echo "-> Serial build complete"
build-parallel: $(SOURCE_PARALLEL)
	@echo "-> Building parallel version of $(project)..."
	$(NVCC) $(CFLAGS) -o parallel $(SOURCE_PARALLEL)
	@echo "-> Parallel build complete"

clean:
	rm serial parallel
	@echo "-> Cleaned up build files"