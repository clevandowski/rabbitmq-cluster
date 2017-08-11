#!/bin/bash

while true; do 
  curl \
    -X POST \
    --header 'Content-Type: application/json' \
    --header 'Accept: application/json' \
    -d "$(cat /dev/urandom | tr -dc 'a-zA-Z0-9 _\-' | fold -w 32 | head -n 1)" \
    'http://localhost:8090/send?exchange=test-exchange&routingKey=test-binding&number=1&frequency=10&persistent=true'
  
  sleep .1
done