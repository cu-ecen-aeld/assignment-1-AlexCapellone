#!/bin/sh

if [ $# -lt 2 ]
  then
    echo "the first argument is a full path to a file (including filename) on the filesystem the second argument is a text string which will be written within this file"
    return 1
fi
FDIR=$(dirname $1)
if [ ! -d ${FDIR} ]; then
	mkdir ${FDIR}
fi
echo $2 > $1
