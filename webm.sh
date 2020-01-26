#!/bin/bash

# If ffmpeg is installed, use this version.
# Otherwise look for a static one in the same directory.
# NOTE: Using avconv will need some adjustments of
# parameters and good luck with that! Also no precise "-ss" in input file.
if hash ffmpeg 2>/dev/null; then
	FFMPEG=ffmpeg
else
	BASEDIR=$(dirname "$0")
	FFMPEG="$BASEDIR/ffmpeg-3.1.4-64bit-static/ffmpeg"
fi

# Converts a given video file into a WEBM of decent video quality and
# okay-ish audio quality (128kb/s), while keeping an acceptable file size.

# $1: input file
# $2: output file
# $3: start point
# $4: end point
# $5: crop

# Scaling. "-1" means automatically match the
# other size (keeping proportions).
SCALE_W=-1
SCALE_H=480
SCALE="scale=$SCALE_W:$SCALE_H"

# CPU threads to use.
THREADS=2

# Start point: default to start of video.
SS="$3"

if [ -z "$3" ]; then
	SS=00:00:00
fi

# End point: default to end of video.
LEN="$4"

if [ -z "$4" ]; then
	LEN=$("$FFMPEG" -i "$1" 2>&1 | grep 'Duration' | awk '{print $2}' | sed s/,//)
fi

# Crop: don't scale if cropping is applied.
# <w>:<h>:<x>:<y> in input

if [ -n "$5" ]; then
	SCALE="crop="$5""
fi

# @see https://libav.org/avconv.html
# @see http://superuser.com/a/556677
# @see http://wiki.webmproject.org/ffmpeg
# @see https://wiki.installgentoo.com/index.php/WebM
# crf: constant rate factor, 0: lossless, 51: worst
# qmin, qmax: quantization parameters [0, 63], lower is better quality.

# To remove the audio, use "-an".

# To mute only a part of the video, use:
# -af "volume=enable='between(t,<from>,<to>)':volume=0"
# <from> and <to> are in seconds and are the positions in the output.

# To fade in, use:
# -af "afade=t=in:st=<from>:d=<len>"

# To remove subtitles, use "-sn". This is recommended because
# otherwise some applications will think the file is damaged.

# You could use libvpx-vp9, but I discovered that at least mpv and
# firefox need a few seconds to seek to a position in even small
# files, while libvpx (VP8) seek in an instant. So for now I prefer VP8.

"$FFMPEG" -ss "$SS" -i "$1" \
	-threads $THREADS \
	-vf "$SCALE" -sws_flags lanczos+accurate_rnd+full_chroma_int \
	-c:v libvpx -qmin 4 -qmax 50 -crf 20 -b:v 1M \
	-c:a libvorbis -q:a 4 \
	-sn \
	-t "$LEN" "$2"
