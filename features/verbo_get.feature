#language: pt

Funcionalidade: Utilizar o verbo GET

Cenario: Realizar uma requisição GET com sucesso

  Dado que tenho um endpoint clientes
  Quando realizar uma requisição GET para o endpoint "clientes"
  Entao retorna a lista de clientes
  E o status code '200'
