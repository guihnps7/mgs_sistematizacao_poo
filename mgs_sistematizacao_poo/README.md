---

# Funcionários API

## Visão Geral

Esta é uma API simples em Ruby on Rails para gerenciar informações de funcionários. Ela fornece endpoints para criar e mostrar detalhes de funcionários. A API não usa um banco de dados para persistência; em vez disso, armazena as informações dos funcionários em uma variável de classe.

## Endpoints

### Criar Funcionário

- **URL:** `/api/v1/cria_funcionario`
- **Método:** `POST`
- **Descrição:** Cria um novo funcionário com os detalhes fornecidos.
- **Corpo da Requisição:**
json
  {
    "matricula": "string",
    "nome": "string",
    "cpf": "string",
    "informacao_medica": "string",
    "telefone": "string",
    "email": "string"
  }
 
- **Respostas:**
  - **Sucesso (201 Created):**
 json
    {
      "matricula": "string",
      "nome": "string",
      "cpf": "string",
      "informacao_medica": "string",
      "telefone": "string",
      "email": "string"
    }
 
  - **Falha (422 Unprocessable Entity):**
 json
    {
      "error": "Erro ao cadastrar funcionário"
    }

### Buscar Funcionário

- **URL:** `/api/v1/funcionarios/:matricula`
- **Método:** `GET`
- **Descrição:** Recupera os detalhes de um funcionário pela matrícula.
- **Parâmetros:**

  - `matricula` (parâmetro de caminho): A matrícula do funcionário.

- **Respostas:**
  - **Sucesso (200 OK):**

json
    {
      "matricula": "string",
      "nome": "string",
      "cpf": "string",
      "informacao_medica": "string",
      "telefone": "string",
      "email": "string"
    }

  - **Falha (404 Not Found):**
json
    {
      "error": "Funcionário não encontrado"
    }


## Configuração

## Stack

* Ruby 2.6.6
* Rails 5.2.5

1. **Clone o repositório:**

   git clone <url-do-repositorio>

2. **Instale as dependências:**

   bundle install

3. **Inicie o servidor Rails:**

   rails server

4. **Acesse a API:**
   A API pode ser acessada em `http://localhost:3000/api/v1/URL`

## Notas

- Os dados dos funcionários são armazenados em uma variável de classe `@@funcionario`, o que significa que os dados não são persistentes e serão perdidos quando o servidor for reiniciado.


## Licença

Este projeto está licenciado sob a licença MIT.

---
