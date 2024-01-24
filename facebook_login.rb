require 'selenium-webdriver'

chrome_driver_path = '/usr/bin/google-chrome'

options = Selenium::WebDriver::Chrome::Options.new
options.binary = chrome_driver_path

driver = Selenium::WebDriver.for :chrome, options: options

driver.manage.window.maximize()
driver.get('https://www.facebook.com/signup')

driver.find_element(:name, "firstname").send_keys("iam")
driver.find_element(:name, "lastname").send_keys("tom")
driver.find_element(:name, "reg_email__").send_keys("tom@gmail.com")
driver.find_element(:id, "password_step_input").send_keys("tom@123")
driver.find_element(:name, "birthday_day").send_keys("15/02/1999")

driver.find_element(:xpath, '//input[@name="sex" and @value="2"]').click

driver.find_element(:name, "websubmit").click

driver.get('https://www.facebook.com/login')
driver.find_element(:name, "email").send_keys("tom@gmail.com")
driver.find_element(:name, "pass").send_keys("tom@123")
driver.find_element(:name, "login").click

