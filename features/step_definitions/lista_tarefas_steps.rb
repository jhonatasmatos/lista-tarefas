Dado("que estou na tela inicial do app") do
  @home = HomeScreen.new
end
  
Dado("visualizo o menu list") do
  @home.clicar_menu
  @home.validar_menu
end
  
Dado("toco na opção para inserir uma nova lista") do
    @home.tocar_new_list
end
  
Dado("preencho o nome {string}") do |nome|
    @home.preencher_nome_lista(nome)
end
  
Quando("tocar em salvar") do
    @home.tocar_salvar
end
  
Então("devo ver a lista de tarefas com o nome {string}") do |nome|
  TarefaScreen.new(nome)
end