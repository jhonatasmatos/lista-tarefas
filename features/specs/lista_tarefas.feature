#language: pt

Funcionalidade: Lista de Tarefas
    Para que eu possa registrar e gerenciar minhas tarefas
    Sendo um usuário utilizando o app
    Posso adicionar e remover uma lista de tarefas

    @inserir
    Cenário: Inserir nova lista
        Dado que estou na tela inicial do app
        E visualizo o menu list
        E toco na opção para inserir uma nova lista
        E preencho o nome da tarefa
        Quando tocar em salvar
        Então devo ver a lista de tarefas com o nome preenchido

    @deletar
    Cenário: Excluir lista
        Dado que tenho uma lista de tarefas adicionada
        Quando deleto essa lista de tarefas
        Então devo ver a seguinte mensagem "Task list deleted"
 
 