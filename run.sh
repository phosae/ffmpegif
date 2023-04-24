#!/usr/bin/env bash
set -ex

D=${DELAY:-10}
FPSARG=${FPS:-10} # smaller output smaller GIF
W=${SCALE:-500} # you can adjust width pixels(i.e 0, 320, 500) for smaller size (0 full > 500 > 320)
GIF_LOSSY=${LOSSY:-100}
GIF_COLORS=${COLORS:-128}
# COLOR_DEPTH: -pix_fmt rgb24, rgb8

ffmpeg -i $@ $COLOR_DEPTH -vf "fps=$FPSARG,scale=$W:-1:flags=lanczos" -f gif - | gifsicle --delay=$D --optimize=3 --lossy=$GIF_LOSSY --colors $GIF_COLORS > $@.gif
