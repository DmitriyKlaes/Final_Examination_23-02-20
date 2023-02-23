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

3. Подключить дополнительный репозиторий MySQL. Установить любой пакет

wget https://dev.mysql.com/get/mysql-apt-config_0.8.24-1_all.deb 

dpkg -i mysql-apt-config_*_all.deb

apt update

apt install -y mysql-server mysql-client

4. Установить и удалить deb-пакет с помощью dpkg.

wget https://zoom.us/client/latest/zoom_amd64.deb

dpkg -i zoom_amd64.deb

apt-get -y -f install

dpkg -r zoom

apt-get purge -y zoom
