#!/bin/bash

echo "src-git kenzo https://github.com/kenzok8/openwrt-packages" >> ./feeds.conf.default
echo "src-git small https://github.com/kenzok8/small" >> ./feeds.conf.default
echo "src-git helloworld https://github.com/fw876/helloworld.git" >> ./feed.conf.default
echo "src-git openclash https://github.com/vernesong/OpenClash.git" >> ./feed.conf.default
git pull

./scripts/feeds update -a
./scripts/feeds install -a
