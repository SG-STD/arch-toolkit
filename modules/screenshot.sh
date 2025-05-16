#!/bin/bash
# Описание: Сделать скриншот с датой
if ! command -v scrot &>/dev/null; then
  yad --error --text="Установи scrot: sudo pacman -S scrot"
  exit 1
fi
FILE="$HOME/Pictures/screenshot_$(date +%F_%H-%M-%S).png"
scrot "$FILE"
yad --info --text="Скриншот сохранён в:\n$FILE"
