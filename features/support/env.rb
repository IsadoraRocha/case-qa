require 'capybara/cucumber'
require 'selenium-webdriver'
require 'pry'

Capybara.default_driver = :selenium_chrome
Selenium::WebDriver::Chrome.driver_path = Dir['webdriver/*'].first

Capybara.default_max_wait_time = 10