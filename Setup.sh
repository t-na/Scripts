#!/bin/bash

### Finder ###

# 隠しファイルを表示
defaults write com.apple.finder AppleShowAllFiles -bool yes
#Finder上部にパスを表示
defaults write com.apple.finder _FXShowPosixPathInTitle -bool yes
# クイックルック内のテキストをコピー可能にする
defaults write com.apple.finder QLEnableTextSelection -bool yes
# killall
killall Finder


### Dock ###
# 表示されるまでの時間を短くする
defaults write com.apple.dock autohide-delay -float 0
# 表示アニメーションを高速化
defaults write com.apple.dock autohide-time-modifier -float 0.4
# killall
killall Dock


### SystemUIServer ###
# スクリーンショットの保存場所を指定
defaults write com.apple.screencapture location ~/Pictures/Screenshots
# スクリーンショットのファイル名を指定
defaults write com.apple.screencapture name screenshot
# スクリーンショットを影なしで撮影
defaults write com.apple.screencapture disable-shadow -bool yes
# killall
killall SystemUIServer


### その他 ###
# ネットワーク接続時に.DS_Store ファイルの作成を抑制
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool yes
# killall
killall Dock

