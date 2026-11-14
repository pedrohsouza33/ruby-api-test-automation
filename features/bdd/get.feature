#language: pt

Funcionalidade: Pesquisar Funcionarios
    Para averiguar informações
    O usuário do sistema
    Deseja poder consultar informações dos funcionários

    Cenario: Buscar informações de funcionarios
        Dado Que o usuário consulte informações de funcionario
        Quando Ele realizar a pesquisa
        Entao Deve retornar a lista de funcionarios

    @cenario2
    Cenario: Cadastrar funcionario
        Dado Que o usuário queira cadastrar um funcionario
        Quando Ele realizar o cadastro
        Entao Deve ficar como cadastrado