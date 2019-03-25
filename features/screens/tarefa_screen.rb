class TarefaScreen

    def valida_lista_tarefas(nome_lista)
        find_element(:xpath, "//*[@text='#{nome_lista}']")

        wait_true(5) do 
            exists {nome_lista}
        end
    end

    def opcoes_lista_tarefas
        find_element(:xpath, "//*[@content-desc='More options']").click
    end

    def exclui_lista_tarefas  
        find_element(:xpath, "//*[@text='Delete List']").click
        find_element(:id, "button1").click
    end

    def valida_mensagem
        #find_element(:id, "snackbar_text")
        find_element(:xpath, "//*[@text='Task list deleted']").text 
    end

end