#!/bin/bash

if [ $# -lt 2 ];then
    echo "no pid&time set!"
    exit 0
fi

pid=$1
time_val=$2

perf record -ag -F 4000 -p $pid -o perf.data sleep $time_val
perf script -i perf.data > perf.script
./stackcollapse-perf.pl perf.script > perf.folded
./flamegraph.pl perf.folded > $pid.svg
rm perf.data perf.script perf.folded



