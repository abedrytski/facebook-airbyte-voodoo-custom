#!/bin/bash

cd ..

echo ${1}

docker build -t mironor/facebook-airbyte-voodoo-custom:v${1} .
docker tag  mironor/facebook-airbyte-voodoo-custom:v${1} mironor/facebook-airbyte-voodoo-custom:v${1}-release
docker push mironor/facebook-airbyte-voodoo-custom:v${1}-release
