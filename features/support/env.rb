require 'appium_lib'
require 'pry'

# Saber quais caps queremos na nossa sessão(appium.txt)
caps_path = File.join(File.dirname(__FILE__), 'appium.txt')
caps = Appium.load_appium_txt file: caps_path, verbose: true

# Criar um cliente e usar as caps
Appium::Driver.new(caps, true)

Appium.promote_appium_methods Object

# Iniciar sessão
Before do |cenario|
    $driver.start_driver
    
end

# Finalizar sessão
After do |cenario|
    $driver.driver_quit
end