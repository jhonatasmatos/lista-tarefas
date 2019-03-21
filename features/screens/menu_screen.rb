class Menu

    def validar_menu
        @titulo_list = find_element(:xpath, "//*[@text='Lists']")
        wait_true(5) do 
            exists { @titulo_list }
        end
    end

    def tocar_new_list       
        find_element(:id, "design_menu_item_text").click
    end
    
end