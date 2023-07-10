import time
import json
import pytest
from selenium import webdriver
from pageobject.loginpage import loginPage
from utilities.customlogger import LogGen
from utilities import XLutiles

class Test_002_DDT_login:
    logger = LogGen.loggen()
    path = ".//testdata/Book1.xlsx"

    def test_loginPaginTitle(self, setup):
        global jsondata
        with open("configuration/config.json") as file:
            jsondata = json.load(file)

        self.logger.info("*******Test_001_login*******")
        self.driver = setup
        time.sleep(2)
        self.driver.get(jsondata["baseurl"])
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

    def test_login(self, setup):
        self.driver = setup
        time.sleep(2)
        self.driver.get(jsondata["baseurl"])
        self.lp = loginPage(self.driver)
        self.row = XLutiles.getRowCount(self.path, "Sheet1")
        print("Number of Rows in Excel:", self.row)

        for r in range(2, self.row+1):
            self.username = XLutiles.readData(self.path, "Sheet1", r, 1)
            self.password = XLutiles.readData(self.path, "Sheet1", r, 2)
            self.Result = XLutiles.readData(self.path, "Sheet1", r, 3)
            print(r)
            print(self.username)
            print(self.password)
            print(self.Result)
            time.sleep(2)
            self.lp.setemail(self.username)
            time.sleep(2)
            self.lp.setpassword(self.password)
            time.sleep(2)
            self.lp.click_login()
            time.sleep(2)
            self.logger.info("****Logged in*****")
            actual_title = self.driver.title
            time.sleep(2)
            if actual_title == "Dashboard / nopCommerce administration":
                if self.Result == "Pass":
                    assert True
                self.lp.click_logout()
            else:
                pass
            # self.lp.click_logout()
        self.driver.close()
