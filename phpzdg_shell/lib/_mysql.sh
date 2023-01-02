#!/bin/bash
# 
# functions for setting up app backend

#######################################
# creates mysql db
# Arguments:
#   None
#######################################
backend_mysql_create() {
  print_banner
  printf "${WHITE} 💻 Setando senha para o root no banco de dados...${GRAY_LIGHT}"
  printf "\n\n"

  sleep 2

  sudo su - root <<EOF
  mysql -u root
  USE mysql;
  UPDATE user SET plugin='mysql_native_password' WHERE User='${db_user}';
  FLUSH PRIVILEGES;
  ALTER USER '${db_user}'@'localhost' IDENTIFIED BY '${db_pass}';
  exit;
  service mysql restart
EOF

  sleep 2
}