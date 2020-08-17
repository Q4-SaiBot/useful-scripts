#!/usr/bin/env bash

# -s, --symbolic           создавать символьные ссылки, вместо жёстких ссылок
# -f, --force              удалять существующие целевые файлы
# -i, --interactive        спрашивать перед удалением целей

sudo ln -sfi /usr/share/zoneinfo/Europe/Moscow /etc/localtime
