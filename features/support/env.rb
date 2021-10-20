require 'rubygems'
require 'selenium-webdriver'
require 'capybara/cucumber'
require 'webdrivers'

def exemplo
    nomes = ['joão']

end

Capybara.register_driver name:selenium do |driver|
    Capybara::Selenium::Driver.new(driver, :browser => :firefox)
end

Capybara.configure do
    Capybara.default_driver = :selenium
    Capybara.page.driver.browser.manage.window.maximize
end


