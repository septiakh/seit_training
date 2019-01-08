require 'capybara/cucumber'
require 'capybara/rspec'
require 'selenium/webdriver'
require 'dotenv'


#firefox
Capybara.default_driver = :chrome

#chrome
Capybara.register_driver :chrome do |app|
 Capybara::Selenium::Driver.new(app, browser: :chrome)
end

Dotenv.load
if ENV['BROWSER'] == 'chrome'
 Capybara.javascript_driver = :chrome
else
 Capybara.javascript_driver = :selenium
end
