#!/bin/bash

cd ./sf2-dev

docker build -t dvsoftware/sf2-dev .

docker push dvsoftware/sf2-dev
