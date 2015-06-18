#!/bin/sh

cd $(dirname $0)
chmod -x StartupSound.sh
defaults delete com.apple.loginwindow LogoutHook
echo 'StartupSound.sh was uninstalled sccessflly.\nLogoutHook:'
defaults read com.apple.loginwindow LogoutHook
