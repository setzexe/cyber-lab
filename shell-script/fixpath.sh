#!/bin/bash

input_path="$1"
converted_path="${input_path//\\//}"

echo "$converted_path"