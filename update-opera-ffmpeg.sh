#!/bin/bash
cd /tmp
wget http://security.ubuntu.com/ubuntu/pool/universe/c/chromium-browser/$(curl -s http://security.ubuntu.com/ubuntu/pool/universe/c/chromium-browser/ |grep chromium-codecs-ffmpeg-extra.*0ubuntu0\.18.*_amd64.deb |tail -1 |sed -n "/href=/s/.*href=\([^>]*\).*/\1/p" |xargs)
dpkg -x chromium-codecs-ffmpeg-extra*.deb /tmp/chromium
sudo cp /tmp/chromium/usr/lib/chromium-browser/libffmpeg.so /usr/lib/x86_64-linux-gnu/opera/
rm -rf /tmp/chromium /tmp/chromium*.deb