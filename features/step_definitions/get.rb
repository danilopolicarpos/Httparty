Dado(/^que tenho um endpoint clientes$/) do
  # lista para o endpoint clientes em endpoints.json
end

Quando(/^realizar uma requisição GET para o endpoint "([^"]*)"$/) do |endpoint|
  @response = HTTParty.get 'http://localhost:3000/' + endpoint
end

Entao(/^retorna a lista de clientes$/) do
  @response.body
end

E(/^o status code '(\d+)'$/) do |status_code|
  status_code = status_code.to_i
  expect(@response.code).to eq status_code
end
