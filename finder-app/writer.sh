#!/bin/sh

if [ $# -lt 2 ]
then
    echo "The parameters are not specified"
    exit 1
fi

writefile=$1
writestr=$2

mkdir -p "$(dirname "$writefile")"

if [ $? -ne 0 ]
then
    echo "The file could not be created"
    exit 1
fi

touch $writefile

if [ $? -ne 0 ]
then
    echo "The file could not be created"
    exit 1
fi

echo $writestr > $writefile