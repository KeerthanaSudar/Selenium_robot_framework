import json
import os

from selenium import webdriver
import pytest
from selenium.webdriver.chrome.service import Service
from webdriver_manager.chrome import ChromeDriverManager

# @pytest.fixture()
# def setup():
#     driver = webdriver.Chrome(service=Service(ChromeDriverManager().install()))
#     return driver

@pytest.fixture()
def setup(browser):
    if browser == "chrome":
        driver = webdriver.Chrome(service=Service(ChromeDriverManager().install()))
    elif browser == "firefox":
        driver = webdriver.Firefox()
    else:
        driver = webdriver.Ie()
    return driver


def pytest_addoption(parser):
    parser.addoption("--browser")


@pytest.fixture()
def browser(request):
    return request.config.getoption("--browser")

###It is hook for adding Environment in HTML report###
def pytest_configure(config):
    config._metadata["Project Name"] = "nop commerce"
    config._metadata["Module Name"] = "customer"
    config._metadata["Tester"] = "Tester_name"

# @pytest.fixture()
# def setupconfig():
#     f = open(os.getcwd()[0:60] + "\\Configurations\\config.json")
#     print(f)
#     data = json.load(f)
#     # f.close()
#     return data




# @pytest.fixture(scope="class")
# def uiTestData():

    # get env name
    # env_name = os.getenv("environment")
    # env_name = "dev"
    # print("env_name : "+env_name)
    # read json for access the env data
    # with open(f"{os.getcwd()}/Configurations/config.json", 'r') as js:
    #     print(os.getcwd())
    #     testData = json.load(js)
    # js.close()
    # return the dict for test data
    # return testData

# @pytest.fixture()
# def setup(browser):
#     if browser == 'chrome':
#         driver = webdriver.Chrome()
#     elif browser == 'firefox':
#         driver = webdriver.Firefox()
#     else:
#         driver = webdriver.Ie()
#     return driver
#

#
