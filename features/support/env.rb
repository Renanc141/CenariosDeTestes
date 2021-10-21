require 'capybara'
require 'selenium-webdriver'
require 'capybara/cucumber'

# def exemplo
#     nomes = ['joão']

# end

# Capybara.register_driver name:selenium do |driver|
#     Capybara::Selenium::Driver.new(driver, :browser => :firefox)
# end

Capybara.configure do |config|
    config.default_driver = :selenium
    #config.page.driver.browser.manage.window.maximize
    config.default_max_wait_time = 10
    config.app_host = "https://nayaracorporation.solides.jobs"
end


