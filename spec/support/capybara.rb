require 'capybara/rspec'
#require 'capybara/rails'

Capybara.default_max_wait_time = 20

# define server port
# Capybara.server_port = 3333

# define browser go to where (with port)
# Capybara.app_host = 'http://localhost:3333'

=begin
Capybara.register_driver :chrome_headless do |app|
  ::Selenium::WebDriver.logger.level = :debug
  options = ::Selenium::WebDriver::Chrome::Options.new
  options.add_argument('--headless')
  options.add_argument('--disable-gpu')
  options.add_argument('--no-sandbox')
  options.add_argument('--disable-dev-shm-usage')
  options.add_argument('--window-size=1300,800')
  Capybara::Selenium::Driver.new(app, browser: :chrome, options: options)
end

# :selenium :selenium_chrome and :selenium_chrome_headless are also registered
Capybara.javascript_driver = :chrome_headless

=end