#!/bin/bash
clear
echo "--------------------"
echo "|    Cine esti ?   |"
echo "|------------------|"
echo "| 1. ci            |"
echo "| 2. ci arabadji   |"
echo "|                  |"
echo "| Введите 1 или 2: |"
echo "--------------------"
read numb
if [ $numb = "2" ]
then
	pkg install python
	pkg install python3
	pkg install python3-pip
	pkg install dos2unix
	pip3 install requests
	pip3 install colorama
	cp ~/spymer/spammer.py /data/data/com.termux/files/usr/bin/spymer
	dos2unix /data/data/com.termux/files/usr/bin/spymer
	chmod 777 /data/data/com.termux/files/usr/bin/spymer
	spymer
else
	if [ $numb = "1" ]
	then

		if [ "$(whoami)" != 'root' ]; then
			echo "У вас нет прав. Запустите install.sh с root правами (sudo sh ~/spymer/install.sh)"
			exit
		else
			apt install python3 python3-pip dos2unix
			pip3 install requests
			pip3 install colorama
			cp ~/spymer/spammer.py /usr/bin/spymer
			dos2unix /usr/bin/spymer
			chmod 777 /usr/bin/spymer
			spymer
		fi
	else
		echo "Некорректный ввод"
	fi
fi

