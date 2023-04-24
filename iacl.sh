#!/bin/bash

echo "Criando diretórios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos"

groupadd GRP_ADM
groupadd GRP_SEC
groupadd GRP_VEN

echo "Criando usuários"

adduser carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
adduser maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
adduser joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
adduser debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
adduser sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
adduser roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
adduser josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
adduser amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
adduser rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "Especificar permissões do diretórios"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Finalizado"
