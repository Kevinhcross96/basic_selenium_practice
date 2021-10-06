require 'webdrivers'
require 'rspec'

driver = Selenium::WebDriver.for :chrome
  driver.navigate.to "https://www.amazon.com"
  driver.manage.window.maximize
  first_title = driver.title
  driver.find_element(id: 'nav-xshop').click
  second_title = driver.title
  driver.navigate.back
  if driver.title == first_title
    puts "Success"
  else
    puts "Failure"
  end
  driver.quit
