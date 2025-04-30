#!/bin/bash

echo "Benchmarking Results" > benchmark_results.txt
echo "=====================" >> benchmark_results.txt

g++ -o mergesort_seq mergesort_seq.cpp
g++ -o mergesort_par mergesort_par.cpp -std=c++11 -pthread

for size in 9999 99999 19999999
do
  echo "Array size: $size" >> benchmark_results.txt

  echo -n "Sequential time: " >> benchmark_results.txt
  ./mergesort_seq $size 2>> benchmark_results.txt

  echo -n "Parallel time: " >> benchmark_results.txt
  ./mergesort_par $size 2>> benchmark_results.txt

  echo "=====================" >> benchmark_results.txt
done

