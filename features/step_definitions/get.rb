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

Dado('Que o usuário queira cadastrar um funcionario') do
  @post_url = 'https://dummy.restapiexample.com/api/v1/create'
end

Quando('Ele realizar o cadastro') do
  @create_employee = HTTParty.post(@post_url, body: {
  "id": 1,
  "employee_name": "Tiger Nixon",
  "employee_salary": 320800,
  "employee_age": 61,
  "profile_image": ""
}.to_json)

puts @create_employee
end

Entao('Deve ficar como cadastrado') do
  
end