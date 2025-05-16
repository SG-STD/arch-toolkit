#!/bin/bash
# Описание: ASCII-аниме
if ! command -v curl &>/dev/null; then
  yad --error --text="Установи curl: sudo pacman -S curl"
  exit 1
fi
bash <(curl -s https://raw.githubusercontent.com/onew/linux-ascii-anime/master/ascii-anime.sh)
