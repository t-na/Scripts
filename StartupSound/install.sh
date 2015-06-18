#!/bin/sh

cd $(dirname $0)
chmod +x StartupSound.sh
sudo defaults write com.apple.loginwindow LogoutHook $(pwd)/StartupSound.sh
echo 'StartupSound.sh was installed sccessflly.\nLogoutHook:'
sudo defaults read com.apple.loginwindow LogoutHook
