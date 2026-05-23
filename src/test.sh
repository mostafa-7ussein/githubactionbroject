#!/bin/bash

result=$(node -e "
const sayHello = require('./app');
console.log(sayHello('Mostafa'));
")

expected="Hello Mostafa"

if [ "$result" == "$expected" ]; then
  echo "TEST PASSED"
else
  echo "TEST FAILED"
  echo "Expected: $expected"
  echo "Got: $result"
fi