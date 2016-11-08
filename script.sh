#!/bin/bash

echo "sysbench image is starting.."

cleanup ()
{
  kill -s SIGTERM $!
  exit 0
}

trap cleanup SIGINT SIGTERM



###run provisioning  process
while [ 1 ]
do
    sleep 10
    date=$(date --iso-8601=seconds)
    echo "starting sysbench at $date"
    sysbench --test=cpu --cpu-max-prime=20000 --num-threads=1 run


done
