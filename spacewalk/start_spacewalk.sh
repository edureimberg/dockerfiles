#!/bin/bash

spacewalk-setup --disconnected --external-postgresql --answer-file=/root/answer.txt
/usr/sbin/spacewalk-service start
