# features/support/env.rb
require 'capybara'
require 'capybara/cucumber'
require 'rest-client'
require 'json'
require 'rspec/expectations'

# Configuração opcional do Capybara (útil se combinar UI + API)
Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = 'https://jsonplaceholder.typicode.com'
end

World(Capybara::DSL)