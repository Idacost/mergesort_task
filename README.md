# mergesort_task

This project implements both a sequential and parallel version of the merge sort algorithm.

## Features
- **Sequential Merge Sort**: Implements a standard sequential merge sort algorithm.
- **Parallel Merge Sort**: Implements a parallelized version of the merge sort using threads for improved performance on larger arrays.
- **Benchmarking**: A Bash script to run both the sequential and parallel merge sort implementations, measure their execution times, and compare them.

## Files
- `mergesort_seq.cpp`: The sequential merge sort implementation.
- `mergesort_par.cpp`: The parallel merge sort implementation.
- `benchmark.sh`: A script to benchmark both implementations on different array sizes and output the results.

## Compilation
To compile the sequential and parallel implementations, use the following commands:

```bash
g++ -o mergesort_seq mergesort_seq.cpp
g++ -o mergesort_par mergesort_par.cpp -std=c++11 -pthread
