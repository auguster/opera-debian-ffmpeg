#!/bin/bash
cd /tmp
PKG_REPO="https://ftp5.gwdg.de/pub/linux/debian/mint/packages/pool/upstream/c/chromium/"

version=$(opera --version | cut -d'.' -f1)
((version+=14))

wget $PKG_REPO$(curl -s $PKG_REPO | grep "amd64" | grep "chromium_$version" | tail -1 | sed -n "/href=/s/.*href=\([^>]*\).*/\1/p" | xargs)
dpkg -x chromium*.deb /tmp/chromium
opera_path=$(dirname $(readlink $(which opera)))
sudo mkdir -p $opera_path/lib_extra/
sudo cp /tmp/chromium/usr/lib/chromium/libffmpeg.so $opera_path/lib_extra/
rm -rf /tmp/chromium /tmp/chromium*.deb