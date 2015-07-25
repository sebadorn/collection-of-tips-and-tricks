#!/bin/bash

# Converts a given video file into a WEBM of decent video quality and
# okay-ish audio quality (128kb/s), while keeping an acceptable file size.

# $1: input file
# $2: output file
# $3: start point
# $4: length of clip

# Scaling. "-1" means automatically match the
# other size (keeping proportions).
SCALE_W=-1
SCALE_H=480

# CPU threads to use.
THREADS=2

# Start point: default to start of video.
SS="$3"

if [ -z "$3"]; then
	SS=00:00:00
fi

# Duration: default to whole video length.
LEN="$4"

if [ -z "$4" ]; then
	LEN=$(avprobe "$1" 2>&1 | grep 'Duration' | awk '{print $2}' | sed s/,//)
fi

# @see https://libav.org/avconv.html
# @see http://superuser.com/a/556677
# @see http://wiki.webmproject.org/ffmpeg
# crf: constant rate factor, 0: lossless, 51: worst
# qmin, qmax: quantization parameters [0, 63], lower is better quality.

# To remove the audio, use "-an".

# libvpx-vp9 would be preferable, but isn't available in Ubuntu 14.04.

avconv -i "$1" \
	-threads $THREADS \
	-vf scale=$SCALE_W:$SCALE_H -sws_flags lanczos \
	-c:v libvpx -qmin 4 -qmax 50 -crf 20 -b:v 1M \
	-c:a libvorbis -q:a 4 \
	-ss "$SS" -t "$LEN" "$2"