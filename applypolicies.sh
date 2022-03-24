#!/bin/sh

cd ~/policies
find policies/ -maxdepth 0 -empty -exec $test=echo 0 \;

if [ "$test" != 0 ];then
    kubectl delete netpol --all
    kubectl apply -f policies/
else
    echo "no policy files present"
fi

