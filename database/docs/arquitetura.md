# Arquitetura

## Arquitetura Atual

```text
Cliente
   |
   v
Spring Boot API
   |
   v
PostgreSQL
```

## Arquitetura Futura

```text
API Gateway
     |
---------------------------
|            |            |
v            v            v

Cliente   Operacao   Monitoramento

     |
     v

RabbitMQ

     |
     v

Banco de Dados
```
