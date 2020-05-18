#!/bin/bash
echo -e "Hello!"
echo -e "Preparing to switch php versions...\n"
echo -e "Installed versions are:"
cd /etc/php
ls
echo -en "\n"
read -r -p "which one to disable? " disphp
echo -e "\ndisabling php $disphp \n"
sudo a2dismod php$disphp
echo -en "\n"
read -r -p "which one to enable? " enphp
echo -e "\nenabling php $enphp \n"
sudo a2enmod php$enphp
echo -e "\nrestarting apache \n"
sudo service apache2 restart
sudo update-alternatives --set php /usr/bin/php$enphp 
echo -e "\n Done. quitting... \n"
echo -e "And here's your php version(php -v output) \n"
php -v
echo -e "\n\n\nBye bye!\n"
