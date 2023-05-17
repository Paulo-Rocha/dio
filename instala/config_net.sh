#!/bin/bash

#Criação de diretóriios no server
echo "Iniciando processo..."
mkdir /publica
mkdir /adm
mkdir /ven
mkdir /sec

#Criação de Grupos de usuários
groupadd GRP_ADM
groupadd GPR_VEN
groupadd GRP_SEC

#Criação dos usuários no server e atribuindo os grupos
useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd sebastiao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GPR_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GPR_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC


#Permissões de acesso

chown root:GRP_ADM /adm
chown root:GPR_VEN /ven
chown root:GPR_SEC /sec
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

chmod 777 /publica

echo "Done!"