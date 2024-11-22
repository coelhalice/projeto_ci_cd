# Usando a imagem oficial do Jenkins LTS
FROM jenkins/jenkins:lts

# Modo root para instalação de dependências
USER root

# Instala Python e outros pacotes necessários
RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    pip3 install --upgrade pip && \
    apt-get clean

# Instalando o Git para que o Jenkins possa acessar o repositório
RUN apt-get install -y git

# Instalando o plugin de pipeline para o Jenkins
RUN /usr/local/bin/install-plugins.sh workflow-aggregator

# Retornando ao usuário Jenkins para executar o servidor
USER jenkins
