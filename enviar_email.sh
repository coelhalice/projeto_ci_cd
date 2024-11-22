#!/bin/bash

# Envia um e-mail usando a variável de ambiente EMAIL
echo "Pipeline executado com sucesso!" | mail -s "Notificação do Pipeline" "$EMAIL"
