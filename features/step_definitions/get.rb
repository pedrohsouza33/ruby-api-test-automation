Dado('que o usuário consulte informações de funcionario') do
  @get_url = 'https://dummy.restapiexample.com/api/v1/employees/'
end

Quando('ele realizar a pesquisa') do
  @list_employee = HTTParty.get(@get_url)
end

Entao('deve retornar a lista de funcionarios') do
  expect(@list_employee.code).to eql 204
  expect(@list_employee.message).to eql 'OK'
end