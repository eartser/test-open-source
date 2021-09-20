#!/bin/bash

project=$1
project=${project:19}
url="https://api.github.com/repos/${project}/commits"

for ((i=0; i<10; i++))
do
json_path=$'.['${i}'].commit.message'
curl -s ${url} | jq ${json_path}
done
