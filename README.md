# AWS Lambda - Serverless-API-Key-Management

# Sobre

**Este projeto tem como objetivo a utilização do gerenciamento de apiKeys,**
**e uso de planos (usagePlans), com definição de cotas (quota) de uso via**
**AWS Api Gateway**

**As ferramentas utilizadas para o desenvolvimento são:**

- **serverless-offline**: Plugin serverless que permite a execução de lambda functions

# Execuçao do projeto

## Yarn

**Uma vez que o container esteja executando:**

- **Instale as dependências do projeto**

```
yarn install
```

- **Startup do projeto**

```
yarn start
```

## Scripts

**Na pasta request, há scripts bash para chamadas de testes via curl, que podem ser utilizados tanto na aplicação local, como no endpoint disponibilizado pela aws após do deploy**

- **add-key-request**: teste para a function addKey
- **get-usage-request**: teste para a function **usage**, que retorna informações sobre consumo da função **hello** por keys id
- **get-usage-plans-request**: teste para a function usagePlans, que retorna informações por planos
- **hello-request**: teste para a function **hello**

# Implantação

## AWS

**Antes de realizar o deploy na AWS, verifique as configurações da região e perfil utilizados**
**na AWS no arquivo serverless.yml, dentro da propriedade provider**

- **Deploy do projeto**

```
sls deploy
```

- **Remoção do deploy**

```
sls remove
```
