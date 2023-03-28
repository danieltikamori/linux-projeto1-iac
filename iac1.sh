#!/bin/bash

echo "Creating directories..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Creating user groups..."

groupadd  GRP_ADM
groupadd  GRP_VEN
groupadd  GRP_SEC

echo "Creating users and assigning in groups..."

useradd carlos -c "Carlos adm" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM 
passwd carlos -e
useradd maria -c "Maria adm" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM 
passwd maria -e
useradd joao -c "Joao adm" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM 
passwd joao -e
useradd debora -c "Debora ven" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_VEN 
passwd debora -e
useradd sebastiana -c "Sebastiana ven" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_VEN 
passwd sebastiana -e
useradd roberto -c "Roberto ven" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_VEN 
passwd roberto -e
useradd josefina -c "Josefina sec" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SEC 
passwd josefina -e
useradd amanda -c "Amanda sec" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SEC 
passwd amanda -e
useradd rogerio -c "Rogerio sec" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SEC 
passwd rogerio -e

echo "Applying directory permissions..."
chown root /publico
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Applying user permissions..."
chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Finished with success!" 
