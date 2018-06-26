#!/bin/bash

FILE=$1

if [ -z "$FILE" ]
  then
    echo "use encript-run.sh env_encript_file"
    exit 1
fi

gpg $FILE

ENV=`echo $FILE | awk -F. '{print $1}'`
docker run -ti --rm --env-file $ENV local/centos-aws-runer
shred $ENV -u
