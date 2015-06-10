#!/bin/bash

### Finder ###

# 隠しファイルを表示
defaults write com.apple.finder AppleShowAllFiles -bool yes
# クイックルック内のテキストをコピー可能にする
defaults write com.apple.finder QLEnableTextSelection -bool yes
#Finder上部にパスを表示
defaults write com.apple.finder _FXShowPosixPathInTitle -bool yes
# ネットワーク接続時に.DS_Store ファイルの作成を抑制
defaults write com.apple.desktopservices DSDontWriteNetworkStores true

killall Finder




### Dock ###

defaults write com.apple.dock autohide-time-modifier -float 0.4

killall Dock




### SystemUIServer ###
# スクリーンショットのタイトルを変更
defaults write com.apple.screencapture name “screenshot”
# スクリーンショットの影を無くす
defaults write com.apple.screencapture “disable-shadow” -bool yes

killall SystemUIServer
