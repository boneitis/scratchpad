#!/bin/bash

# Dependencies: tesseract-ocr imagemagick

die(){
  notify-send "$1"
  exit 1
}
cleanup(){
  echo "DBG: removing $1"
  [[ -n $1 ]] && rm -r "$1"
}

SCR_IMG=$(mktemp -d) || die "failed to take screenshot"

# shellcheck disable=SC2064
trap "cleanup '$SCR_IMG'" EXIT

#notify-send "Select the area of the text" 
mate-screenshot -a -c && xclip -selection clipboard -t image/png -o > "$SCR_IMG/scr.png" || die "failed to take screenshot"

# increase image quality with option -q from default 75 to 100
mogrify -modulate 100,0 -resize 400% "$SCR_IMG/scr.png"  || die "failed to convert image"
#should increase detection rate

tesseract "$SCR_IMG/scr.png" "$SCR_IMG/scr" &> /dev/null || die "failed to extract text"

(xclip -selection clipboard -i < <(head -c -2 "$SCR_IMG/scr.txt")) || die "failed to copy text to clipboard"

notify-send "Text extracted" "$(head -c 100 "$SCR_IMG/scr.txt" | head -c -2)" || die "failed to send notification"
exit

