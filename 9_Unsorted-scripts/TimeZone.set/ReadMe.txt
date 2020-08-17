Установка TimeZone несколькими способами.
https://evlanoff.wordpress.com/2017/11/22/changing-timezone-debian-9/


1. Самый простой способ.

dpkg-reconfigure tzdata


2. Тоже самое, только в текстовом режиме.

tzselect


3. Через systemd

timedatectl set-timezone <название зоны>

Просмотр доступных зон
timedatectl list-timezones


4. С помощью утилиты ntpdate.

По умолчанию данная утилита не установлена.
apt install ntp ntpdate

Добавьте ntp-сервер в конфигурационный файл /etc/ntp.conf
ищите строки начинающиеся с pool. Более подробно о синтаксисе
этого файла man ntp.conf

Остановим службу сетевого времени для обновления
service ntp stop

Получаем данные с ntp-сервера
ntpdate -s <адрес ntp-сервера>

Запускаем службу обратно
service ntp start


5. Ручная настройка.

Пишем в файл /etc/timezone нужную временную зону, например Europe/Moscow
echo Europe/Moscow > /etc/timezone

Перезаписываем данные о временной зоне.
ln -sf /usr/share/zoneinfo/Europe/Moscow /etc/localtime

Получаем данные с ntp-сервера
ntpdate -s <адрес ntp-сервера>

Проверяем, что время обновилось
date -R
