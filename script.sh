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
    sleep 60
    sysbench --test=cpu --cpu-max-prime=20000 --num-threads=1 run


done
