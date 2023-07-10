*** Settings ***
# This section contains all the lib that v want to import
Library  SeleniumLibrary

*** Variables ***
# In this section we define all the variables that we need in our testcases

*** Test Cases ***
# This section we write out test cases
Google
#    create web driver   chrome  execitable_path="webdriver.Chrome(service=Service(ChromeDriverManager().install()))"
#    create web driver   chrome  execitable_path=D:\Automation\Driver\chromedriver.exe
    Open Browser    https://www.google.com/     chrome
    Maximize Browser window
    Sleep   10
*** Keywords ***
# This section we define, user defined keywords
