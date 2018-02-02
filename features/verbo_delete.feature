#language: pt

Funcionalidade: Utilizar o verbo DELETE

Cenario: Realizar uma requisição DELETE com sucesso

  Dado que envie as informações para deletar 
  Quando realizar uma requisição DELETE para o endpoint "clientes"
  Entao retorna a lista de clientes
  E o status code '200'
