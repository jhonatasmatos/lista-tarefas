class AddList

    def preencher_nome_lista(nome)      
        find_element(:id, "task_list_name").send_keys(nome)
    end

    def tocar_salvar       
        find_element(:id, "save").click
    end
    
end