#!/bin/bash

# Import utils
. utils/colors.sh

# Import base linux/wsl installation
. install-linux-wsl-essentials.sh

# Install...
    # Internet
    sudo apt-get install dropbox -y
    sudo apt-get install qbittorrent -y
    sudo apt-get install skypeforlinux -y

    # Media
    sudo apt-get install gpick -y
    sudo apt-get install shutter -y
    sudo add-apt-repository ppa:maarten-baert/simplescreenrecorder
    sudo apt-get update
    sudo apt-get install simplescreenrecorder -y
    
    sudo apt-get install fonts-hack-ttf -y
    
    # Dev
    sudo apt-get install filezilla -y
    sudo apt-get install sublime-text -y
    sudo apt-get install terminator -y

    # Software reminders
    printf "${LIGHT_GREEN}****************************${NC}\n"
    printf "${LIGHT_GREEN}****  PENDING SOFTWARE  ****${NC}\n"
    printf "${LIGHT_GREEN}****************************${NC}\n\n"

    printf "${LIGHT_GREEN}*${NC} ${ORANGE}Chrome${NC}\n"
    printf "${LIGHT_GREEN}*${NC} ${ORANGE}TeamViewer${NC}\n"
    printf "${LIGHT_GREEN}*${NC} ${ORANGE}XnviewMP${NC}\n"
    printf "${LIGHT_GREEN}*${NC} ${ORANGE}CopyQ${NC}\n"
    printf "${LIGHT_GREEN}*${NC} ${ORANGE}DisplayLink${NC}\n"
    printf "${LIGHT_GREEN}*${NC} ${ORANGE}Beyond Compare${NC}\n"
    printf "${LIGHT_GREEN}*${NC} ${ORANGE}VS Code${NC}\n"
    printf "${LIGHT_GREEN}*${NC} ${ORANGE}RealVNC${NC}\n"

    # LAMP server (PHP 7)
    sudo apt-get install apache2 -y
    sudo apt-get install php -y
    sudo apt-get install libapache2-mod-php7.0 -y
    sudo apt-get install libapache2-mod-log-sql-mysql -y
    sudo apt-get install php-xdebug -y
    sudo apt-get install php-curl -y
    sudo apt-get install mysql-server -y
    sudo apt-get install phpmyadmin -y

    sudo apt-get install composer -y

        # Grant group permisssions to server's root folder
        sudo chgrp -R www-data /var/www/html
        sudo chown -R www-data:www-data /var/www/html

        # Enable apache's rewrite module
        sudo a2enmod rewrite

        # Restart apache
        sudo /etc/init.d/apache2 restart

        # Test apache
        nohup xdg-open http://localhost/ & # Ignore any hangup after opening the page

        # Test PHP
        echo "<?php phpinfo(); ?>" | sudo tee --append /var/www/html/test.php
        nohup xdg-open http://localhost/test.php &

    # LAMP reminders
    printf "${LIGHT_GREEN}*********************************${NC}\n"
    printf "${LIGHT_GREEN}****  LAMP SERVER REMINDERS  ****${NC}\n"
    printf "${LIGHT_GREEN}*********************************${NC}\n\n"

    printf "${LIGHT_GREEN}*${NC} Go edit ${ORANGE}/etc/php/7.0/apache2/php.ini${NC} and uncomment ${WHITE}extension=php_mysqli.dll${NC}\n"

    printf "${LIGHT_GREEN}*${NC} Go edit ${ORANGE}/etc/apache2/apache2.conf${NC} and include ${WHITE}/etc/phpmyadmin/apache.conf${NC} at the end of the file\n"

    printf "${LIGHT_GREEN}*${NC} Go edit ${ORANGE}/etc/apache2/apache2.conf${NC} and add ${WHITE}AllowOverride ALL${NC} to the ${WHITE}<Directory /var/www/>${NC} section\n"

    # DBeaver DB manager
    sudo add-apt-repository ppa:serge-rider/dbeaver-ce
    sudo apt-get update
    sudo apt-get install dbeaver-ce

    # powerline font to use with Zsh themes
    wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
    wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
    sudo mv PowerlineSymbols.otf /usr/share/fonts/X11/misc/
    sudo fc-cache -vf /usr/share/fonts/X11/misc/
    mkdir -p ~/.config/fontconfig/conf.d/
    mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/

    # Eye candy
    sudo add-apt-repository ppa:noobslab/icons2
    sudo add-apt-repository ppa:papirus/papirus
    sudo add-apt-repository ppa:costales/folder-color
    sudo add-apt-repository ppa:andreas-angerer89/sni-qt-patched
    sudo add-apt-repository ppa:fossfreedom/arc-gtk-theme-daily
    sudo apt-get update
    sudo apt-get install revival-icons
    sudo apt-get install papirus-icon-theme
    sudo apt-get install papirus-folders
    sudo apt-get install folder-color-nemo
    sudo apt-get install sni-qt sni-qt:i386 hardcode-tray
    sudo apt-get install arc-theme
    sudo apt install nemo-preview
    sudo apt install nemo-image-converter
    sudo apt install nemo-media-columns
    nemo -q
    sudo hardcode-tray
