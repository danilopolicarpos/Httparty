Dado(/^que envie as informações para deletar$/) do
    @contatos_delete = {
        "id": 2
      }.to_json
end

Quando(/^realizar uma requisição DELETE para o endpoint "([^"]*)"$/) do |endpoint|
    @response = HTTParty.delete 'http://localhost:3000/clientes/2',
    :body => @contatos_delete,
    :headers => {
      "Content-Type" => 'application/json'
    }
end
