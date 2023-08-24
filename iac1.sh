#!/bin/bash

echo "criando diretórios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "criando grupos de usuários"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "criando usuarios"

useradd carlos -s /bin/bash -m -p $(openssl passwd -1 senha123) -G GRP_ADM
useradd maria -s /bin/bash -m -p $(openssl passwd -1 senha123) -G GRP_ADM
useradd joao -s /bin/bash -m -p $(openssl passwd -1 senha123) -G GRP_ADM

useradd debora -s /bin/bash -m -p $(openssl passwd -1 senha123) -G GRP_VEN
useradd sebastiana -s /bin/bash -m -p $(openssl passwd -1 senha123) -G GRP_VEN
useradd roberto -s /bin/bash -m -p $(openssl passwd -1 senha123) -G GRP_VEN

useradd josefina -s /bin/bash -m -p $(openssl passwd -1 senha123) -G GRP_SEC
useradd amanda -s /bin/bash -m -p $(openssl passwd -1 senha123) -G GRP_SEC
useradd rogerio -s /bin/bash -m -p $(openssl passwd -1 senha123) -G GRP_SEC

echo "especificando permissões dos diretórios"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "FIM..."






