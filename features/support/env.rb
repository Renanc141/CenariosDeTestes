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

