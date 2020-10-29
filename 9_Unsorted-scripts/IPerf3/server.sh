#!/usr/bin/env bash

################################################################################
#
#   Запускаем на срвере. Он начинает слушать на 5201 порт.
#
################################################################################


# Server specific:
#   -s, --server              run in server mode
#   -D, --daemon              run the server as a daemon
#   -I, --pidfile file        write PID file
#   -1, --one-off             handle one client connection then exit
#   --rsa-private-key-path    path to the RSA private key used to decrypt
#                             authentication credentials
#   --authorized-users-path   path to the configuration file containing user
#                             credentials

#
#   Для запуска сервера вполне достаточно такой команды.
#

iperf3 -s
