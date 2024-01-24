require 'selenium-webdriver'

chrome_driver_path = '/usr/bin/google-chrome'

options = Selenium::WebDriver::Chrome::Options.new
options.binary = chrome_driver_path

driver = Selenium::WebDriver.for :chrome, options: options

driver.get('https://www.flipkart.com/')

search_box = driver.find_element(:name, 'q')
search_box.send_keys('travel bags trolley')

# first_product = driver.find_element(:css, 'div._312yBx SFzpgZ > a')
# first_product.click
# search_box = driver.find_element(:name, 'q')
# search_box.send_keys('Medium Check-in Suitcase (65 cm) - Hard Sided ABS and PC 4 Wheel Spinner, Unbreakable Bag with Combi Lock(ZX-7465)) - Pink')
# search_box.submit

wait = Selenium::WebDriver::Wait.new(timeout: 10)

puts "Current URL: #{driver.current_url}"

driver.quit