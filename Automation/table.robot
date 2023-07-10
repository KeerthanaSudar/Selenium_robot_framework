*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url1}  https://rahulshettyacademy.com/AutomationPractice/
${url2}  https://google.com/
${browser}  chrome

*** Test Cases ***
AutomationPractice
    launchingbrowser

*** Keywords ***
launchingbrowser
    open browser    https://testautomationpractice.blogspot.com/     chrome
    Maximize Browser Window
    ${rows}     get element count   xpath://*[@id="HTML1"]/div[1]/table/tbody/tr
    ${columns}     get element count   xpath://*[@id="HTML1"]/div[1]/table/tbody/tr/th
    Sleep   1
    log to console      ${rows}
    log to console      ${columns}
    sleep   1
    ${data}     get text    xapth://div[@id="HTML1"]/div[1]/table/tbody/tr[2]/td[1]
    log to console  ${data}

    table column should contain     xpath://*[@id="HTML1"]      1       BookName
    table row should contain     xpath://*[@id="HTML1"]      5      Mukesh
    table cell should contain     xpath://*[@id="HTML1"]      6     2   Amod
    table header should contain     xpath://*[@id="HTML1"]      BookName

