#!/bin/sh

# faab_channel.sh [channelname] [platfrom]
# faab_build.sh googleplay android

SHELL_FOLDER=$(cd "$(dirname "$0")";pwd)
DESK_FOLDER=$SHELL_FOLDER/dest/

if [ ! -d "$DESK_FOLDER" ]; then
  mkdir $DESK_FOLDER
fi

#echo $DESK_FOLDER

flutter build appbundle --dart-define=CHANNEL_NAME=$1 --dart-define=PLATFORM=$2
cd build/app/outputs/bundle/release/
cp -R *.aab $DESK_FOLDER