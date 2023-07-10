from selenium.webdriver.common.by import By
import json

class loginPage:
    # textbox_email_id = "Email"
    # textbox_password_id = "Password"
    # button_login_xpath = "//button[@class='button-1 login-button']"
    # link_logout_xpath = "//*[text()='Logout']"

    def __init__(self, driver):
        self.driver = driver
        global jsondata
        with open("configuration/config.json") as file:
            jsondata = json.load(file)

    def setemail(self, username):
        self.driver.find_element(By.ID, jsondata["loginpage"]["textbox_email_id"]).clear()
        self.driver.find_element(By.ID, jsondata["loginpage"]["textbox_email_id"]).send_keys(username)

    def setpassword(self, password):
        self.driver.find_element(By.ID, jsondata["loginpage"]["textbox_password_id"]).clear()
        self.driver.find_element(By.ID, jsondata["loginpage"]["textbox_password_id"]).send_keys(password)

    def click_login(self):
        self.driver.find_element(By.XPATH, jsondata["loginpage"]["button_login_xpath"]).click()

    def click_logout(self):
        self.driver.find_element(By.XPATH, jsondata["loginpage"]["link_logout_xpath"]).click()
