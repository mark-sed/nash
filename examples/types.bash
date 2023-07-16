#!/usr/bin/env bash

function isint() {
    if [[ "$1" =~ ^[0-9]+$ ]]
    then
        echo "1"
    else
        echo "0"
    fi
}

function isfloat() {
    if [[ "$1" =~ ^[+-]?[0-9]+\.?[0-9]*$ ]]
    then
        echo "1"
    else
        echo "0"
    fi
}

function desc() {
    if [ $# == 1 ]
    then
        if [ $(isint $1) == "1" ]
        then
            echo "int("$1")"
        elif [ $(isfloat $1) == "1" ]
        then
            echo "float("$1")"
        else
            echo "NonNumber("$1")"
        fi
    else
        echo "This script takes only one argument"
        exit 1
    fi
}

desc $@