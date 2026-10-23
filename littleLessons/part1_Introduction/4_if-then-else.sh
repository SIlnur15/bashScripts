#!/usr/bin/bash

# the first simple example
result=$(find /home/mars/bashScripts/littleLessons -type f -name "*fufile*") # $(...) механизм подставновки команд
echo $? # стандартный способ вывести код ошибки, 0-ошибок нет
if [ $? -ne 0 ] # проверка, что ошибка не равна 0, между [ и ] обязательны пробелы
then
echo "the file exists"
else
echo "there is no a positive result"
fi

# find - поиск файлов, grep - поиск текста в файле
# -type f - поиск обычных файлов (не путей), т. к. в Linux все файлы
# -name - поиск строго по имени, предполагает точное сопоставление, но регулярки делают подход гибче
# * - в регулярках, любое количество символов
# -ne - Not Equal, будет отдельная тема сравнения чисел
# "$?" - код ошибки

# elif (напомнило python)
if pwd
then
echo "1"
elif pwd
then
echo "2"
fi
