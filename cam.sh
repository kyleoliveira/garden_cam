#! /bin/bash
DATE=$(date +"%Y-%m-%dT%H:%M:%S")
DAY_DATE=$(date +"%Y-%m-%d")
FILENAME=/tmp/$DATE
GDRIVE_ROOT="0B2u1fK86laphR2xGVTBtVGV1VkE"

DIRS_COUNT=`$HOME/Tools/gdrive list -q "'$GDRIVE_ROOT' in parents and name contains '$DAY_DATE' and trashed = false and mimeType = 'application/vnd.google-apps.folder'" | tail -n +2 | wc -l`

if [[ $DIRS_COUNT -lt 1 ]]; then
  $HOME/Tools/gdrive mkdir -p $GDRIVE_ROOT $DAY_DATE
fi

DAILY_DIR=`$HOME/Tools/gdrive list -q "'$GDRIVE_ROOT' in parents and name contains '$DAY_DATE' and trashed = false and mimeType = 'application/vnd.google-apps.folder'" | tail -n +2 | cut -d' ' -f1`


fswebcam --save $FILENAME && \
/home/pi/Tools/gdrive upload -p $DAILY_DIR $FILENAME && \
rm $FILENAME
