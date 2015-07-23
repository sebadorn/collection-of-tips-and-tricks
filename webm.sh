#!/bin/bash

# Converts a given video file into a WEBM of decent video quality and
# okay-ish audio quality (128kb/s), while keeping an acceptable file size.

# $1: input file
# $2: output file
# $3: start point
# $4: length of clip

# @see http://superuser.com/a/556677
# crf: constant rate factor, 0: lossless, 51: worst
# qmin, qmax: quantization parameters, lower is better. qmin: [0,4], qmax: [50-63]

cd $(dirname "$0")

SS="$3"
LEN="$4"
SCALE_W=-1
SCALE_H=480

# Start point: default to start of video.
if [ -z "$3"]; then
	SS=00:00:00
fi

# Duration: default to whole video length.
if [ -z "$4" ]; then
	LEN=$(avprobe "$1" 2>&1 | grep 'Duration' | awk '{print $2}' | sed s/,//)
fi

avconv -i "$1" -threads 2 -vf scale=$SCALE_W:$SCALE_H -c:v libvpx -qmin 0 -qmax 50 -crf 10 -b:v 2M -c:a libvorbis -q:a 4 -ss "$3" -t "$4" "$2"
