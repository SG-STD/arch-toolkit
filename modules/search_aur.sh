#!/bin/bash
# Описание: Поиск пакета в AUR через yay
if ! command -v yay &>/dev/null; then
  yad --error --text="Установи yay: sudo pacman -S yay"
  exit 1
fi
pkg=$(yad --entry --title="Поиск пакета в AUR" --text="Введите имя пакета:")
if [[ -n "$pkg" ]]; then
  yay -Ss "$pkg" | yad --text-info --title="Результаты поиска"
fi
