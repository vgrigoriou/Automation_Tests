require 'selenium-webdriver'
require 'capybara/cucumber'

Before do 
	Capybara.app = Capybara::DSL
	@browser = Selenium::WebDriver.for :chrome
end 