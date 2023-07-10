*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url1}  https://rahulshettyacademy.com/AutomationPractice/
${url2}  https://google.com/
${browser}  chrome

*** Test Cases ***
practiceform
    ${pagetitle}    launchingbrowser  ${url1}     ${browser}
    log to console  ${pagetitle}
    log  ${pagetitle}
    inputvalues

*** Keywords ***
launchingbrowser
    [Arguments]     ${weburl}   ${webbrowswer}
    open browser    ${weburl}     ${webbrowswer}
    Maximize Browser Window
    Sleep   1
    ${title}    get title
    [return]    ${title}

inputvalues
    input text      xpath://*[@id="name"]       Name
