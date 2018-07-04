#!/bin/bash

benchmarks=(conv2 conv3 mac mults1 nomem1 simple simple2 sum)
for benchmark in "${benchmarks[@]}"
do
	echo "pt_shell -f scripts/${benchmark}.tcl >& ${benchmark}.log"
	eval "pt_shell -f scripts/${benchmark}.tcl" >& ${benchmark}.log
done
