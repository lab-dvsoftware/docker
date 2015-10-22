#!/bin/bash

cd ./web

docker build -t dvsoftware/web .

docker push dvsoftware/web
