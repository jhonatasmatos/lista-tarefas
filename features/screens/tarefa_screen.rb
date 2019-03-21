class TarefaScreen

    def valida_lista_tarefas(nome_lista)
        find_element(:xpath, "//*[@text='#{nome_lista}']")

        wait_true(5) do 
            exists {nome_lista}
        end
    end

end