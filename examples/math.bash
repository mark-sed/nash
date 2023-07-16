#!/usr/bin/env bash

R_VAL=$(($1 + 42))

if [ -z ${L_VAL+x} ];
then
    echo "L_VAL is not set!"
    exit 1
else
    _NASH_V1=$(($L_VAL * $R_VAL))
    echo $_NASH_V1
fi
