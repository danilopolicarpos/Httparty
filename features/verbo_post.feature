#language: pt

Funcionalidade: Utilizar o verbo POST

Cenario: Realizar uma requisição POST com sucesso

  Dado que envie as informações para o endpoint clientes
  Quando realizar uma requisição POST para o endpoint "clientes"
  Entao retorna a lista de clientes
  E o status code '201'
