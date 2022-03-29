#!/bin/sh

cd ~
find Policies/ -maxdepth 0 -empty -exec $test=echo 0 \;

if [ "$test" != 0 ];then
    kubectl delete netpol --all -n go 
    kubectl apply -f Policies/ -n go
else
    echo "no policy files present"
fi

