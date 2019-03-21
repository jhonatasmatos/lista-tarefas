class HomeScreen

     def validar_home
        @titulo_home = find_element(:xpath, "//*[@text='Tasks']")
        wait_true(5) do 
            exists { @titulo_home }
        end
    end

    def clicar_menu       
        find_element(:accessibility_id, "Open").click
    end

    
end