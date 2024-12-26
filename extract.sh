#!/usr/bin/env zsh

input=$1
output=$2

if [ ! -f "$1" ] || [ "$1" = '-h' ] || [ "$1" = '-help' ] || [ "$1" = '--help' ];then
  echo '
Extract the audio from a video file.

Usage:

<inputFileName.webm> <outputFileName.mp3>'
  exit 1
fi

(ffmpeg -nostdin -i "$input" -q:a 0 -map a $output.mp3)
