#!/bin/bash

cd ./sf2-prod

docker build -t dvsoftware/sf2-prod .

docker push dvsoftware/sf2-prod
