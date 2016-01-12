require 'rubygems'
require 'selenium-webdriver'

@browser = Selenium::WebDriver.for :firefox
@browser.get("http://fullstackautomationwithruby.com/widgets")
puts @browser.find_element(:id, 'widgets').displayed?