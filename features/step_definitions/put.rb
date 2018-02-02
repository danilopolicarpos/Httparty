Dado(/^que altero as informações do endpoint clientes$/) do
    @contatos = {
        "nome": "Danilo",
        "cpf": "0123.456.689-2",
        "endereco": "Rua Teste dos teste 3",
        "usuario": "Danilo",
        "senha": "1234567"
      }.to_json
end

Quando(/^realizar uma requisição PUT para o endpoint "([^"]*)"$/) do |endpoint|
    @response = HTTParty.put 'http://localhost:3000/clientes/2',
    :body => @contatos,
    :headers => {
      "Content-Type" => 'application/json'
    }
end
