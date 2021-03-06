#!/bin/sh

# ./fapk_build.sh [channelname] [platfrom]
SHELL_FOLDER=$(cd "$(dirname "$0")";pwd)
DESK_FOLDER=$SHELL_FOLDER/dest/

if [ ! -d "$DESK_FOLDER" ]; then
  mkdir $DESK_FOLDER
fi

#echo $DESK_FOLDER

flutter build apk --dart-define=CHANNEL_NAME=$1 --dart-define=PLATFORM=$2
cd build/app/outputs/apk/release/
cp -R *.apk $DESK_FOLDER