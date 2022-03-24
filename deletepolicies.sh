#!/bin/sh

cd ~
find policies/ -maxdepth 0 -empty -exec $test=echo 0 \;

if [ "$test" != 0 ];then
    rm -rfv policies/* |wc -l
    echo "file(s) removed"
else
    echo "0 file(s) removed"
fi
