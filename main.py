import time
from selenium import webdriver

# Specify the path to the WebDriver
# driver_path = 'path/to/chromedriver'  # Update this with the actual path to your WebDriver

# Create a new instance of the Chrome driver
driver=webdriver.Chrome(executable_path="C:\Users\admin\AppData\Local\Programs\Python\Python310\Scripts\chromedriver.exe")

# Open a website
driver.get('https://www.google.com')
time.sleep(5)
# Close the browser
driver.quit()


