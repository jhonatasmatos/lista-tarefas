require 'appium_lib'

def caps
    {
        caps: {
            deviceName: "Galaxy_S8",
            platformName: "Android",
            app: (File.join(File.dirname(__FILE__), "lista-tarefas.apk")),
            appPackage: "com.tasks.android",
            newCommandTimeout: "3600"
        }
    }
end

Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object