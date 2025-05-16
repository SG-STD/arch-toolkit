#!/bin/bash
# Описание: Очистка кэша пакетов
yad --info --text="Очистка кэша пакетов..." --timeout=2
sudo pacman -Sc --noconfirm | yad --text-info --title="Очистка кэша"
