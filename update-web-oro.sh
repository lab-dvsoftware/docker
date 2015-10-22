#!/bin/bash

cd ./web-oro

docker build -t dvsoftware/web-oro .

docker push dvsoftware/web-oro
