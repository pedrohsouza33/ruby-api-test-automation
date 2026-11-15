#Get exemples on the API Update Testing
#
#
Dado('Que o usuário consulte informações de funcionario') do
  @create = Employee_Requests.new
  @assert = Assertions.new
  @name = Faker::Name.name
  @salary = Faker::Number.number(digits: 5)
  @age = Faker::Number.number(digits: 2)
  puts @name
  puts @salary
  puts @age
end

Quando('Ele realizar a pesquisa') do
  @create_employee = @create.create_employee(@name,@salary,@age)
  puts @create_employee
end

Entao('Deve retornar a lista de funcionarios') do
  @assert.request_success(@create_employee.code, @create_employee.message)
  expect(@create_employee['data']["employee_name"]).to eql @name
  expect(@create_employee['data']["employee_salary"]).to eql @salary
  expect(@create_employee['data']["employee_age"]).to eql @age
end
#
#
#Post exemples on the API Update Testing
#
#
Dado('Que o usuário queira cadastrar um funcionario') do
  @create = Employee_Requests.new
end

Quando('Ele realizar o cadastro') do
  @create_employee = @create.create_employee('Pedro', 45000, 26)
  puts @create_employee
end

Entao('Deve ficar como cadastrado') do
  expect(@create_employee.code).to eql(200)
  expect(@create_employee.msg).to eql 'OK'
  expect(@create_employee['status']).to eql 'success'
  expect(@create_employee['message']).to eql 'Successfully! Record has been added.'
  expect(@create_employee['data']['employee_name']).to eql 'Pedro'
  expect(@create_employee['data']['employee_salary']).to eql(45000)
  expect(@create_employee['data']['employee_age']).to eql(26)
end
#
#
#Put exemples on the API Update Testing
#
#
Dado('Que o usuario queira adicionar informações') do
  @request = Employee_Requests.new
end

Quando('Ele tentar adicionar') do
  @update_employee = @request.update_employee(@request.find_employee['data'][0]['id'], 'Pedro', 170750, 63)
  puts @update_employee
end

Entao('Deve ser atualizado') do
  expect(@update_employee.code).to eql(200)
  expect(@update_employee.msg).to eql 'OK'
  expect(@update_employee["status"]).to eql 'success'
  expect(@update_employee["message"]).to eql 'Successfully! Record has been updated.'
  expect(@update_employee['data']["employee_name"]).to eql 'Pedro'
  expect(@update_employee['data']["employee_salary"]).to eql(170750)
  expect(@update_employee['data']["employee_age"]).to eql(63)
end
#
#
#Delete exemples on the API Update Testing
#
#
Dado('Que o usuário queira ddeleter um cliente') do
  @request = Employee_Requests.new
end

Quando('Ele deletar') do
  @delete_employee = @request.delete_employee(@request.find_employee['data'][0]['id'])
  puts @update_employee
end

Entao('Deve ser apagado') do
  expect(@update_employee.code).to eql(200)
  expect(@update_employee.msg).to eql 'OK'
  expect(@update_employee["data"]).to eql '1'
  expect(@update_employee["status"]).to eql 'success'
  expect(@update_employee["message"]).to eql 'Successfully! Record has been deleted.'
end
