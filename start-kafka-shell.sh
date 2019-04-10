#!/bin/bash
docker run --rm \
    -v /var/run/docker.sock:/var/run/docker.sock \
    --net kafkadocker_default \
    -e HOST_IP=$1 \
    -e ZK=$2 \
    -i -t kafkadocker_kafka /bin/bash
