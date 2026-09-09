#!/bin/bash

if [ ! -f "$HOME/current-user.txt" ]; then
    echo "FAIL: current-user.txt was not found."
    exit 1
fi

expected_user=$(whoami)
submitted_user=$(tr -d '[:space:]' < "$HOME/current-user.txt")

if [ "$submitted_user" = "$expected_user" ]; then
    echo "PASS: You correctly identified the current user."
    exit 0
else
    echo "FAIL: The username in current-user.txt is not correct."
    exit 1
fi
