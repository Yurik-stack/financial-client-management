# Financial Client Management

## 📋 Sobre o Projeto

Financial Client Management é um sistema desenvolvido para gerenciamento de clientes e operações financeiras.

O objetivo da aplicação é permitir o cadastro de clientes, registro de operações financeiras e consulta de movimentações, simulando parte do fluxo utilizado em instituições financeiras para controle de operações e monitoramento de transações.

Este projeto está sendo desenvolvido para aprofundamento em Java, SQL, APIs REST e arquitetura de microsserviços.

---

## 🚀 Tecnologias Planejadas

### Backend

* Java 21
* Spring Boot
* Spring Data JPA
* Maven

### Banco de Dados

* PostgreSQL
* Oracle (planejado para versões futuras)

### Documentação

* Swagger / OpenAPI

### Testes

* JUnit 5
* Mockito

### Infraestrutura

* Docker
* Docker Compose

---

## 📊 Modelagem Inicial

### Cliente

| Campo        | Tipo     |
| ------------ | -------- |
| id           | Long     |
| nome         | String   |
| documento    | String   |
| tipo         | String   |
| status       | String   |
| dataCadastro | DateTime |

---

### Operacao

| Campo        | Tipo     |
| ------------ | -------- |
| id           | Long     |
| clienteId    | Long     |
| tipoOperacao | String   |
| valor        | Decimal  |
| status       | String   |
| dataOperacao | DateTime |

---

## 🔌 APIs Planejadas

### Clientes

#### Criar Cliente

```http
POST /clientes
```

#### Buscar Cliente

```http
GET /clientes/{id}
```

#### Atualizar Cliente

```http
PUT /clientes/{id}
```

#### Inativar Cliente

```http
DELETE /clientes/{id}
```

---

### Operações

#### Registrar Operação

```http
POST /operacoes
```

#### Consultar Operação

```http
GET /operacoes/{id}
```

#### Listar Operações por Cliente

```http
GET /clientes/{id}/operacoes
```

---

## 🏗️ Arquitetura Atual

```text
Cliente
   |
   v
Spring Boot API
   |
   v
PostgreSQL
```

---

## 🔮 Arquitetura Futura

```text
API Gateway
     |
---------------------------------
|               |               |
v               v               v

Cliente     Operacao      Monitoramento
Service     Service       Service

     |
     v

RabbitMQ

     |
     v

Banco de Dados
```

---

## 📌 Roadmap

### Fase 1

* [x] Definição da arquitetura
* [x] Modelagem do banco
* [ ] Cadastro de clientes
* [ ] Cadastro de operações

### Fase 2

* [ ] APIs REST
* [ ] Validações
* [ ] Swagger

### Fase 3

* [ ] Testes automatizados
* [ ] Docker

### Fase 4

* [ ] Microsserviços
* [ ] RabbitMQ
* [ ] Monitoramento

### Fase 5

* [ ] Oracle Database
* [ ] PL/SQL
* [ ] Inteligência Artificial para análise de operações

---

## 🎯 Objetivos de Aprendizado

* Desenvolvimento Java
* SQL e modelagem de dados
* APIs REST
* Spring Boot
* Microsserviços
* Mensageria
* Arquiteturas distribuídas
* Mercado financeiro

---

## 👨‍💻 Autor

Yuri Correia Ribeiro
