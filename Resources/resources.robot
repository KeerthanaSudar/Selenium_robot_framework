*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url1}  https://admin-demo.nopcommerce.com/login?ReturnUrl=%2Fadmin%2F
${browser}  chrome

#*** Test Cases ***
#Opening my browser
#    open browser

*** Keywords ***
Opening my browser
    open browser    ${url1}     ${browser}
    Maximize Browser Window

Closing my browsers
    close all browsers

Loging into page
    go to   ${url1}

inputing Username
    [Arguments]     ${username}
    input text  id:Email    ${username}

inputing password
    [Arguments]     ${password}
    input text  id:Password    ${password}

click login button
    click element   xpath://button[@class="button-1 login-button"]

click onto logout button
    click link     Logout

Error message should be visible
    page should contain     Login was unsuccessful.

Dashborad page should be visible
    page should contain     Dashboard