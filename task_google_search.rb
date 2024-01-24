require 'selenium-webdriver'

chrome_driver_path = '/usr/bin/google-chrome'
options = Selenium::WebDriver::Chrome::Options.new
options.binary = chrome_driver_path

driver = Selenium::WebDriver.for :chrome, options: options


driver.get('https://www.google.com')

search_box = driver.find_element(name: 'q')

search_box.send_keys('About Selenium webdriver tools')

search_box.submit

sleep 5

driver.quit





