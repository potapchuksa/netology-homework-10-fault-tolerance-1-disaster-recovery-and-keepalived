#!/bin/bash

# Проверяем, что порт 80 доступен
if ! nc -z -w 2 127.0.0.1 80; then
    exit 1
fi

# Проверяем, что index-файл существует
if [ ! -f "/var/www/html/index.nginx-debian.html" ]; then
    exit 1
fi

# Если всё ок
exit 0
