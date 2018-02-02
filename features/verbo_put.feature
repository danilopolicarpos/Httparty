#language: pt

Funcionalidade: Utilizar o verbo PUT

Cenario: Realizar uma requisição PUT com sucesso

  Dado que altero as informações do endpoint clientes
  Quando realizar uma requisição PUT para o endpoint "clientes"
  Entao retorna a lista de clientes
  E o status code '200'