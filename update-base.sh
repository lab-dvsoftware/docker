#!/bin/bash

cd ./base

docker build -t dvsoftware/base .

docker push dvsoftware/base
