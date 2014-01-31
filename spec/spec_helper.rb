require "capybara/rspec"

RSpec.configure do |config|
 
   config.order = "random"

   require "./app"

   Capybara.app = Sinatra::Application
   config.include Capybara::DSL
end

