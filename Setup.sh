#!/bin/bash

### Finder ###
# 隠しファイルを表示
defaults write com.apple.finder "AppleShowAllFiles" -bool "true"
#Finder上部にパスを表示
defaults write com.apple.finder "_FXShowPosixPathInTitle" -bool "true"
# クイックルック内のテキストをコピー可能にする
defaults write com.apple.finder "QLEnableTextSelection" -bool "true"

### Dock ###
# 表示されるまでの時間を短くする
defaults write com.apple.dock "autohide-delay" -float "0"
# 表示アニメーションを高速化
defaults write com.apple.dock "autohide-time-modifier" -float "0.4"

### SystemUIServer ###
# スクリーンショットの保存場所を指定
defaults write com.apple.screencapture "location" -string "~/Pictures/Screenshots"
# スクリーンショットのファイル名を指定
defaults write com.apple.screencapture "name" -string "screenshot"
# スクリーンショットを影なしで撮影
defaults write com.apple.screencapture "disable-shadow" -bool "true"
# killall
killall SystemUIServer

### その他 ###
# ネットワーク接続時に.DS_Store ファイルの作成を抑制
defaults write com.apple.desktopservices "DSDontWriteNetworkStores" -bool "true"

### killall ###
killall Finder
killall Dock
killall SystemUIServer

# https://macos-defaults.com/
