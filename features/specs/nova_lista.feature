#language: pt

Funcionalidade: Nova Lista
    Para que eu possa registrar e gerenciar minhas tarefas
    Sendo um usuário utilizando o app
    Posso adicionar uma lista de tarefas

    @inserir
    Cenário: Inserir nova lista
        Dado que estou na tela inicial do app
        E seleciona o menu
        E seleciono a opção para inserir uma nova lista
        E preencho o nome "lista-testes"
        Quando selecionar salvar
        Então devo ver a lista de tarefas com o nome "lista-testes"

 
 