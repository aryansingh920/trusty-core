#!/bin/bash

cd src
rm -rf kogito-examples
echo "Clone the Kogito examples repository with"
git clone https://github.com/kiegroup/kogito-examples.git
cd kogito-examples
git checkout stable
cd ../../
