#!/bin/bash

echo "Criando usuários do sistema..."

useradd convidadoseguro2 -m -s /bin/bash -p $(openssl passwd -1 senha123)

passwd convidadoseguro2  -e

echo "fim.."
