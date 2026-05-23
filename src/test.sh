#!/bin/bash

result=$(node -e "
const sayHello = require('./app');
console.log(sayHello('Mostafa'));
")

expected="Hello Mostafa"

if [ "$result" = "$expected" ]; then
  echo "TEST PASSED"
  exit 0
else
  echo "TEST FAILED"
  echo "Expected: $expected"
  echo "Got: $result"
  exit 1
fi