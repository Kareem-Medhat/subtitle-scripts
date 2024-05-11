#!/usr/bin/env bash

set -euo pipefail
shopt -s nullglob
CWD=$(pwd)

for i in *.zip
do
  TEMP_DIR=$(mktemp -d)
  mv "$i" "$TEMP_DIR"
  cd "$TEMP_DIR";
  unzip "$i";

  for f in *.srt
  do
    ffmpeg -i "$f" "$(tr -cd '[:alnum:]' <<<"$f" | grep -oP '[sS]\d+[eE]\d+' | tr '[:upper:]' '[:lower:]').vtt"
  done

  mv -i ./*.vtt "$CWD"
  rm -rf "$TEMP_DIR"
done
