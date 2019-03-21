Dado("que estou na tela inicial do app") do 
  @home.validar_home
end
  
Dado("visualizo o menu list") do
  @home.clicar_menu 
  @menu.validar_menu
end
  
Dado("toco na opção para inserir uma nova lista") do
    @menu.tocar_new_list
end
  
Dado("preencho o nome da tarefa") do
  @nome_tarefa = Faker::Lorem.word
  @add_list.preencher_nome_lista(@nome_tarefa)
end
  
Quando("tocar em salvar") do
    @add_list.tocar_salvar
end

Então("devo ver a lista de tarefas com o nome preenchido") do
  @tarefas.valida_lista_tarefas(@nome_tarefa)
end

