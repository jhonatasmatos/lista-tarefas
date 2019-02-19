class HomeScreen

    def initialize
        validar_home
    end

    def validar_home
        @titulo_home = find_element(:xpath, "//*[@text='Tasks']")

        wait_true(5) do 
            exists { @titulo_home }
        end
    end

    def clicar_menu
        @menu_home = find_element(:accessibility_id, "Open")
        
        @menu_home.click
    end

    def validar_menu
        @titulo_list = find_element(:xpath, "//*[@text='Lists']")

        wait_true(5) do 
            exists { @titulo_list }
        end
    end

    def tocar_new_list
        @new_list = find_element(:id, "design_menu_item_text")
        @new_list.click
    end

    def preencher_nome_lista(nome)
        @input_nome_lista = find_element(id: "task_list_name")
        @input_nome_lista.send_keys(nome)
    end

    def tocar_salvar
        @btn_salvar = find_element(:id, "save")
        @btn_salvar.click
    end

end