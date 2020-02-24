from selenium import webdriver

chrome_options = webdriver.ChromeOptions()
chrome_options.add_argument("--incognito")
chrome_options.add_argument("--enable-automation")

# Gmail
driver = webdriver.Chrome(chrome_options=chrome_options)
driver.maximize_window()
driver.get('http://gmail.com')
driver.find_element_by_id("identifierNext").click()
user_email = driver.find_element_by_xpath('//*[@id="identifierId"]')
user_email.send_keys("kirbyjfernandez@gmail.com")
next_button = driver.find_element_by_id('identifierNext')
next_button.click()

# ElCo
driver.execute_script("window.open('http://mail.elcamino.edu');")

# ClubHouse
# username: supergwapo
# email: kirby_fernandez@elcamino.edu
driver.execute_script("window.open('https://app.clubhouse.io/ecc/login?dest=%2Fecc%2Fdashboard');")

# PHYS1A & MASTERINGPHYSICS
# MP login using elcamino email
driver.execute_script("window.open('https://sites.google.com/site/eccphysics1a/');")
driver.execute_script("window.open('https://pi.pearsoned.com/v1/piapi/piui/signin?client_id=6Q7lNcg9CxMhKqXBPUidpp7BVrBjMFzI&okurl=https:%2F%2Fwww.masteringphysics.com%2Flogin&siteid=6028&regurl=https:%2F%2Fwww.pearsonmylabandmastering.com%2Fnorthamerica%2Fmasteringphysics%2F');")

# CANVAS
driver.execute_script("window.open('https://signon.elcamino.edu/adfs/ls/?SAMLRequest=fZLLTsMwEEX3fEXkfeI0JIJYbaXSClGpQNUGFmyQcSatJWdcPA6Pv8dpeZRNt%2BN75s7c8ZBka3Zi0vktruC1A%2FLRR2uQxP5hxDqHwkrSJFC2QMIrsZ7cLkSWpGLnrLfKGnaEnCYkETivLbJoPhux5zItS9UUMi7yAcS5GqSxHOQXcQnn2WWeF2UJDYsewVFgRiy0CCBRB3MkL9GHUpqlcZrFWVYNUlHkorh8YtEs7KFR%2Bj219X5HgnPSG7SYgFGy1WgTqDsu64a4Ic6iyc9oU4vUteDW4N60gofV4q%2FFL6uDv%2BuU7xwkyrbc2I1G3gfAouV3LFcaa42b04m8HEQkbqpqGS%2Fv1xUbD%2Fs%2BYr%2BnG%2FfWp5x7bTbkx8jwcNS7YDafLa3R6jO6tq6V%2FvQsfUXXcbOXCu8kkgb0IRtj7PvUgfQwYsEdGB8fLP9%2FnfHZFw%3D%3D&SigAlg=http%3A%2F%2Fwww.w3.org%2F2001%2F04%2Fxmldsig-more%23rsa-sha256&Signature=d3ckAYtJfQfQqZkXJnuQsk3hwnM7vnbb%2FicSQqQQaijVbUacDDzwMarGZUnL2m1u6BSSayUghMVRo4bJ5fSn5SUQzePomF2O%2FHs3RPaEWSA4wd55PGo%2FR8eZnKVIqXYgSyiVGTUUj%2BxBfZVe81DA3%2BLC44ctok2dBNyt2%2FLaNssgQlBChe9O%2FCZzjcaMLGA8dMZRzATWoPPyCTEkedulZT6oqUgCytPKtOcbwDwOu9KjpmeX0wE0XLFJL%2Fr%2B8kQnmPld9Fiz1GH7Ax484Emz1Q5vEyX3ZkRRGwjzPSDIBTfya4%2Bfb7j646nqLjaxTqObOy5%2BJ3iPfWlvqAqXw6D2zw%3D%3D');")

# SoundCloud
driver.execute_script("window.open('https://soundcloud.com/soundcloud-hustle/sets/rap-new-hot');")


