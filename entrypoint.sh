#!/bin/bash
set -e

CHROME_FLAGS="--headless --disable-gpu --no-sandbox --disable-dev-shm-usage"
PRESET=""

if [ "${1#http}" != "$1" ]; then
   [ ! -d "./reports" ] && mkdir ./reports
   if [ "$2" = "--desktop" ]; then
      PRESET="--output-path=reports/lighthouse-desktop --preset=desktop"
   else
      PRESET="--output-path=reports/lighthouse-mobile"
   fi
   
   set -- npx lighthouse "$1" "$PRESET" --chrome-flags="${CHROME_FLAGS}" --disable-storage-reset --output=html --output=json --throttling.cpuSlowdownMultiplier=1 --enable-error-reporting
fi

exec "$@"
