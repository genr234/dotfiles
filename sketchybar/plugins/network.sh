
ON=$(networksetup -getairportpower en0 | cut -d \  -f4)

if [ "$ON" = "On" ]; then
  ICON="􀙇"
else
  ICON="􀙈"
fi

sketchybar --set "network" icon="$ICON"
