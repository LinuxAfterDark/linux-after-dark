#!/bin/bash

EXPECTED="LaD{hidden_files_are_not_secret}"

if [ ! -f "$HOME/flag.txt" ]; then
    echo "FAIL: No submission found."
    echo "Save your flag in ~/flag.txt"
    exit 1
fi

SUBMITTED=$(tr -d '[:space:]' < "$HOME/flag.txt")

if [ "$SUBMITTED" = "$EXPECTED" ]; then
    echo "PASS: Flag accepted."
    exit 0
else
    echo "FAIL: Incorrect flag."
    exit 1
fi
