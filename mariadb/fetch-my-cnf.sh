#!/bin/bash

set -ex
if [ -n "$MY_CNF_URL" -a -n "$MY_CNF_PATH" ]; then 
    curl $MY_CNF_URL -o $MY_CNF_PATH
fi
