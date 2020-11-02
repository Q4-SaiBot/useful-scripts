#
#   Доступ к роутеру для определенных сервисов
#

/ip service
# Telnet
# /12 172.16.0.0 — 172.31.255.255
set telnet	address=172.16.0.0/12 disabled=no port=23
# SSH
set ssh 	address=172.16.0.0/12 disabled=no port=22
# API
set api		address="" disabled=no port=8728
set api-ssl address="" certificate=none disabled=no port=8729
# FTP
set ftp		address="" disabled=no port=21
# WWW
set www		address="" disabled=no port=80
set www-ssl address="" certificate=none disabled=yes port=443
# WinBox
set winbox	address="" disabled=no port=8291
