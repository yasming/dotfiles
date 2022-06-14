#!/usr/bin/env bash
sudo -v
while true;
do
  sudo -n true;
  sleep 60;
  kill -0 "$$" || exit;
done 2>/dev/null &

declare -a plugins_list=(
"helm"
"fluxctl"
"terraform"
"packer"
)

function install_plugins {
  for plugin in "${plugins_list[@]}"; do
    asdf plugin add ${plugin}
  done
}

function main {
  install_plugins
}

main
