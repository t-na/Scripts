#!/bin/sh

cd $(dirname $0)
chmod -x StartupSound.sh
sudo defaults delete com.apple.loginwindow LogoutHook
echo 'StartupSound.sh was uninstalled sccessflly.\nLogoutHook:'
sudo defaults read com.apple.loginwindow LogoutHook
