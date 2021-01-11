#!/bin/sh

download() {
    component="$1"
    echo "Downloading $component .."
    wget "https://github.com/eXpOSNitc/$component/archive/master.zip" -c -q -O "$component.zip"
    unzip -q "$component".zip
    mv "$component"-master "$component"
    rm "$component".zip
    echo "$component downloaded."
}

download expl
download spl
download xfs-interface
download xsm
