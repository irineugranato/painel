#!/bin/bash

get_frontend_url() {
  print_banner
  printf "${WHITE} 💻 Digite o domínio da interface web (PHP):${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " frontend_url
}

get_urls() {
  get_frontend_url
}

inquiry_options() {
  
  print_banner
  printf "${WHITE} 💻 O que você precisa fazer?${GRAY_LIGHT}"
  printf "\n\n"
  printf "   [1] Instalar\n"
  printf "\n"
  read -p "> " option

  case "${option}" in
    1) get_urls ;;

    *) exit ;;
  esac
}

