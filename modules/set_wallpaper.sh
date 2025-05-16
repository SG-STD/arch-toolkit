#!/bin/bash
# Описание: Установить аниме-фон
if ! command -v feh &>/dev/null; then
  yad --error --text="Установи feh: sudo pacman -S feh"
  exit 1
fi
WALLPAPER="$HOME/Pictures/anime_wallpaper.png"
if [[ ! -f "$WALLPAPER" ]]; then
  yad --error --text="Фон $WALLPAPER не найден!"
  exit 1
fi
feh --bg-fill "$WALLPAPER"
yad --info --text="Фон установлен"
