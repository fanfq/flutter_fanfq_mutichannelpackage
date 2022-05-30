#!/bin/sh

# ./fios_build.sh appstore ios
SHELL_FOLDER=$(cd "$(dirname "$0")";pwd)
DESK_FOLDER=$SHELL_FOLDER/dest/

if [ ! -d "$DESK_FOLDER" ]; then
  mkdir $DESK_FOLDER
fi

#echo $DESK_FOLDER

flutter build ios --dart-define=CHANNEL_NAME=$1 --dart-define=PLATFORM=$2
#cd build/ios/iphoneos/
#cp -R *.ipad $DESK_FOLDER