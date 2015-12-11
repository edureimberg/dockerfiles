#!/bin/bash

#Configura o spacewalk
spacewalk-setup --disconnected --external-postgresql --answer-file=/root/answer_file.txt

#Inicia o spacewalk
spacewalk-service start

#/usr/sbin/spacewalk-service start