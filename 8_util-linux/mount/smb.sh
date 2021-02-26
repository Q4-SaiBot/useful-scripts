#!/usr/bin/env bash

################################################################################
#
#   Монтируем Samba ресурсы
#
################################################################################


#
#   --help (Небольшое пояснение, если требуется знать, откуда взято)
#

# -h, --human-readable     печатать размеры в удобном для человека виде
#                          (например, 1K 234M 2G)

#
#   Для избежания ошибки, надо установить следующий пакет:
#   https://download.samba.org/pub/linux-cifs/cifs-utils/
#

#   https://www.dmosk.ru/miniinstruktions.php?mini=linux-cifs

# Сначала проверим, установлен ли он.
ls -l /sbin/mount.cifs

# Выводим о нем информацию
dpkg -l cifs-utils

# Команда для установки самого пакета
apt install cifs-utils

# Сама команда монтирования
# Без опции -o будет ломиться под текущей учеткой
mount.cifs //192.168.1.10/public /mnt/public -o user=guest
mount.cifs //server.local/public /mnt/public -o guest
