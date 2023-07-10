*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://www.flipkart.com/
${browser}  chrome

*** Test Cases ***
ValidationTest
    open browser    ${url}      ${browser}
    wait until page contains    ${url}
    maximize browser window
    ${title}    set variable        Online Shopping Site for Mobiles, Electronics, Furniture, Grocery, Lifestyle, Books & More. Best Offers!
    title should be      ${title}
    IF  "${title}" == "True"
        Log To Console     ${title}
        END
    ${input_txt}    set variable    xpath://input[@class="_2IX_2- VJZDxU"]
    element should be enabled   ${input_txt}
    element should be visible   ${input_txt}
    sleep   3
    input text  xpath://input[@class="_2IX_2- VJZDxU"]      Admin
    clear element text  xpath:/html/body/div[2]/div/div/div/div/div[2]/div/form/div[1]/input
    sleep   3


*** Keywords ***
