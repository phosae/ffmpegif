#!/usr/bin/env bash

ffmpeg -stats -i $@ -pix_fmt rgb24 -vf "fps=10,scale=0:-1:flags=lanczos" -loop 0 -f gif - | gifsicle --delay=6 -O3 --loop=0 --colors 128 > $@.gif
