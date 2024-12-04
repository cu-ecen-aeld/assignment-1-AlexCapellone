#!/bin/sh

if [ $# -lt 2 ]
  then
    echo "the first argument is a path to a directory on the filesystem, referred to below as filesdir; the second argument is a text string which will be searched within these files, referred to below as searchstr"
fi
if [ ! -d "$1" ]; then
  echo "$1 does exist."
fi
NUM_FILE=$(find "$1" -maxdepth 100 | wc -l)
NUM_FILE=$((NUM_FILE-1))
OCCUR=$(grep -row "$2" $1 | wc -l)
echo "The number of files are $NUM_FILE and the number of matching lines are $OCCUR" 
