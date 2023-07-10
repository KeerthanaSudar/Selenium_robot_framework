*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/resources.robot
Library     DataDriver      ../Resources/Data.xlsx
Suite Setup     Opening my browser
Suite Teardown      Closing my browsers
Test Template   Invaild login

*** Test Cases ***
LoginTestUsingExcel

*** Keywords ***
Invaild login
    [Arguments]     ${username}     ${password}
    inputing Username   ${username}
    inputing password   ${password}
    sleep   1
    click login button
    Error message should be visible


