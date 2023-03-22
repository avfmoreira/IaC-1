#!/bin/bash

echo "Criando diretórios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários"

useradd carlos -m -G GRP_ADM -s /bin/bash -p $(openssl passwd -1 senha123)
passwd carlos -e
useradd maria -m -G GRP_ADM -s /bin/bash -p $(openssl passwd -1 senha123)
passwd maria -e
useradd joao -m -G GRP_ADM -s /bin/bash -p $(openssl passwd -1 senha123)
passwd joao -e
useradd debora -m -G GRP_VEN -s /bin/bash -p $(openssl passwd -1 senha123)
passwd debora -e
useradd sebastiana -m -G GRP_VEN -s /bin/bash -p $(openssl passwd -1 senha123)
passwd sebastiana -e
useradd roberto -m -G GRP_VEN -s /bin/bash -p $(openssl passwd -1 senha123)
passwd roberto -e
useradd josefina -m -G GRP_SEC -s /bin/bash -p $(openssl passwd -1 senha123)
passwd josefina -e
useradd amanda -m -G GRP_SEC -s /bin/bash -p $(openssl passwd -1 senha123)
passwd amanda -e
useradd rogerio -m -G GRP_SEC -s /bin/bash -p $(openssl passwd -1 senha123)
passwd rogerio -e

echo "Defininado permissões"

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Diretórios, grupos e usuários criados, bem como permissões definidas"
echo "Programa finalizado"
