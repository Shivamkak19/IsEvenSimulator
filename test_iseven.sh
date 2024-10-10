#!/bin/bash

test_case() {
    result=$(./iseven $1)
    if [ "$result" == "$2" ]; then
        echo "PASS: IsEven($1) = $result"
    else
        echo "FAIL: IsEven($1) = $result, expected $2"
    fi
}

test_case 1 false
test_case 2 true
test_case 5 false
test_case 10 true
test_case 491 false
test_case 500 true
test_case 501 false