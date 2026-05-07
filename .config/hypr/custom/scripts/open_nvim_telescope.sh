#!/bin/bash

# Launch kitty with nvim
kitty -1 --hold -d ~/code/Dokkodo -e nvim &

# Wait for the window to appear
sleep 0.8 # adjust if needed (1s works well)

# Focus the Kitty window (optional)
xdotool search --class kitty windowactivate

# Send keys: <Space> f f
xdotool key space f f
