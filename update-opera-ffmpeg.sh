#!/bin/bash
cd /tmp
PKG_REPO="https://ftp5.gwdg.de/pub/linux/debian/mint/packages/pool/upstream/c/chromium/"

version=$(opera --version | cut -d'.' -f1)
((version+=14))

wget $PKG_REPO$(curl -s $PKG_REPO | grep "amd64" | grep "chromium_$version" | tail -1 | sed -n "/href=/s/.*href=\([^>]*\).*/\1/p" | xargs)
dpkg -x chromium*.deb /tmp/chromium
sudo cp /tmp/chromium/usr/lib/chromium/libffmpeg.so /usr/lib/x86_64-linux-gnu/opera/
rm -rf /tmp/chromium /tmp/chromium*.deb