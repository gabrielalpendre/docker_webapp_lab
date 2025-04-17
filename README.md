# docker_webapp_lab

Este projeto de CRUD consiste em uma aplicação web completa que roda em docker, composta por um backend em Node.js (API), um frontend em Node.js servido por Nginx e um banco de dados MySQL. 

## Estrutura do projeto

* **`api/`**: Diretório contendo o código da API Node.js.
* **`frontend/`**: Diretório contendo o código do frontend Node.js e a configuração do Nginx.
* **`docker-compose.yml`**: Configuração do Docker Compose para deploy local.
* **`podman-compose.yml`**: Configuração do Podman Compose para deploy local.
* **`docker-compose-swarm.yml`**: Configuração do Docker Compose para deploy em Docker Swarm.
* **`docker-swarm-deploy.sh`**: Script para automatizar o deploy em Docker Swarm.
* **`init.sql`**: Script SQL para inicializar o banco de dados MySQL.
* **`nginx-node.conf`**: Configuração do servidor Nginx para o frontend.
* **`README.md`**: Este arquivo.

## Pré-requisitos

### para Docker: 
  Docker e Docker Compose instalados.
### para Podman: 
  Cockpit, cockpit-podman (para gerenciamento) e podman-compose para o deploy.

## Como executar localmente

1.  Clone este repositório.
2.  Navegue até o diretório do projeto.
3.  Execute `docker-compose up -d` ou `podman-compose -f podman-compose.yml up -d`

## Como executar em Docker Swarm

1.  Execute o script de deploy: `./docker-swarm-deploy.sh`.
2.  Acesse a aplicação no endereço de um dos nós do swarm.

## Acesso

* Acesse a aplicação em `http://localhost:8080`.

## Configuração

* A configuração da API e do banco de dados é feita através de variáveis de ambiente no `docker-compose.yml`.
* A configuração do Nginx para o frontend está no arquivo `nginx-node.conf`.
* O script `init.sql` inicializa o banco de dados com a estrutura necessária.

## Observações

* Não há observações, apenas funciona!
