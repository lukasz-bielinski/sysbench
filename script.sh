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



done
