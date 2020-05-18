#!/bin/bash
echo -e "Are you sure you want to uninstall php-switcher?"
echo -e "NOTE: To correctly remove php-switcher you need to be in it's directory"
read -r -n 1 -p "Uninstall php-switcher (y/n)? " answer
case ${answer:0:1} in
    y|Y )
        echo -e "\nYes\n"
        echo "Removing php-switcher from /usr/local/bin/"
        rm /usr/local/bin/php-switcher
        cd ../
        echo "Removing php-version-switcher files"
        rm -r -f -v php-version-switcher
        echo -e "Done.\n If you would like to download it again,\n please visit https://github.com/KupnoH/php-version-switcher.\n If you would like to contact me,\n please send email to kupnoh25@gmail.com"
        echo "Bye!"
    ;;
    * )
        echo -e "\nNo\n"
    ;;
esac