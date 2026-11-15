#language: pt

Funcionalidade: Pesquisar Funcionarios
    Para averiguar informações
    O usuário do sistema
    Deseja poder consultar informações dos funcionários

    @cenario1
    Cenario: Buscar informações de funcionarios
        Dado Que o usuário consulte informações de funcionario
        Quando Ele realizar a pesquisa
        Entao Deve retornar a lista de funcionarios

    @cenario2
    Cenario: Cadastrar funcionario
        Dado Que o usuário queira cadastrar um funcionario
        Quando Ele realizar o cadastro
        Entao Deve ficar como cadastrado

    @cenario3
    Cenario: Atulizar dados do Cliente
        Dado Que o usuario queira adicionar informações
        Quando Ele tentar adicionar
        Entao Deve ser atualizado

    @cenario4
    Cenario: Deletar cadastro de clientes 
        Dado Que o usuário queira ddeleter um cliente
        Quando Ele deletar 
        Entao Deve ser apagado