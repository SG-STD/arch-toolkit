#!/bin/bash
# Описание: Обновить Bash Toolkit

REPO="https://github.com/yourusername/bash-toolkit.git"
INSTALL_DIR="/usr/local/share/bash-toolkit"

yad --question --text="Вы хотите обновить toolkit из GitHub?" --title="Обновление" || exit

tmpdir=$(mktemp -d)
git clone "$REPO" "$tmpdir" || {
  yad --error --text="Ошибка при загрузке из GitHub"
  exit 1
}

sudo cp -r "$tmpdir"/* "$INSTALL_DIR"
sudo chmod -R +x "$INSTALL_DIR"

yad --info --text="Обновление завершено!"
