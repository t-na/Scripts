#!/bin/sh

cd $(dirname $0)
chmod +x StartupSound.sh
defaults write com.apple.loginwindow LogoutHook $(pwd)/StartupSound.sh
echo 'StartupSound.sh was installed sccessflly.\nLogoutHook:'
defaults read com.apple.loginwindow LogoutHook
