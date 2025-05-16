<div align="center">
  <img src="https://raw.githubusercontent.com/SG-STD/arch-toolkit/main/logo.png" alt="Arch Toolkit Logo" width="200">
  <h1>🚀 Arch Bash Toolkit</h1>
  <p><strong>Мощный набор инструментов для управления Arch Linux через графический интерфейс</strong></p>
  
  ![License](https://img.shields.io/github/license/SG-STD/arch-toolkit)
  ![Version](https://img.shields.io/badge/version-1.0.0-blue)
  ![Arch Linux](https://img.shields.io/badge/Arch%20Linux-supported-brightgreen)
  ![Manjaro](https://img.shields.io/badge/Manjaro-supported-brightgreen)
</div>

## 📋 Содержание

- [📋 Содержание](#-содержание)
- [✨ Возможности](#-возможности)
- [🔧 Установка](#-установка)
- [🚀 Использование](#-использование)
- [📦 Модули](#-модули)
  - [Системные модули](#системные-модули)
  - [Развлекательные модули](#развлекательные-модули)
- [🖼️ Скриншоты](#-скриншоты)
- [🤝 Вклад в проект](#-вклад-в-проект)
- [📄 Лицензия](#-лицензия)

## ✨ Возможности

Arch Bash Toolkit предоставляет удобный графический интерфейс для выполнения различных задач администрирования и настройки Arch Linux:

- 🔄 **Обновление системы** - простое обновление пакетов через графический интерфейс
- 💾 **Резервное копирование** - создание и восстановление резервных копий
- 🧹 **Очистка системы** - удаление ненужных файлов и кэша
- 🔧 **Настройка системы** - управление системными параметрами
- 📊 **Мониторинг ресурсов** - отслеживание использования CPU, RAM и диска
- 🎮 **Развлекательные модули** - классические игры и ASCII-арт

Все операции выполняются через интуитивно понятный графический интерфейс, построенный на YAD (Yet Another Dialog).

## 🔧 Установка

1. Клонируйте репозиторий:

```bash
git clone https://github.com/SG-STD/arch-toolkit.git
```

2. Перейдите в директорию проекта:

```bash
cd arch-toolkit
```

3. Сделайте скрипт исполняемым:

```bash
chmod +x toolkit.sh
```

4. Установите зависимости:

```bash
sudo pacman -S yad
```

## 🚀 Использование

Запустите главный скрипт:

```bash
./toolkit.sh
```

Выберите нужный модуль из списка и следуйте инструкциям на экране.

## 📦 Модули

### Системные модули

| Модуль | Описание |
|--------|----------|
| **system_update** | Обновление системы и пакетов |
| **backup_restore** | Резервное копирование и восстановление |
| **system_cleaner** | Очистка системы от ненужных файлов |
| **package_manager** | Управление пакетами |
| **service_manager** | Управление системными службами |
| **system_info** | Информация о системе |
| **user_manager** | Управление пользователями |
| **network_manager** | Настройка сети |

### Развлекательные модули

| Модуль | Описание |
|--------|----------|
| **doom_classic** | Запуск классического Doom в терминале |
| **anime_viewer** | Просмотр аниме и манги |
| **ascii_fun** | ASCII-арт и развлечения в терминале |
| **hacker_simulator** | Симулятор хакера для развлечения |

## 🖼️ Скриншоты

<div align="center">
  <img src="https://raw.githubusercontent.com/SG-STD/arch-toolkit/main/screenshots/main.png" alt="Главное меню" width="600">
  <p><em>Главное меню Arch Bash Toolkit</em></p>
  
  <img src="https://raw.githubusercontent.com/SG-STD/arch-toolkit/main/screenshots/system_info.png" alt="Информация о системе" width="600">
  <p><em>Модуль информации о системе</em></p>
  
  <img src="https://raw.githubusercontent.com/SG-STD/arch-toolkit/main/screenshots/ascii_fun.png" alt="ASCII Fun" width="600">
  <p><em>Модуль ASCII-арт и развлечения</em></p>
</div>

## 🤝 Вклад в проект

Вклады приветствуются! Если у вас есть идеи по улучшению Arch Bash Toolkit:

1. Форкните репозиторий
2. Создайте ветку для вашей функции (`git checkout -b feature/amazing-feature`)
3. Зафиксируйте изменения (`git commit -m 'Add some amazing feature'`)
4. Отправьте изменения в ваш форк (`git push origin feature/amazing-feature`)
5. Откройте Pull Request

## 📄 Лицензия

Распространяется под лицензией MIT. См. файл `LICENSE` для получения дополнительной информации.

---

<div align="center">
  <p>Создано с ❤️ для сообщества Arch Linux</p>
  <p>© 2023 SG-STD</p>
</div>
