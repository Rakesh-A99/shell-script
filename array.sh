#!/bin/bash

# reading an array 

persons={$1,$2,...,$7}
echo "First Person: ${PERSONS[0]}"

"First Person: ${PERSONS[@]}"