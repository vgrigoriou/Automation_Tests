require 'rubygems'
require 'selenium-webdriver'
@browser = Selenium::WebDriver.for :firefox
@browser.get ("http://puppies.herokuapp.com")
