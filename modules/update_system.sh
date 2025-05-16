#!/bin/bash
# Описание: Обновление системы
yad --info --text="Обновление системы..." --timeout=2
sudo pacman -Syu --noconfirm | yad --text-info --title="Обновление системы"
