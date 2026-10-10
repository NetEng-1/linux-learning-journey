#!/bin/bash
echo "=== ПРОВЕРКА СИСТЕМЫ ==="
echo "Имя сервера:"
hostname
echo "Текущий IP-адрес:"
hostname -I
echo "Последние 3 ошибки в системе:"
sudo journalctl -n 20 | grep -i error | tail -n 3
