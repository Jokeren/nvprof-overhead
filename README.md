# nvprof-overhead

### Prerequisites

1. `gcc>=6.4.0`, `cmake>=3.3.0`, `nvcc>=10.0`
2. `nvcc`, `gcc`, `mpirun`, `cmake` modules are loaded

### Build

- `export CUDA_HOME=/path/to/cuda`, e.g. `export CUDA_HOME=/usr/local/cuda-10.1`
- `export MPI_HOME=/path/to/mpi`, e.g. `export MPI_HOME=/usr/local/mpi`
- `./build.sh`


### Tests

    ./run_cupti.sh
    ./run_nvprof.sh
