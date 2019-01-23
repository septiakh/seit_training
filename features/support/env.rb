require 'capybara/cucumber'
require 'capybara/rspec'
require 'selenium/webdriver'
require 'cucumber/rails'
# require 'dotenv'


#firefox

# Capybara.default_driver = :chrome

#chrome


# Before '@javascript' do |scenario|
#    $scenario_name = scenario.feature.name
#    # => Capybara.page.driver.browser.manage.window.resize_to(720, 360)
#    Capybara.page.driver.browser.manage.window.maximize
# end
# Capybara.register_driver :chrome do |app|
#  Capybara::Selenium::Driver.new(app, browser: :chrome)
# end

Before '@selenium' do |scenario|
 $scenario_name = scenario.feature.name
 # page.driver.browser.manage.window.resize_to(1366, 768)
 page.driver.browser.manage.window.maximize

end

# Dotenv.load
# if ENV['BROWSER'] == 'chrome'
#  Capybara.javascript_driver = :chrome
# else
#  Capybara.javascript_driver = :selenium
# end
