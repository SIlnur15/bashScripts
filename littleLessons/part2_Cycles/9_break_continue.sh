#!/usr/bin/bash

# Команда break позволяет прервать выполнение цикла. Используетсяи в циклах for, и в циклах while
flag=0
for numb in 3 1 5 6 7 8
do
  if [ $numb -eq 5 ]
  then
  echo "5 is in this massive"
  flag=1
  break
  fi
done
if [ $flag -eq 0 ]
then echo "5 isn't in here"
fi

echo "- - - - - - - -"
# Команда continue - текущая итерация завершается досрочно и начинается следующая, при этом выхода из
# цикла не происходит.
for (( var1 = 1; var1 < 15; var1++ ))
do
  if [ $var1 -gt 5 ] && [ $var1 -lt 10 ]
  then
  continue
  fi
  echo "Iteration number: $var1"
done

echo "- - - - - - - -"
for (( a = 1; a < 10; a++ ))
do
echo "Number is $a" >> myfile.txt # перенапраление вывода в файл
done
echo "finished."

echo "- - - - - - - -"
# Такой скрипт, позволил получить список исполняемых файлов, хранящихся в папках из PATH
IFS=:
for folder in $PATH
do
echo "$folder:"
  for file in $folder/*
  do
  if [ -x $file ]
  then
  echo " $file"
  fi
  done
done
