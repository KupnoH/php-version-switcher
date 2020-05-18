# PHP version switcher

## Description

Script for easy switching from one php version to another from all of the php versions you have on your machine.

Script works with ubuntu 16-18 (didn't tested on other linux-based system, but also should work, or you can add a hotfix so that it would work) 

## Support and feature requests
Currently, php-switcher works only with:
 - linux ubuntu 16 - 18 (may work on other dists, just not tested)
 - apache2
 - any php version (this should work, unless something crucial(like enabling/disabling php) would change)

For any questions or feature requests, please write me an email to kupnoh25@gmail.com

## Installing:
- Clone repository.
- Run setup.sh `./setup.sh` from php-version-switcher directory

This command will create file php-switcher in /usr/local/bin directory. In case if you want to uninstall it, proceed to **Uninsall** section.

## Usage
After running setup.sh you will be able to use php-switcher command anywhere you want.

#### It will:
 - show you which php versions do you have;
 - ask you which one you want to disable and disable it;
 - ask you which one you want to enable and enable it;
 - restart the server(currently only apache supported);
 - make chosen php version use without number(update-alternatives);
 - output current php version;

## Uninstall
To uninstall php-version-switcher go to it's directory and run uninstall.sh.
It will:
 - ask you if you really want to remove php-switcher;
 - remove php-switcher file from /usr/local/bin;
 - remove php-version-switcher directory;

## Credits
If you like php-switcher, please star it on github https://github.com/KupnoH/php-version-switcher

For now I did all the work, so all credits go to me https://github.com/KupnoH/

please contribute if you like, I would appreciate this.

## TODO:
 - add prompt to put php-switcher file to a place user wants(it must be in PATH variable);
 - ask user if he/she really wants to disable current php version;
 - automatically detect enabled php version, so that we do not need to ask user which version to disable;
 - on setup ask which server does one use so that it could correctly restart it(even if it's necessary with other than apache server)
 - ask if user wants to see php version after switch(maybe on setup)