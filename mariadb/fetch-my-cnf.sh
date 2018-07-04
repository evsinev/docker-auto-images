#!/bin/bash

if [ -z "$MY_CNF_URL" ]; then 
    echo "No MY_CNF_URL. Do not fetching."
    exit 0
fi

if [ -z "$MY_CNF_PATH" ]; then 
    echo "No MY_CNF_PATH. Do not fetching."
    exit 0
fi


curl $MY_CNF_URL -o $MY_CNF_PATH
