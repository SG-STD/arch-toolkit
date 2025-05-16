#!/bin/bash
# Описание: Проверка интернет-соединения
if ping -q -c 1 -W 1 8.8.8.8 >/dev/null; then
  yad --info --text="Интернет работает!"
else
  yad --error --text="Нет интернета!"
fi
