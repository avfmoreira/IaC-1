#!/bin/bash

userdel -rf carlos
userdel -rf maria
userdel -rf joao
userdel -rf debora
userdel -rf sebastiana
userdel -rf roberto
userdel -rf josefina
userdel -rf amanda
userdel -rf rogerio

groupdel GRP_ADM
groupdel GRP_VEN
groupdel GRP_SEC

rm -rf /adm
rm -rf /ven
rm -rf /sec
rm -rf /publico

