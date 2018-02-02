Dado(/^que envie as informações para o endpoint clientes$/) do
    @contatos = {
        "nome": "Danilo",
        "cpf": "0123.456.689-2",
        "endereco": "Rua Teste dos teste 3",
        "usuario": "Danilopolicarpo",
        "senha": "1234567"
      }.to_json

end

Quando(/^realizar uma requisição POST para o endpoint "([^"]*)"$/) do |endpoint|
  @response = HTTParty.post 'http://localhost:3000/clientes',
  :body => @contatos,
  :headers => {
      "Content-Type" => 'application/json'
}
end
