import time
import json
import pytest
from selenium import webdriver
from pageobject.loginpage import loginPage
from utilities.customlogger import LogGen


class Test_001_login:
    logger = LogGen.loggen()

    @pytest.mark.sanity
    @pytest.mark.regression
    def test_loginPaginTitle(self, setup):
        global jsondata
        with open("configuration/config.json") as file:
            jsondata = json.load(file)
        self.logger.info("*******Test_001_login*******")
        self.driver = setup
        time.sleep(2)
        self.driver.get(jsondata["login"]["baseurl"])
        self.logger.info("*******home page*******")
        actual_title = self.driver.title
        time.sleep(2)
        self.driver.save_screenshot(".\\screenshot\\" + "HomeTitle.png")
        if actual_title == "Your store. Login":
            assert True
            self.driver.close()
            # self.driver.save_screenshot(".\\screenshot\\"+"HomeTitle.png")
        else:
            self.driver.close()
            assert False

    @pytest.mark.regression
    def test_login(self, setup):
        self.driver = setup
        time.sleep(2)
        self.driver.get(jsondata["login"]["baseurl"])
        self.lp = loginPage(self.driver)
        self.lp.setemail(jsondata["login"]["username"])
        self.lp.setpassword(jsondata["login"]["password"])
        time.sleep(2)
        self.lp.click_login()
        time.sleep(2)
        self.logger.info("****Logged in*****")
        actual_title = self.driver.title
        time.sleep(2)
        if actual_title == "Dashboard / nopCommerce administration":
            assert True
        else:
            assert False
        self.lp.click_logout()
        self.driver.close()
