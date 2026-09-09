#!/bin/bash

if [ -d "$HOME/cli-practice" ]; then
    echo "PASS: cli-practice directory exists."
    exit 0
else
    echo "FAIL: cli-practice directory was not found."
    exit 1
fi
