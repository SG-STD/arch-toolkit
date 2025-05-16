#!/bin/bash
# Описание: Мониторинг температуры CPU и GPU
if ! command -v sensors &>/dev/null; then
  yad --error --text="Установи пакет lm_sensors: sudo pacman -S lm_sensors"
  exit 1
fi
yad --text-info --title="Температура" --width=600 --height=400 --timeout=15 --button=gtk-close --center < <(watch -n 2 sensors)
