#!/bin/bash

# Define the name of your monitor
monitor="HDMI-2"

# Check if the number of arguments is correct
if [ $# -ne 1 ]; then
    echo "Usage: $0 [brightness from 0.1 to 1.0]"
    exit 1
fi

# Get the brightness value from the argument
brightness="$1"

# Set the brightness using xrandr
xrandr --output "$monitor" --brightness "$brightness"

