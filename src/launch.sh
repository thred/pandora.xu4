#!/bin/bash

export SDL_MOUSE_RELATIVE=0
export SDL_VIDEODRIVER=omapdss
export SDL_OMAP_LAYER_SIZE=fullscreen
export SDL_OMAP_NO_TS_TRANSLATE=1
export SDL_OMAP_TS_FORCE_TSLIB=0
export SDL_OMAP_VSYNC=0
export SDL_OMAP_FORCE_DIRECTBUF=1

export HOME="$(pwd)"

DIR="$(dirname $0)"
DIR="$(readlink -f "$DIR")"
BIN="$DIR/u4/bin/u4"
PWD="pandora/appdata/pandora.xu4.thred"

# prepare the original 

U4ZIP="ultima4.zip";

if [ ! -f "${U4ZIP}" ];
then
    URL="http://ultima.thatfleminggent.com/ultima4.zip"

    zenity --question --title="Original Ultima IV binary is missing" --text="I could not find the file \"${U4ZIP}\", that should contain the original game.\n\nI can download it for you from \"${URL}\", or you can place it in the directory \"${PWD}\" by hand (see the readme.txt for more information)." --ok-label="Download" --cancel-label="Abort" --width 480

    if [ $? != 0 ]
    then
        echo "Aborted."
        exit 1
    fi

    wget "${URL}"

    if [ ! -f "${U4ZIP}" ]; 
    then
        zenity --info --text="Unfortunately, that didn't work.\n\nPlease check you internet connection and try again or place the \"ultima4.zip\" in the directory \"${PWD}\" by hand."
        echo "Aborted."
        exit 1
    fi
fi

XU4RC=".xu4/xu4rc"

if [ ! -f "${XU4RC}" ];
then
    mkdir .xu4
    cp $DIR/xu4rc $XU4RC
fi

$BIN -f

