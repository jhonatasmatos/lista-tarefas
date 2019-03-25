Dado("que tenho uma lista de tarefas adicionada") do                          
  @home.clicar_menu
  @menu.tocar_new_list
  @nome_tarefa = Faker::Lorem.word
  @add_list.preencher_nome_lista(@nome_tarefa)
  @add_list.tocar_salvar
end                                                                           
                                                                                
Quando("deleto essa lista de tarefas") do                                     
  @tarefas.opcoes_lista_tarefas
  @tarefas.exclui_lista_tarefas
end                                                                           
                                                                                
Então("devo ver a seguinte mensagem {string}") do |mensagem_esperada|                    
  expect(@tarefas.valida_mensagem).to eql mensagem_esperada
end                                                                           