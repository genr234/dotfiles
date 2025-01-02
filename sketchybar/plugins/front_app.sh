#!/bin/bash

if [ "$SENDER" = "front_app_switched" ]; then
  case "$INFO" in
    ("Arc") ICON="􀎭"                          ;;
    ("Warp"|"Terminal") ICON="􀪏"              ;;
    ("Steam"|"Steam Helper") ICON=""         ;;
    (""|"Finder") ICON="􀼲"                    ;;
    ("Spotify") ICON="􀒽"                      ;;
    ("Discord") ICON="􀝋"                      ;;
    ("WhatsApp") ICON="􁏊"                     ;;
    ("Code"|"Zed"|"IntelliJ IDEA") ICON="􁿍"   ;;
    (*) ICON="􀑌"                              ;;
  esac
  sketchybar --set "$NAME" label="$INFO" icon="$ICON"
  if [ $INFO = "Finder" ]; then
    sketchybar --set front_app.quit click_script="sketchybar --set front_app popup.drawing=off"
  else
    sketchybar --set front_app.quit click_script="osascript -e 'tell application \"$INFO\" to quit' sketchybar --set front_app popup.drawing=off"
  fi
fi