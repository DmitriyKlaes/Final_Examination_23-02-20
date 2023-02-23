1. Используя команду cat в терминале операционной системы Linux, создать
два файла Домашние животные (заполнив файл собаками, кошками,
хомяками) и Вьючные животными заполнив файл Лошадьми, верблюдами и
ослы), а затем объединить их. Просмотреть содержимое созданного файла.

cat > pets.txt
Рекс
Мурка
Борис

cat pets.txt 

cat > sumpters.txt
Мустанг
Плеватель
Иа

cat pets.txt sumpters.txt > all2gether.txt

cat all2gether.txt 

mv all2gether.txt humanfriends.txt

cat humanfriends.txt 

2. Создать директорию, переместить файл туда.

mkdir Animals && mv humanfriends.txt Animals/