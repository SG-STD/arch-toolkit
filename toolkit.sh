#!/bin/bash

MODULE_DIR="$(dirname "$0")/modules"

# Проверяем yad
if ! command -v yad &>/dev/null; then
  echo "yad не установлен! Установи его: sudo pacman -S yad"
  exit 1
fi

declare -a modules
declare -a descriptions

# Загружаем названия модулей и описания (имя без .sh и коммент из файла)
for f in "$MODULE_DIR"/*.sh; do
  modules+=("$f")
  # Первая строка после shebang с описанием, например: # Описание: обновление системы
  desc=$(grep -m1 "^# Описание:" "$f" | sed 's/# Описание: //')
  if [ -z "$desc" ]; then
    desc=$(basename "$f" .sh)
  fi
  descriptions+=("$desc")
done

# Формируем список для yad: "Название" "Описание"
list=()
for i in "${!modules[@]}"; do
  name=$(basename "${modules[i]}" .sh)
  list+=("$name" "${descriptions[i]}")
done

while true; do
  choice=$(yad --title="Arch Bash Toolkit" --width=500 --height=400 --list \
    --column="Утилита" --column="Описание" \
    "${list[@]}" \
    --button="gtk-ok:0" --button="gtk-cancel:1" --center)

  exit_code=$?

  if [[ $exit_code -ne 0 ]]; then
    exit 0
  fi

  # Запускаем выбранный скрипт
  for i in "${!modules[@]}"; do
    if [[ "$choice" == "$(basename "${modules[i]}" .sh)" ]]; then
      bash "${modules[i]}"
      break
    fi
  done

  yad --info --text="Нажми OK чтобы вернуться в меню" --title="Возврат"
done
