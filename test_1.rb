require 'rubygems'
require 'selenium:webdriver'

driver=selenium::webdriver.for :chrome
driver.get "http://google.com"

element = driver.find_element :name => "q"
element.send_keys "Cheese!"
element.submit

puts "Page title is #{driver.title}"

wait=selenium::webdriver::Wait.new(:timeout => 10)
wait.until {driver.title.downcase.start_with? "Cheese!"}

puts "Page title is #{driver.title}"
driver.quit