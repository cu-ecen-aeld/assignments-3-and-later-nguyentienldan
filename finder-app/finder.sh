#!/bin/sh

if [ $# -lt 2 ]
then
    echo "The parameters are not specified"
    exit 1
fi

filesdir=$1
searchstr=$2

if ! [ -d $filesdir ]
then
    echo "$filesdir is not a directory"
    exit 1
fi

filesnumber=$(find $filesdir -type f | wc -l)
matchinglines=$(grep -r $searchstr $filesdir | wc -l)

echo "The number of files are $filesnumber and the number of matching lines are $matchinglines"