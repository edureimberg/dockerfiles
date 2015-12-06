#!/bin/bash

#Usa a senha definida na variavel MYSQL_PASS
PASS=$MYSQL_PASS

if [ ! -f /dados/mysql/ibdata1 ];
  then
  #Cria o banco de dados
  /usr/bin/mysql_install_db

  #Define a senha do root no banco
  /usr/bin/mysqld_safe &
  sleep 10s

  #Cria o banco para o wordpress
  echo "create database wordpress" | mysql

  #Define as permissoes do usuario root
  echo "GRANT ALL ON *.* TO 'root'@'%' IDENTIFIED BY '$PASS' WITH GRANT OPTION; FLUSH PRIVILEGES" | mysql
  
  #Remove tabelas teste e usuario anonimo criados por default
  #/usr/bin/mysql_secure_installation

  killall mysqld
  sleep 10s
fi

/usr/bin/mysqld_safe
