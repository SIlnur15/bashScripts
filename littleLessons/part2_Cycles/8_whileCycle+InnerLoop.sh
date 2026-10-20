#!/usr/bin/bash

# Вот схема организации циклов while
# while команда проверки условия
# do
# другие команды
# done

var1=0
while [ $var1 -lt 3 ]
do
var1=$((var1+1))
echo "$var1"
done
echo "done"

# вложенные циклы (inner loop) (для наглядности вложенностей можно самостоятельно вводить отступы)
echo "- - - - - - - -"
var2=2
while [ $var2 -gt 0 ]
do
var2=$(($var2-1))
echo "Start var2: $var2"
  for ((a=1; a<=2; a++))
  do
  echo "Starting the second level of loop nesting, a: $a"
    for ((b=1; b<=2; b++))
    do
    echo "Starting the third nested loop (b): $b"
    done
 done
done

echo "- - - - - - - -"
# Обработка содержимого файла. Чаще всего вложенные циклы используют для обработки файлов. Так,
# внешний цикл занимается перебором строк файла, а внутренний уже работает с каждой строкой,
# при этом изменяя IFS:

IFS=$'\n'
for entry in $(cat /etc/passwd)
do
echo "Values in $entry –"
IFS=:
	for value in $entry
	do
	echo " $value"
	done
done
