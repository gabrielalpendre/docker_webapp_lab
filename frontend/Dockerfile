# Use o Node.js como base
FROM node:18 AS build

# Define a variável de ambiente
ENV REACT_APP_API_URL=https://8080-cs-9cb11d54-8dfa-4852-8846-edda448f4e9a.cs-us-east1-dogs.cloudshell.dev/api/

# Define o diretório de trabalho
WORKDIR /app

# Copia package.json e yarn.lock para instalar as dependências
COPY package.json yarn.lock ./

# Instala as dependências
RUN yarn install

# Copia o restante dos arquivos da aplicação
COPY . .

# Cria o build da aplicação
RUN yarn build

# Use uma imagem Nginx para servir os arquivos
FROM nginx:alpine

# Copia o build do frontend para o diretório do Nginx
#COPY --from=build /app/build /var/www/html/frontend/build
COPY --from=build /app/build /usr/share/nginx/html

# Exponha a porta 80 para o Nginx
EXPOSE 8080

# Inicia o Nginx
CMD ["nginx", "-g", "daemon off;"]

