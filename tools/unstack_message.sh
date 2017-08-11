#!/bin/bash

true

while [ $? == 0 ]; do 
  curl \
    -X GET \
    --header 'Accept: application/json' \
    'http://localhost:8090/receive?queueName=test-queue&autoAcknowledge=true&multiple=true&transactions=true'

  sleep 0.1
done