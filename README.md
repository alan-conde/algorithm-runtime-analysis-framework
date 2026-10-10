# Algorithm Runtime Analysis Framework

This project is a small benchmarking framework for comparing the runtime behavior of classic sorting algorithms. It is designed to measure how algorithms like bubble sort, selection sort, and insertion sort scale as input size grows, then visualize the results as charts and animated plots.

## What it does

The framework combines a C++ benchmark runner with a Python plotting script:

- The C++ code generates random integer arrays of varying sizes
- Each algorithm is executed repeatedly to collect timing samples
- Runtime data is written to CSV format with one row per input size and algorithm
- The Python script reads the CSV and creates visual comparisons for each algorithm
- The output can be used to analyze algorithmic complexity and empirical performance

## Included algorithms

- Bubble Sort
- Selection Sort
- Insertion Sort

## Project structure

- `src/algorithms.h` and `src/algorithms.cpp`: sorting algorithm implementations
- `src/algorithm_timer.cc`: benchmark driver that measures execution time and streams results to the plotting script
- `scripts/runtime_plotter.py`: generates plots from the benchmark CSV data
- `Makefile`: builds the benchmark executable and exposes basic run commands

## How to build and run

From the project root:

```bash
make
make run
```

The benchmark accepts command-line options for configuration:

```bash
./build/run_tests -n 100 -m 10 -v 100
```

Where:

- `-n`: maximum input size to test
- `-m`: number of repetitions per size
- `-v`: maximum random value in the generated arrays

## Example use case

This project is useful for exploring how algorithm runtime changes with input size and for comparing the efficiency of simple sorting approaches in practice. It is especially helpful for learning algorithm analysis, benchmarking, and data visualization in a compact, hands-on project.

## Output

The benchmark writes timing data to a CSV stream, and the plotting script saves visual output in the `output/` directory, including generated PNG and GIF-style figures for comparison.
