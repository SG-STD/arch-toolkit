#!/bin/bash

echo "🔧 Установка Arch Bash Toolkit..."
echo "📦 Установка зависимостей..."

sudo pacman -Sy --noconfirm yad scrot feh lm_sensors curl
if ! command -v yay &>/dev/null; then
  echo "❗ yay не найден. Устанавливаю..."
  git clone https://aur.archlinux.org/yay.git /tmp/yay
  cd /tmp/yay || exit 1
  makepkg -si --noconfirm
  cd - || exit
fi

echo "📁 Копирую файлы..."
INSTALL_DIR="/usr/local/share/bash-toolkit"
BIN_PATH="/usr/local/bin/bash-toolkit"

sudo mkdir -p "$INSTALL_DIR"
sudo cp -r ./* "$INSTALL_DIR"
sudo chmod -R +x "$INSTALL_DIR"

echo "#!/bin/bash
bash \"$INSTALL_DIR/toolkit.sh\"" | sudo tee "$BIN_PATH" > /dev/null
sudo chmod +x "$BIN_PATH"

echo "✅ Установка завершена!"
echo "🚀 Запускайте: bash-toolkit"
