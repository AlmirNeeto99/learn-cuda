CC=gcc
NVCC=nvcc
CFLAGS=-Wall -Wextra

SOURCE_SERIAL=serial.c
SOURCE_PARALLEL=parallel.cu

build-serial: $(SOURCE_SERIAL)
	@echo "Building serial..."
	$(CC) $(CFLAGS) -o serial $(SOURCE_SERIAL)
	@echo "Serial build complete."
build-parallel: $(SOURCE_PARALLEL)
	@echo "Building parallel..."
	$(NVCC) $(CFLAGS) -o parallel $(SOURCE_PARALLEL)
	@echo "Parallel build complete."
