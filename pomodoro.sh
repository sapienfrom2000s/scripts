#!/bin/bash

echo 'Enter time in seconds'
read time

echo 'Enter the message'
read string

sleep $time && notify-send --expire-time=0 "$string" &
