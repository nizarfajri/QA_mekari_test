require 'rspec'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'pry'

Capybara.register_driver :chrome do |app|
    Capybara::Selenium::Driver.new(app,
    :browser => :chrome,
:desired_capabilities => Selenium::WebDriver::Remote::Capabilities.chrome(
    'chromeOptions' => {
        'args' => [ "--windows-size=1366,768" ]
    }
  )
)
end

Capybara.default_driver = :chrome
Capybara.default_selector = :css

Capybara.configure do |config|
    config.run_server = false
    config.app_host = 'https://www.amazon.com'
end