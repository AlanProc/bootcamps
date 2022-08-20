#!/bin/bash

echo "Criando diretorios..."

mkdir /publico
mkdir /adm
mkdir /ti
mkdir /sec

echo "Criando grupos de usuarios..."

groupadd GRP_ADM
groupadd GRP_TI
groupadd GRP_SEC

echo "Criando usuarios..."

useradd chris -m -s /bin/bash - p $(openssl passwd -crypt Senha132) -G GRP_ADM
useradd alanrp -m -s /bin/bash - p $(openssl passwd -crypt Senha132) -G GRP_TI
useradd maria -m -s /bin/bash - p $(openssl passwd -crypt Senha132) -G GRP_SEC

echo "Definindo permissoes dos diretorios..."

chown root:GRP_ADM /adm
chown root:GRP_TI /ti
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ti
chmod 770 /sec
chmod 777 /publico

echo "Script finalizado"