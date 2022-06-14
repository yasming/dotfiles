#!/usr/bin/env bash
sudo -v
while true;
do
  sudo -n true;
  sleep 60;
  kill -0 "$$" || exit;
done 2>/dev/null &
sudo defaults write NSGlobalDomain InitialKeyRepeat -int 1
sudo defaults write NSGlobalDomain KeyRepeat -int 100
sudo defaults write com.apple.Dock appswitcher-all-displays -bool true
