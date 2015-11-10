#!/bin/bash

cd ./scrapy

docker build -t dvsoftware/scrapy .

docker push dvsoftware/scrapy
