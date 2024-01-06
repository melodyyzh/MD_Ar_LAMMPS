#!/bin/bash
for i in $(seq 1 9); do
    walltime=$(awk -F: '/Total wall time/{print $2*60*60 + $3*60 + $4}' "LJ_0.$i.out")
    mstep_per_hr=$((100000 / walltime * 3600 / 1000000))
    echo $mstep_per_hr
done
