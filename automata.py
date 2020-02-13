from selenium import webdriver

chrome_options = webdriver.ChromeOptions()
chrome_options.add_argument("--incognito")
chrome_options.add_argument("--enable-automation")

# Gmail
driver = webdriver.Chrome(chrome_options=chrome_options)
driver.get('http://gmail.com')
driver.find_element_by_id("identifierNext").click()
user_email = driver.find_element_by_xpath('//*[@id="identifierId"]')
user_email.send_keys("kirbyjfernandez@gmail.com")
next_button = driver.find_element_by_id('identifierNext')
next_button.click()

# Github
driver.execute_script("window.open('http://github.com/kirbygit');")

# Youtube
driver.execute_script("window.open('http://youtube.com');")
# driver = webdriver.Chrome(chrome_options=chrome_options)
# driver.get('http://youtube.com')
# search_box = driver.find_element_by_xpath('//*[@id="search"]')
# search_box.send_keys('Gwapo Pako')
# search_button = driver.find_element_by_xpath('//*[@id="search-icon-legacy"]')
# search_button.click()

# Elco
driver.execute_script("window.open('http://mail.elcamino.edu');")

