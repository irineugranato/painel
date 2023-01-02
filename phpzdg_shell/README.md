
===================================================
##                                              ##
##   █████████      ███████         █████████   ##
##         ███      ███    ██       ███         ##
##       ███        ███    ███      ███         ##
##     ███          ███    ███      ███  ████   ##
##   ███            ███    ██       ███    ██   ##
##   █████████      ███████         █████████   ##
##                                              ##
##  ESSE MATERIAL FAZ PARTE DA COMUNIDADE ZDG   ##
##                                              ##
##        PIRATEAR ESSA SOLUÇÃO É CRIME.        ##
##                                              ##
##    © COMUNIDADE ZDG - comunidadezdg.com.br   ##
##                                              ##
===================================================

## CRIAR SUBDOMINIO E APONTAR PARA O IP DA SUA VPS

FRONTEND_URL: php.comunidadezdg.com.br

## CHECAR PROPAGAÇÃO DO DOMÍNIO

https://dnschecker.org/

===================================================

## COPIAR A PASTA PARA ROOT E RODAR OS COMANDOS ABAIXO

sudo chmod +x ./phpzdg_shell/phpzdg
cd ./phpzdg_shell
sudo ./phpzdg

===================================================

## SENHAS QUE PODEM SER DEFINIDAS NO ARQUIVO CONFIG

## senha do usuário deployzdg no ubuntu
deploy_password=

## senha do usuário root no mysql
db_pass=

===================================================

## APÓS A INSTALAÇÃO

## INSTALAR O PHPMYADMIN
su root
> sudo apt install phpmyadmin php-mbstring
> sudo ln -s /usr/share/phpmyadmin /var/www/html

## INSTALAR O CHROME
sudo su deployzdg
> cd ~
> wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
> sudo apt install ./google-chrome-stable_current_amd64.deb

===================================================

## MANUAL

sudo su root
sudo apt update
sudo apt upgrade
sudo apt install -y apache2 apache2-utils

> alterar porta apache (/etc/apache2/port.conf)

sudo systemctl restart apache2
systemctl status apache2
sudo systemctl enable apache2
apache2 -v
sudo apt install -y php7.4 libapache2-mod-php7.4 php7.4-mysql php-common php7.4-cli php7.4-common php7.4-json php7.4-opcache php7.4-readline
sudo apt-get install php-curl
sudo a2enmod php7.4
sudo systemctl restart apache2
php --version
sudo nano /var/www/html/info.php
<?php phpinfo(); ?>
sudo a2dismod php7.4
sudo apt install php7.4-fpm
sudo a2enmod proxy_fcgi setenvif
sudo a2enconf php7.4-fpm
sudo systemctl restart apache2
sudo rm /var/www/html/info.php
sudo apt install nginx
sudo rm /etc/nginx/sites-enabled/default
sudo nano /etc/nginx/sites-available/phpcomunidade

server {
  server_name comunidadephp.comunidadezdg.com.br;
  location / {
    proxy_pass http://127.0.0.1:81;
    proxy_http_version 1.1;
    proxy_set_header Upgrade $http_upgrade;
    proxy_set_header Connection 'upgrade';
    proxy_set_header Host $host;
    proxy_set_header X-Real-IP $remote_addr;
    proxy_set_header X-Forwarded-Proto $scheme;
    proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
    proxy_cache_bypass $http_upgrade;
  }
  }

sudo ln -s /etc/nginx/sites-available/phpcomunidade /etc/nginx/sites-enabled
sudo nginx -t
sudo service nginx restart
sudo nano /etc/nginx/nginx.conf

client max_body_size 50M;
# HANDLE BIGGER UPLOADS

sudo nginx -t
sudo service nginx restart
sudo apt-get install snapd
sudo snap install notes
sudo snap install --classic certbot
sudo certbot --nginx​​

===================================================

sudo apt update
sudo apt upgrade
sudo apt -y install curl dirmngr apt-transport-https lsb-release ca-certificates && curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt -y install nodejs
sudo apt-get install -y libgbm-dev wget unzip fontconfig locales gconf-service libasound2 libatk1.0-0 libc6 libcairo2 libcups2 libdbus-1-3 libexpat1 libfontconfig1 libgcc1 libgconf-2-4 libgdk-pixbuf2.0-0 libglib2.0-0 libgtk-3-0 libnspr4 libpango-1.0-0 libpangocairo-1.0-0 libstdc++6 libx11-6 libx11-xcb1 libxcb1 libxcomposite1 libxcursor1 libxdamage1 libxext6 libxfixes3 libxi6 libxrandr2 libxrender1 libxss1 libxtst6 ca-certificates fonts-liberation libappindicator1 libnss3 lsb-release xdg-utils libxss-dev

===================================================

sudo apt update
sudo apt upgrade
sudo apt install mysql-server
mysql --version
sudo systemctl status mysql
sudo apt install phpmyadmin php-mbstring
sudo service apache2 restart
sudo systemctl status apache2
sudo ln -s /usr/share/phpmyadmin /var/www/html

===================================================